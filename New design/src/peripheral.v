`default_nettype none

module tqvp_spi_master (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  ui_in,         
    output wire [7:0]  uo_out,        

    input  wire [5:0]  address,       
    input  wire [31:0] data_in,       
    input  wire [1:0]  data_write_n,  
    input  wire [1:0]  data_read_n,   
    output wire [31:0] data_out,      
    output wire        data_ready,    
    output wire        user_interrupt 
);

    reg        cfg_cpol, cfg_cpha, cfg_lsb, cfg_mcs;
    reg [4:0]  cfg_wlen;      
    reg        auto_en;
    reg [15:0] timer_period, sleep_timer;
    reg [7:0]  thresh_high, thresh_low;
    reg [31:0] auto_cmd;      

    reg [31:0] tx_shift, rx_shift, rx_hold;       
    reg [15:0] crc_reg;       
    reg [5:0]  clk_div, div_cnt;     
    reg [4:0]  bit_cnt;       
    reg        busy, spi_clk_r, cs_force, irq, auto_irq;

    wire miso     = ui_in[0];
    wire cs_n     = ~( (cfg_mcs ? cs_force : busy) );
    wire sclk_out = spi_clk_r ^ cfg_cpol;
    wire write_en = (data_write_n != 2'b11);
    wire crc_fb   = crc_reg[15] ^ miso; 

    // =========================================================================
    // Explicit Byte Alignment & Reversal (The Foolproof Fix)
    // =========================================================================
    
    // CPU Data Bytes
    wire [7:0] d0 = data_in[7:0];
    wire [7:0] d1 = data_in[15:8];
    wire [7:0] d2 = data_in[23:16];
    wire [7:0] d3 = data_in[31:24];

    // Reversed CPU Bytes
    wire [7:0] d0_r = {d0[0], d0[1], d0[2], d0[3], d0[4], d0[5], d0[6], d0[7]};
    wire [7:0] d1_r = {d1[0], d1[1], d1[2], d1[3], d1[4], d1[5], d1[6], d1[7]};
    wire [7:0] d2_r = {d2[0], d2[1], d2[2], d2[3], d2[4], d2[5], d2[6], d2[7]};
    wire [7:0] d3_r = {d3[0], d3[1], d3[2], d3[3], d3[4], d3[5], d3[6], d3[7]};

    reg [31:0] tx_load_val;
    always @(*) begin
        case (cfg_wlen)
            5'd7:  tx_load_val = cfg_lsb ? {d0_r, 24'h0} : {d0, 24'h0};
            5'd15: tx_load_val = cfg_lsb ? {d0_r, d1_r, 16'h0} : {d1, d0, 16'h0};
            5'd31: tx_load_val = cfg_lsb ? {d0_r, d1_r, d2_r, d3_r} : {d3, d2, d1, d0};
            default: tx_load_val = data_in << (5'd31 - cfg_wlen);
        endcase
    end

    // Auto Cmd Bytes
    wire [7:0] a0 = auto_cmd[7:0];
    wire [7:0] a1 = auto_cmd[15:8];
    wire [7:0] a2 = auto_cmd[23:16];
    wire [7:0] a3 = auto_cmd[31:24];

    wire [7:0] a0_r = {a0[0], a0[1], a0[2], a0[3], a0[4], a0[5], a0[6], a0[7]};
    wire [7:0] a1_r = {a1[0], a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]};
    wire [7:0] a2_r = {a2[0], a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]};
    wire [7:0] a3_r = {a3[0], a3[1], a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]};

    reg [31:0] auto_load_val;
    always @(*) begin
        case (cfg_wlen)
            5'd7:  auto_load_val = cfg_lsb ? {a0_r, 24'h0} : {a0, 24'h0};
            5'd15: auto_load_val = cfg_lsb ? {a0_r, a1_r, 16'h0} : {a1, a0, 16'h0};
            5'd31: auto_load_val = cfg_lsb ? {a0_r, a1_r, a2_r, a3_r} : {a3, a2, a1, a0};
            default: auto_load_val = auto_cmd << (5'd31 - cfg_wlen);
        endcase
    end

    // RX Reversal Bytes
    wire [7:0] r0_r = {rx_shift[0], rx_shift[1], rx_shift[2], rx_shift[3],
                       rx_shift[4], rx_shift[5], rx_shift[6], rx_shift[7]};
    wire [7:0] r1_r = {rx_shift[8], rx_shift[9], rx_shift[10], rx_shift[11],
                       rx_shift[12], rx_shift[13], rx_shift[14], rx_shift[15]};
    wire [7:0] r2_r = {rx_shift[16], rx_shift[17], rx_shift[18], rx_shift[19],
                       rx_shift[20], rx_shift[21], rx_shift[22], rx_shift[23]};
    wire [7:0] r3_r = {rx_shift[24], rx_shift[25], rx_shift[26], rx_shift[27],
                       rx_shift[28], rx_shift[29], rx_shift[30], rx_shift[31]};

    // =========================================================================
    // State Machine
    // =========================================================================
    always @(posedge clk) begin
        if (!rst_n) begin
            cfg_cpol <= 1'b0; cfg_cpha <= 1'b0; cfg_lsb <= 1'b0; cfg_mcs <= 1'b0;
            cfg_wlen <= 5'd7; tx_shift <= 32'h0; rx_shift <= 32'h0; rx_hold <= 32'h0;
            crc_reg <= 16'hFFFF; clk_div <= 6'd3; div_cnt <= 6'h00; bit_cnt <= 5'h0;
            busy <= 1'b0; spi_clk_r <= 1'b0; cs_force <= 1'b0; irq <= 1'b0;
            auto_irq <= 1'b0; auto_en <= 1'b0; sleep_timer <= 16'h0; timer_period <= 16'h0;
            thresh_high <= 8'hFF; thresh_low <= 8'h00; auto_cmd <= 32'h0;
        end else begin

            if (write_en && !busy) begin
                case (address)
                    6'h1: if (data_in[1]) irq <= 1'b0;
                    6'h2: clk_div <= data_in[5:0];
                    6'h3: {cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol} <= {data_in[8:4], data_in[3:0]};
                    6'h4: cs_force <= data_in[0];
                    6'h5: timer_period <= data_in[15:0];
                    6'h6: auto_cmd     <= data_in[31:0];
                    6'h7: {thresh_high, thresh_low} <= {data_in[15:8], data_in[7:0]};
                    6'h8: begin 
                            if (data_in[0] && !auto_en) sleep_timer <= timer_period; 
                            auto_en <= data_in[0];
                            if (data_in[1]) auto_irq <= 1'b0; 
                          end
                    default: ;
                endcase
            end

            if (write_en && address == 6'h0 && !busy) begin
                busy        <= 1'b1;
                tx_shift    <= tx_load_val; 
                rx_shift    <= 32'h0;
                bit_cnt     <= cfg_wlen;       
                div_cnt     <= clk_div; 
                spi_clk_r   <= cfg_cpha;
                irq         <= 1'b0;
                crc_reg     <= 16'hFFFF; 
            end 
            
            else if (!busy && auto_en) begin
                if (sleep_timer != 16'h0) begin
                    sleep_timer <= sleep_timer - 1'b1;
                end else begin
                    busy        <= 1'b1;
                    tx_shift    <= auto_load_val; 
                    rx_shift    <= 32'h0;
                    bit_cnt     <= cfg_wlen;       
                    div_cnt     <= clk_div; 
                    spi_clk_r   <= cfg_cpha;
                    crc_reg     <= 16'hFFFF; 
                end
            end

            else if (busy) begin
                if (div_cnt != 6'h00) begin
                    div_cnt <= div_cnt - 1'b1;
                end else begin
                    div_cnt   <= clk_div;
                    spi_clk_r <= ~spi_clk_r;

                    if (spi_clk_r == cfg_cpha) begin
                        rx_shift <= {rx_shift[30:0], miso};
                        crc_reg  <= {crc_reg[14:0], 1'b0} ^ (crc_fb ? 16'h1021 : 16'h0000);
                    end else begin
                        tx_shift <= {tx_shift[30:0], 1'b0};
                        
                        if (bit_cnt == 5'h0) begin
                            busy <= 1'b0;
                            
                            if (cfg_wlen == 5'd7) begin
                                rx_hold <= cfg_lsb ? {24'h0, r0_r} : {24'h0, rx_shift[7:0]};
                            end else if (cfg_wlen == 5'd15) begin
                                rx_hold <= cfg_lsb ? {16'h0, r0_r, r1_r} : {16'h0, rx_shift[15:0]};
                            end else begin
                                rx_hold <= cfg_lsb ? {r0_r, r1_r, r2_r, r3_r} : rx_shift;
                            end
                            
                            if (auto_en) begin
                                sleep_timer <= timer_period; 
                                if (rx_shift[7:0] > thresh_high || rx_shift[7:0] < thresh_low) begin
                                    auto_irq <= 1'b1; 
                                end
                            end else begin
                                irq <= 1'b1; 
                            end
                            
                        end else begin
                            bit_cnt <= bit_cnt - 1'b1;
                        end
                    end
                end
            end
        end
    end

    assign data_out =
        (address == 6'h0) ? rx_hold :
        (address == 6'h1) ? {24'h0, 5'b0, auto_irq, irq, busy} :
        (address == 6'h2) ? {24'h0, 2'b0, clk_div} :
        (address == 6'h8) ? {16'h0, crc_reg} : 
        32'h0;

    assign data_ready = 1'b1;
    assign user_interrupt = irq | auto_irq;
    assign uo_out = {4'b0, user_interrupt, cs_n, tx_shift[31], sclk_out};

    wire _unused_ui  = &{ui_in[7:1]};
    wire _unused_rdn = &{data_read_n, 1'b0};

endmodule
