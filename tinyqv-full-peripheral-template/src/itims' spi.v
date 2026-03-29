`default_nettype none

module tqvp_spi_master (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  ui_in,         // ui_in[0] = MISO
    output wire [7:0]  uo_out,        // [0]=SCLK [1]=MOSI [2]=CS_n [3]=IRQ

    input  wire [5:0]  address,       // 6-bit address within peripheral space
    input  wire [31:0] data_in,       // full-width data bus (bottom 8/16/32 valid on write)
    input  wire [1:0]  data_write_n,  // 11=no write, 00=byte, 01=hword, 10=word
    input  wire [1:0]  data_read_n,   // 11=no read,  00=byte, 01=hword, 10=word
    output wire [31:0] data_out,      // full-width read data (valid when data_ready=1)
    output wire        data_ready,    // 1 = read data on data_out is valid
    output wire        user_interrupt // dedicated IRQ line to TinyQV
);

    // =========================================================================
    // Configuration Registers
    // =========================================================================
    reg        cfg_cpol;
    reg        cfg_cpha;
    reg        cfg_lsb;
    reg        cfg_mcs;
    reg [2:0]  cfg_wlen;

    // =========================================================================
    // Operational Registers
    // =========================================================================
    reg [7:0]  tx_shift;
    reg [7:0]  rx_shift;
    reg [7:0]  rx_hold;
    reg [5:0]  clk_div;
    
    // PPA Optimization: Replaced variable up-counters with down-counters
    reg [5:0]  div_cnt;     
    reg [2:0]  bit_cnt;     // Reduced from 4-bit to 3-bit
    reg        busy;        // Explicit busy FF replaces 4-bit comparator
    
    reg        spi_clk_r;
    reg        cs_force;
    reg        irq;

    // =========================================================================
    // Combinatorial signals
    // =========================================================================
    wire miso     = ui_in[0];
    wire cs_n     = cfg_mcs ? ~cs_force : ~busy;
    wire sclk_out = spi_clk_r ^ cfg_cpol;

    // Static routing for LSB-first reversal (Zero area cost)
    wire [7:0] tx_load = cfg_lsb
        ? {data_in[0], data_in[1], data_in[2], data_in[3],
           data_in[4], data_in[5], data_in[6], data_in[7]}
        : data_in;

    // =========================================================================
    // State machine
    // =========================================================================
    always @(posedge clk) begin
        if (!rst_n) begin
            tx_shift   <= 8'h00;
            rx_shift   <= 8'h00;
            rx_hold    <= 8'h00;
            clk_div    <= 6'd3;
            div_cnt    <= 6'h00;
            bit_cnt    <= 3'h0;
            busy       <= 1'b0;
            spi_clk_r  <= 1'b0;
            cs_force   <= 1'b0;
            irq        <= 1'b0;
            cfg_cpol   <= 1'b0;
            cfg_cpha   <= 1'b0;
            cfg_lsb    <= 1'b0;
            cfg_mcs    <= 1'b0;
            cfg_wlen   <= 3'd7; 
        end else begin

            // ------------------------------------------------------------------
            // CPU Writes
            // ------------------------------------------------------------------
            if (data_write_n != 2'b11) begin
                case (address)
                    6'h1: if (data_in[1]) irq <= 1'b0;
                    // Protect config registers from mid-flight disruption
                    6'h2: if (!busy) clk_div <= data_in[5:0];
                    6'h3: if (!busy) {cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol}
                                     <= {data_in[6:4], data_in[3:0]};
                    6'h4: cs_force <= data_in[0];
                    default: ;
                endcase
            end

            // ------------------------------------------------------------------
            // SPI Control Path
            // ------------------------------------------------------------------
            // Start transfer
            if (data_write_n != 2'b11 && address == 6'h0 && !busy) begin
                busy      <= 1'b1;
                tx_shift  <= tx_load;
                bit_cnt   <= cfg_wlen;       // Load directly (no adder)
                div_cnt   <= clk_div;        // Pre-load for down-counting
                spi_clk_r <= cfg_cpha;
                irq       <= 1'b0;

            end else if (busy) begin
                // PPA: Zero-check is smaller than variable comparison
                if (div_cnt != 6'h00) begin
                    div_cnt <= div_cnt - 1'b1;
                end else begin
                    div_cnt   <= clk_div;
                    spi_clk_r <= ~spi_clk_r;

                    if (spi_clk_r == cfg_cpha) begin
                        // Sample edge
                        rx_shift <= {rx_shift[6:0], miso};
                    end else begin
                        // Shift edge
                        tx_shift <= {tx_shift[6:0], 1'b0};

                        // PPA: Zero-check replaces equality comparator
                        if (bit_cnt == 3'h0) begin
                            busy <= 1'b0;
                            irq  <= 1'b1; // Trigger active-high immediately
                            rx_hold <= cfg_lsb
                                ? {rx_shift[0], rx_shift[1], rx_shift[2], rx_shift[3],
                                   rx_shift[4], rx_shift[5], rx_shift[6], rx_shift[7]}
                                : rx_shift;
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
        (address == 6'h0) ? {24'h0, rx_hold}                                         :
        (address == 6'h1) ? {24'h0, 6'b0, irq, busy}                                 :
        (address == 6'h2) ? {24'h0, 2'b0, clk_div}                                   :
        (address == 6'h3) ? {24'h0, 1'b0, cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol} :
        32'h0;

    // Reads always complete in 1 clock (combinatorial)
    assign data_ready = 1'b1;

    assign uo_out = {4'b0, irq, cs_n, tx_shift[7], sclk_out};

    // IRQ is also routed to the dedicated interrupt wire for TinyQV integration
    assign user_interrupt = irq;

    wire _unused_ui  = &{ui_in[7:1]};
    wire _unused_rdn = &{data_read_n, 1'b0};

endmodule
