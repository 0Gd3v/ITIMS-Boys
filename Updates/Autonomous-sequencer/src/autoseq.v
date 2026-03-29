`default_nettype none

// =============================================================================
// autonomous_sequencer submodule
// Drives the peripheral's register bus automatically after reset.
// Sequence: configure → loop(trigger transfer → wait IRQ → clear IRQ → wait)
// =============================================================================
module autonomous_sequencer #(
    parameter [7:0]  CFG_VAL       = 8'h08,
    parameter [7:0]  DIV_VAL       = 8'd3,
    parameter [7:0]  TX_VAL        = 8'hA5,
    parameter [15:0] POLL_INTERVAL = 16'd100
) (
    input  wire        clk,
    input  wire        rst_n,
    output reg  [3:0]  address,
    output reg  [7:0]  data_in,
    output reg         data_write,
    input  wire        irq_in
);
    localparam A_DATA   = 4'h0;
    localparam A_STATUS = 4'h1;
    localparam A_CLKDIV = 4'h2;
    localparam A_CONFIG = 4'h3;

    localparam S_INIT      = 3'd0;
    localparam S_WR_CONFIG = 3'd1;
    localparam S_WR_CLKDIV = 3'd2;
    localparam S_WR_DATA   = 3'd3;
    localparam S_WAIT_IRQ  = 3'd4;
    localparam S_CLR_IRQ   = 3'd5;
    localparam S_POLL_WAIT = 3'd6;

    reg [2:0]  state;
    reg [15:0] timer;

    always @(posedge clk) begin
        if (!rst_n) begin
            state      <= S_INIT;
            timer      <= 16'd8;
            address    <= 4'h0;
            data_in    <= 8'h00;
            data_write <= 1'b0;
        end else begin
            data_write <= 1'b0;

            case (state)
                S_INIT: begin
                    if (timer == 0) state <= S_WR_CONFIG;
                    else timer <= timer - 1'b1;
                end

                S_WR_CONFIG: begin
                    address    <= A_CONFIG;
                    data_in    <= CFG_VAL;
                    data_write <= 1'b1;
                    timer      <= 16'd4;
                    state      <= S_WR_CLKDIV;
                end

                S_WR_CLKDIV: begin
                    if (timer == 0) begin
                        address    <= A_CLKDIV;
                        data_in    <= DIV_VAL;
                        data_write <= 1'b1;
                        timer      <= 16'd4;
                        state      <= S_WR_DATA;
                    end else timer <= timer - 1'b1;
                end

                S_WR_DATA: begin
                    if (timer == 0) begin
                        address    <= A_DATA;
                        data_in    <= TX_VAL;
                        data_write <= 1'b1;
                        state      <= S_WAIT_IRQ;
                    end else timer <= timer - 1'b1;
                end

                S_WAIT_IRQ: begin
                    if (irq_in) state <= S_CLR_IRQ;
                end

                S_CLR_IRQ: begin
                    address    <= A_STATUS;
                    data_in    <= 8'h02;
                    data_write <= 1'b1;
                    timer      <= POLL_INTERVAL;
                    state      <= S_POLL_WAIT;
                end

                S_POLL_WAIT: begin
                    if (timer == 0) state <= S_WR_DATA;
                    else timer <= timer - 1'b1;
                end

                default: state <= S_INIT;
            endcase
        end
    end
endmodule


// =============================================================================
// tqvp_spi_master — SPI master peripheral with integrated autonomous sequencer
// =============================================================================
module tqvp_spi_master (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [3:0] address,
    input  wire       data_write,
    input  wire [7:0] data_in,
    output wire [7:0] data_out
);

    // =========================================================================
    // Registers
    // =========================================================================
    reg [7:0] cfg_reg;
    reg [5:0] clk_div;
    reg [7:0] tx_shift, rx_hold, rx_shift;
    reg [2:0] bit_cnt;
    reg [5:0] div_cnt;
    reg       busy, irq, spi_clk_r, cs_force;
    reg       seq_start;

    localparam IDLE      = 3'd0;
    localparam ASSERT_CS = 3'd1;
    localparam TRANSFER  = 3'd2;
    localparam WAIT_LAST = 3'd3;
    localparam DONE      = 3'd4;
    reg [2:0] state;

    wire miso     = ui_in[0];
    wire cs_n     = cfg_reg[3] ? (state == IDLE || state == DONE) : ~cs_force;
    wire sclk_out = spi_clk_r ^ cfg_reg[0];

    // =========================================================================
    // Autonomous sequencer instance
    // =========================================================================
    wire [3:0] seq_address;
    wire [7:0] seq_data;
    wire       seq_write;

    autonomous_sequencer #(
        .CFG_VAL       (8'h08),   // AutoCS=1, Mode0
        .DIV_VAL       (8'd3),    // clk_div=3
        .TX_VAL        (8'hA5),   // default TX byte
        .POLL_INTERVAL (16'd50000)  // cycles between transfers (~500us at 100MHz)
    ) u_seq (
        .clk       (clk),
        .rst_n     (rst_n),
        .address   (seq_address),
        .data_in   (seq_data),
        .data_write(seq_write),
        .irq_in    (irq)
    );

    // CPU writes take priority over sequencer
    wire        eff_write   = data_write | seq_write;
    wire [3:0]  eff_address = data_write ? address  : seq_address;
    wire [7:0]  eff_data    = data_write ? data_in  : seq_data;

    wire [7:0] tx_data_prepared = cfg_reg[2]
        ? {eff_data[0], eff_data[1], eff_data[2], eff_data[3],
           eff_data[4], eff_data[5], eff_data[6], eff_data[7]}
        : eff_data;

    // =========================================================================
    // Main FSM
    // =========================================================================
    always @(posedge clk) begin
        if (!rst_n) begin
            state     <= IDLE;
            busy      <= 1'b0;
            irq       <= 1'b0;
            spi_clk_r <= 1'b0;
            cs_force  <= 1'b0;
            seq_start <= 1'b0;
            clk_div   <= 6'd3;
            cfg_reg   <= 8'h08;
            rx_hold   <= 8'h00;
            rx_shift  <= 8'h00;
            tx_shift  <= 8'h00;
            bit_cnt   <= 3'd0;
            div_cnt   <= 6'd0;
        end else begin

            if (eff_write) begin
                case (eff_address)
                    4'h0: if (state == IDLE) begin
                              tx_shift  <= tx_data_prepared;
                              seq_start <= 1'b1;
                          end
                    4'h1: if (eff_data[1]) irq <= 1'b0;
                    4'h2: clk_div  <= eff_data[5:0];
                    4'h3: cfg_reg  <= eff_data;
                    4'h4: cs_force <= eff_data[0];
                    default: ;
                endcase
            end

            case (state)
                IDLE: begin
                    busy      <= 1'b0;
                    spi_clk_r <= cfg_reg[1];
                    if (seq_start) begin
                        seq_start <= 1'b0;
                        irq       <= 1'b0;
                        busy      <= 1'b1;
                        state     <= ASSERT_CS;
                    end
                end

                ASSERT_CS: begin
                    div_cnt <= clk_div;
                    bit_cnt <= 3'd7;
                    state   <= TRANSFER;
                end

                TRANSFER: begin
                    if (div_cnt > 0) begin
                        div_cnt <= div_cnt - 1'b1;
                    end else begin
                        div_cnt   <= clk_div;
                        spi_clk_r <= ~spi_clk_r;
                        if (spi_clk_r == cfg_reg[1]) begin
                            rx_shift <= {rx_shift[6:0], miso};
                            if (bit_cnt == 0) state <= WAIT_LAST;
                            else bit_cnt <= bit_cnt - 1'b1;
                        end else begin
                            tx_shift <= {tx_shift[6:0], 1'b0};
                        end
                    end
                end

                WAIT_LAST: begin
                    if (div_cnt > 0) div_cnt <= div_cnt - 1'b1;
                    else begin
                        spi_clk_r <= ~spi_clk_r;
                        state     <= DONE;
                    end
                end

                DONE: begin
                    rx_hold <= cfg_reg[2]
                        ? {rx_shift[0], rx_shift[1], rx_shift[2], rx_shift[3],
                           rx_shift[4], rx_shift[5], rx_shift[6], rx_shift[7]}
                        : rx_shift;
                    irq   <= 1'b1;
                    busy  <= 1'b0;
                    state <= IDLE;
                end
            endcase
        end
    end

    // =========================================================================
    // Read interface
    // =========================================================================
    assign data_out =
        (address == 4'h0) ? rx_hold           :
        (address == 4'h1) ? {6'b0, irq, busy} :
        (address == 4'h2) ? {2'b0, clk_div}   :
        (address == 4'h3) ? cfg_reg            : 8'h0;

    assign uo_out = {4'b0, irq, cs_n, tx_shift[7], sclk_out};

    wire _unused_ui = &{ui_in[7:1]};

endmodule
