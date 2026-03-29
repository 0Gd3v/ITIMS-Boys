`default_nettype none

module tqvp_spi_master (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  ui_in,         // ui_in[0] = MISO
    output wire [7:0]  uo_out,        // [0]=SCLK [1]=MOSI [2]=CS_n [3]=IRQ

    input  wire [5:0]  address,       // 6-bit address within peripheral space
    input  wire [31:0] data_in,       // full-width data bus
    input  wire [1:0]  data_write_n,  // 11=no write, 00=byte, 01=hword, 10=word
    input  wire [1:0]  data_read_n,   
    output wire [31:0] data_out,      
    output wire        data_ready,    
    output wire        user_interrupt 
);

    // =========================================================================
    // Configuration & Sleep-Walker Registers
    // =========================================================================
    reg        cfg_cpol, cfg_cpha, cfg_lsb, cfg_mcs;
    reg [4:0]  cfg_wlen;      // Expanded to 5 bits to support up to 32-bit bursts
    
    // Auto-Wakeup Registers
    reg        auto_en;
    reg [15:0] timer_period;
    reg [15:0] sleep_timer;
    reg [7:0]  thresh_high, thresh_low;
    reg [31:0] auto_cmd;      // The 32-bit sequence the Sleep-Walker sends

    // =========================================================================
    // Operational Registers
    // =========================================================================
    reg [31:0] shift_reg;     // Unified 32-bit TX/RX Shift Register (Replaces FIFO)
    reg [31:0] rx_hold;       // Holds the final received burst
    reg [15:0] crc_reg;       // Serial CRC16 Accumulator
    
    reg [5:0]  clk_div, div_cnt;     
    reg [4:0]  bit_cnt;       // Expanded for 32-bit counting
    
    reg        busy, spi_clk_r, cs_force, irq, auto_irq;

    // =========================================================================
    // Combinatorial signals
    // =========================================================================
    wire miso     = ui_in[0];
    wire cs_n     = ~( (cfg_mcs ? cs_force : busy) );
    wire sclk_out = spi_clk_r ^ cfg_cpol;
    
    wire write_en = (data_write_n != 2'b11);
    
    // CRC16-CCITT Serial Feedback Logic
    wire crc_fb = crc_reg[15] ^ miso; 

    // =========================================================================
    // Grand Unified State Machine
    // =========================================================================
    always @(posedge clk) begin
        if (!rst_n) begin
            shift_reg    <= 32'h0;
            rx_hold      <= 32'h0;
            crc_reg      <= 16'hFFFF;
            clk_div      <= 6'd3;
            div_cnt      <= 6'h00;
            bit_cnt      <= 5'h0;
            busy         <= 1'b0;
            spi_clk_r    <= 1'b0;
            irq          <= 1'b0;
            auto_irq     <= 1'b0;
            auto_en      <= 1'b0;
            sleep_timer  <= 16'h0;
            cfg_cpol     <= 1'b0;
            cfg_cpha     <= 1'b0;
            cfg_lsb      <= 1'b0;
            cfg_mcs      <= 1'b0;
            cfg_wlen     <= 5'd7;   // default: 8-bit transfers
            cs_force     <= 1'b0;
        end else begin

            // ------------------------------------------------------------------
            // CPU Writes (Memory Map Expansion)
            // ------------------------------------------------------------------
            if (write_en && !busy) begin
                case (address)
                    6'h1: if (data_in[1]) irq <= 1'b0;
                    6'h2: clk_div <= data_in[5:0];
                    6'h3: {cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol} <= {data_in[8:4], data_in[3:0]};
                    6'h4: cs_force <= data_in[0];
                    // Auto-Wakeup Config
                    6'h5: timer_period <= data_in[15:0];
                    6'h6: auto_cmd     <= data_in[31:0];
                    6'h7: {thresh_high, thresh_low} <= {data_in[15:8], data_in[7:0]};
                    6'h8: begin 
                            auto_en <= data_in[0];
                            if (data_in[1]) auto_irq <= 1'b0; // Clear auto IRQ
                          end
                    default: ;
                endcase
            end

            // ------------------------------------------------------------------
            // Unified Control Path (SPI + Sleep-Walker)
            // ------------------------------------------------------------------
            
            // 1. CPU Trigger
            if (write_en && address == 6'h0 && !busy) begin
                busy        <= 1'b1;
                // Left-align TX data into shift_reg[31:N] so MOSI (shift_reg[31]) outputs MSB first.
                // Apply LSB-first bit reversal at load time when cfg_lsb=1.
                case ({cfg_lsb, data_write_n})
                    3'b0_00: shift_reg <= {data_in[7:0], 24'h0};
                    3'b0_01: shift_reg <= {data_in[15:0], 16'h0};
                    3'b0_10: shift_reg <= data_in;
                    3'b1_00: shift_reg <= {data_in[0],data_in[1],data_in[2],data_in[3],
                                           data_in[4],data_in[5],data_in[6],data_in[7], 24'h0};
                    3'b1_01: shift_reg <= {data_in[0],data_in[1],data_in[2],data_in[3],
                                           data_in[4],data_in[5],data_in[6],data_in[7],
                                           data_in[8],data_in[9],data_in[10],data_in[11],
                                           data_in[12],data_in[13],data_in[14],data_in[15], 16'h0};
                    3'b1_10: shift_reg <= {data_in[0],data_in[1],data_in[2],data_in[3],
                                           data_in[4],data_in[5],data_in[6],data_in[7],
                                           data_in[8],data_in[9],data_in[10],data_in[11],
                                           data_in[12],data_in[13],data_in[14],data_in[15],
                                           data_in[16],data_in[17],data_in[18],data_in[19],
                                           data_in[20],data_in[21],data_in[22],data_in[23],
                                           data_in[24],data_in[25],data_in[26],data_in[27],
                                           data_in[28],data_in[29],data_in[30],data_in[31]};
                    default: shift_reg <= {data_in[7:0], 24'h0};
                endcase
                bit_cnt     <= cfg_wlen;
                div_cnt     <= clk_div;
                spi_clk_r   <= cfg_cpha;
                irq         <= 1'b0;
                crc_reg     <= 16'hFFFF; // Reset CRC for new CPU frame
            end 
            
            // 2. Sleep-Walker Trigger (Autonomous Mode)
            else if (!busy && auto_en) begin
                if (sleep_timer != 16'h0) begin
                    sleep_timer <= sleep_timer - 1'b1;
                end else begin
                    busy        <= 1'b1;
                    shift_reg   <= auto_cmd; // Load autonomous command
                    bit_cnt     <= cfg_wlen;       
                    div_cnt     <= clk_div;
                    spi_clk_r   <= cfg_cpha;
                    crc_reg     <= 16'hFFFF; // Reset CRC
                end
            end

            // 3. Active SPI Transaction
            else if (busy) begin
                if (div_cnt != 6'h00) begin
                    div_cnt <= div_cnt - 1'b1;
                end else begin
                    div_cnt   <= clk_div;
                    spi_clk_r <= ~spi_clk_r;

                    if (spi_clk_r == cfg_cpha) begin
                        // Sample edge: Shift in MISO and calculate serial CRC
                        shift_reg <= {shift_reg[30:0], miso};
                        crc_reg   <= {crc_reg[14:0], 1'b0} ^ (crc_fb ? 16'h1021 : 16'h0000);
                        
                    end else begin
                        // Shift edge
                        if (bit_cnt == 5'h0) begin
                            busy <= 1'b0;
                            // For LSB-first: received bits[7:0] are in reversed order; swap them back.
                            // For MSB-first: store shift_reg directly.
                            rx_hold <= cfg_lsb
                                ? {24'h0, shift_reg[0], shift_reg[1], shift_reg[2], shift_reg[3],
                                          shift_reg[4], shift_reg[5], shift_reg[6], shift_reg[7]}
                                : shift_reg;
                            
                            // Post-Transaction Routing
                            if (auto_en) begin
                                sleep_timer <= timer_period; // Reset Sleep-Walker timer
                                // Threshold Check on the received byte (assuming LSB holds sensor data)
                                if (shift_reg[7:0] > thresh_high || shift_reg[7:0] < thresh_low) begin
                                    auto_irq <= 1'b1; 
                                end
                            end else begin
                                irq <= 1'b1; // Standard CPU interrupt
                            end
                            
                        end else begin
                            bit_cnt <= bit_cnt - 1'b1;
                        end
                    end
                end
            end
        end
    end

    // =========================================================================
    // CPU read interface
    // =========================================================================
    assign data_out =
        (address == 6'h0) ? rx_hold :
        (address == 6'h1) ? {24'h0, 5'b0, auto_irq, irq, busy} :
        (address == 6'h2) ? {24'h0, 2'b0, clk_div} :
        (address == 6'h8) ? {16'h0, crc_reg} : // CPU reads CRC validation here
        32'h0;

    assign data_ready = 1'b1;
    
    // TinyQV gets interrupted if either a normal SPI finishes, or the Sleep-Walker finds an anomaly
    assign user_interrupt = irq | auto_irq;
    
    assign uo_out = {4'b0, user_interrupt, cs_n, shift_reg[31], sclk_out};

    wire _unused_ui  = &{ui_in[7:1]};
    wire _unused_rdn = &{data_read_n, 1'b0};

endmodule
