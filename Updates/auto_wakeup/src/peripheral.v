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

    wire data_write = (data_write_n != 2'b11);
    wire [7:0] data_in_8 = data_in[7:0];
    assign data_ready = 1'b1;

    // SPI Registers
    reg        cfg_cpol, cfg_cpha, cfg_lsb, cfg_mcs;
    reg [2:0]  cfg_wlen;
    reg [7:0]  tx_shift, rx_shift, rx_hold;
    reg [5:0]  clk_div, div_cnt;     
    reg [2:0]  bit_cnt;
    reg        busy, spi_clk_r, cs_force, irq;

    // Các dây nối (Wires) để nhận tín hiệu từ module auto_wakeup
    wire        auto_trigger_w;
    wire [7:0]  auto_tx_data_w;
    wire        auto_cs_force_w;
    wire        auto_irq_w;
    wire [7:0]  timer_period_w;
    wire [7:0]  auto_cmd_w;
    wire [7:0]  thresh_high_w;
    wire [7:0]  thresh_low_w;
    wire        auto_en_w;

    // -------------------------------------------------------------------------
    // Instantiate module Auto-Wakeup
    // -------------------------------------------------------------------------
    auto_wakeup u_auto_wakeup (
        .clk            (clk),
        .rst_n          (rst_n),
        .address        (address),
        .data_in_8      (data_in_8),
        .data_write     (data_write),
        .spi_busy       (busy),
        .spi_rx_data    (rx_hold),
        .auto_trigger   (auto_trigger_w),
        .auto_tx_data   (auto_tx_data_w),
        .auto_cs_force  (auto_cs_force_w),
        .auto_irq       (auto_irq_w),
        .timer_period   (timer_period_w),
        .auto_cmd       (auto_cmd_w),
        .thresh_high    (thresh_high_w),
        .thresh_low     (thresh_low_w),
        .auto_en        (auto_en_w)
    );

    // -------------------------------------------------------------------------
    // SPI Logic Combinational
    // -------------------------------------------------------------------------
    wire miso     = ui_in[0];
    wire sclk_out = spi_clk_r ^ cfg_cpol;
    
    wire cpu_trigger    = (data_write && address == 6'h00);
    wire start_transfer = (cpu_trigger || auto_trigger_w) && !busy;

    wire [7:0] active_data_in = auto_trigger_w ? auto_tx_data_w : data_in_8;
    wire [7:0] active_tx_load = cfg_lsb
        ? {active_data_in[0], active_data_in[1], active_data_in[2], active_data_in[3],
           active_data_in[4], active_data_in[5], active_data_in[6], active_data_in[7]}
        : active_data_in;

    //wire cs_n = cfg_mcs ? ~(cs_force | auto_cs_force_w) : ~busy;
    wire cs_n = ~( (cfg_mcs ? cs_force : busy) | auto_cs_force_w );
    assign user_interrupt = irq | auto_irq_w;
    assign uo_out = {4'b0, 1'b0, cs_n, tx_shift[7], sclk_out};
    
    // FIX Bug 5: dùng cách suppress warning chuẩn hơn
    wire _unused_ok = &{1'b0, ui_in[7:1], data_read_n};

    // -------------------------------------------------------------------------
    // SPI State Machine & CPU Write
    // -------------------------------------------------------------------------
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
            // Chỉ bắt CPU Writes cho SPI Core (Địa chỉ 01 -> 04)
            // Địa chỉ 05 -> 09 đã được module auto_wakeup xử lý
            if (data_write) begin
                case (address)
                    6'h01: if (data_in_8[1]) irq <= 1'b0;
                    6'h02: if (!busy) clk_div <= data_in_8[5:0];
                    6'h03: if (!busy) {cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol} <= {data_in_8[6:4], data_in_8[3:0]};
                    6'h04: cs_force <= data_in_8[0];
                    default: ;
                endcase
            end

            // SPI Core Control Path
            if (start_transfer) begin
                busy      <= 1'b1;
                tx_shift  <= active_tx_load;
                bit_cnt   <= cfg_wlen;       
                div_cnt   <= clk_div;
                spi_clk_r <= cfg_cpha;
                irq       <= 1'b0;
            end else if (busy) begin
                if (div_cnt != 6'h00) begin
                    div_cnt <= div_cnt - 1'b1;
                end else begin
                    div_cnt   <= clk_div;
                    spi_clk_r <= ~spi_clk_r;

                    if (spi_clk_r == cfg_cpha) begin
                        rx_shift <= {rx_shift[6:0], miso};
                    end else begin
                        tx_shift <= {tx_shift[6:0], 1'b0};
                        if (bit_cnt == 3'h0) begin
                            busy <= 1'b0;
                            irq  <= 1'b1; 
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

    // -------------------------------------------------------------------------
    // CPU Read Interface (Gộp dữ liệu từ cả SPI và Auto Wakeup)
    // -------------------------------------------------------------------------
    wire [7:0] read_val_8 =
        ({8{address == 6'h00}} & rx_hold)
      | ({8{address == 6'h01}} & {5'b0, auto_irq_w, irq, busy}) 
      | ({8{address == 6'h02}} & {2'b0, clk_div})
      | ({8{address == 6'h03}} & {1'b0, cfg_wlen, cfg_mcs, cfg_lsb, cfg_cpha, cfg_cpol})
      // FIX Bug 1: thêm readback cho cs_force tại địa chỉ 0x04
      | ({8{address == 6'h04}} & {7'b0, cs_force})
      | ({8{address == 6'h05}} & timer_period_w)
      | ({8{address == 6'h06}} & auto_cmd_w)
      | ({8{address == 6'h07}} & thresh_high_w)
      | ({8{address == 6'h08}} & thresh_low_w)
      | ({8{address == 6'h09}} & {6'b0, auto_irq_w, auto_en_w});

    assign data_out = {24'h000000, read_val_8}; 
`ifdef SIM
initial begin
    $dumpfile("tqvp_spi_master.vcd"); // Đổi thành tên file VCD bạn muốn
    $dumpvars(0, tqvp_spi_master);
end
`endif
endmodule
