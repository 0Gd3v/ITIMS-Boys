`default_nettype none

module tt_um_tqv_peripheral_harness (
    input  wire [7:0] ui_in,    // Dùng trọn 8 bit cho Data Ghi (wdata)
    output wire [7:0] uo_out,   // Dùng trọn 8 bit cho Data Đọc (rdata)
    input  wire [7:0] uio_in,   // Chứa Address, WE, RE và MISO
    output wire [7:0] uio_out,  // Chứa SCK, MOSI, CS_N và IRQ
    output wire [7:0] uio_oe,   // Cấu hình in/out cho uio
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // Đồng bộ tín hiệu Reset
    reg rst_reg_n;
    always @(negedge clk) rst_reg_n <= rst_n;

    // ==========================================
    // QUY HOẠCH CHÂN CHUẨN DP_3 (BIT-BANGING)
    // ==========================================
    wire [3:0] addr  = uio_in[3:0]; // 4 bit đầu làm Địa chỉ
    wire       we    = uio_in[4];   // Bit 4 làm Write Enable
    wire       re    = uio_in[5];   // Bit 5 làm Read Enable
    wire       miso  = uio_in[6];   // Bit 6 làm MISO (Nhận từ cảm biến)

    wire [7:0] wdata = ui_in;       // Đầu vào dữ liệu
    wire [7:0] rdata;               // Đầu ra dữ liệu

    wire sck, mosi, cs_n, irq;

    // Gọi khối Peripheral DP_3 xịn xò của bạn
    tqvp_spi_master user_peripheral(
        .clk(clk),
        .rst_n(rst_reg_n),
        .addr(addr),
        .wdata(wdata),
        .we(we),
        .re(re),
        .rdata(rdata),
        .sck(sck),
        .mosi(mosi),
        .miso(miso),
        .cs_n(cs_n),
        .irq(irq)
    );

    // ==========================================
    // XUẤT TÍN HIỆU RA NGOÀI
    // ==========================================
    assign uo_out  = rdata; 
    // Ghép các chân tín hiệu ra: [3] irq, [2] cs_n, [1] mosi, [0] sck
    assign uio_out = {4'b0000, irq, cs_n, mosi, sck};
    
    // Đặt 4 chân dưới của uio làm Output, 4 chân trên làm Input
    assign uio_oe  = 8'h0F; 

    // Đánh lừa Verilator để không bị báo lỗi dây thừa
    wire _unused = &{ena, uio_in[7]};

endmodule
