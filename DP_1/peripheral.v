/*
 * Simple SPI Master Peripheral for TinyQV
 */

`default_nettype none

module tqvp_spi_master (
    input  wire       clk,          // System clock
    input  wire       rst_n,        // Active low reset
    input  wire [7:0] ui_in,        // Inputs (unused here)
    output wire [7:0] uo_out,       // SPI Pins: [0]=CLK, [1]=MOSI, [2]=CS
    input  wire [3:0] address,      // Register address [cite: 1]
    input  wire       data_write,   // Write enable [cite: 1]
    input  wire [7:0] data_in,      // Data from CPU [cite: 1]
    output wire [7:0] data_out      // Data to CPU [cite: 1]
);

    // --- Registers ---
    // Addr 0: Data Register (Write starts transmission)
    // Addr 1: Status Register (Bit 0: Busy)
    // Addr 2: Clock Divider (Speed control)
    
    reg [7:0] shift_reg;
    reg [7:0] clk_divider;
    reg [7:0] div_count;
    reg [3:0] bit_count;
    reg       busy;
    reg       spi_clk;
    reg       spi_cs_n;

    // --- State Machine ---
    always @(posedge clk) begin
        if (!rst_n) begin
            busy <= 0;
            bit_count <= 0;
            spi_cs_n <= 1;
            spi_clk <= 0;
            div_count <= 0;
            clk_divider <= 8'd4; // Default speed
        end else if (data_write && address == 4'h0 && !busy) begin
            // Start Transmission
            shift_reg <= data_in;
            busy <= 1;
            bit_count <= 8;
            spi_cs_n <= 0;
            div_count <= 0;
        end else if (data_write && address == 4'h2) begin
            clk_divider <= data_in;
        end else if (busy) begin
            if (div_count < clk_divider) begin
                div_count <= div_count + 1'b1;
            end else begin
                div_count <= 0;
                if (spi_clk == 1'b0) begin
                    // Rising edge: shift out data
                    spi_clk <= 1;
                end else begin
                    // Falling edge: next bit
                    spi_clk <= 0;
                    shift_reg <= {shift_reg[6:0], 1'b0};
                    bit_count <= bit_count - 1'b1;
                    if (bit_count == 1) begin
                        busy <= 0;
                        spi_cs_n <= 1;
                    end
                end
            end
        end
    end

    // --- CPU Interface ---
    assign data_out = (address == 4'h1) ? {7'b0, busy} : 
                      (address == 4'h2) ? clk_divider : 8'h0;

    // --- Output Mapping ---
    assign uo_out = {5'b0, spi_cs_n, shift_reg[7], spi_clk};

endmodule
