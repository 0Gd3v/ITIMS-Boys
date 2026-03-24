`default_nettype none

module auto_wakeup (
    input  wire        clk,
    input  wire        rst_n,

    // Giao diện CPU (để ghi cấu hình)
    input  wire [5:0]  address,
    input  wire [7:0]  data_in_8,
    input  wire        data_write,

    // Giao diện với SPI Master Core
    input  wire        spi_busy,
    input  wire [7:0]  spi_rx_data,  // Nối vào rx_hold của SPI
    
    // Tín hiệu điều khiển xuất ra SPI Core
    output reg         auto_trigger,
    output reg [7:0]   auto_tx_data,
    output reg         auto_cs_force,

    // Các thanh ghi cấu hình xuất ra để CPU có thể đọc (Readback)
    output reg         auto_irq,
    output reg [7:0]   timer_period,
    output reg [7:0]   auto_cmd,
    output reg [7:0]   thresh_high,
    output reg [7:0]   thresh_low,
    output reg         auto_en
);

    // Internal state
    reg [15:0] sleep_timer;   
    reg [2:0]  auto_state;
    
    localparam A_IDLE      = 3'd0;
    localparam A_ASSERT_CS = 3'd1;
    localparam A_SEND_CMD  = 3'd2;
    localparam A_WAIT_CMD  = 3'd3;
    localparam A_READ_DATA = 3'd4;
    localparam A_WAIT_DATA = 3'd5;
    localparam A_CHECK     = 3'd6;

    always @(posedge clk) begin
        if (!rst_n) begin
            timer_period  <= 8'hFF;
            auto_cmd      <= 8'h00;
            thresh_high   <= 8'hFF;
            thresh_low    <= 8'h00;
            auto_en       <= 1'b0;
            auto_irq      <= 1'b0;
            sleep_timer   <= 16'h0000;
            auto_state    <= A_IDLE;
            auto_trigger  <= 1'b0;
            auto_tx_data  <= 8'h00;
            auto_cs_force <= 1'b0;
        end else begin
            // Mặc định không trigger
            auto_trigger <= 1'b0;

            // ------------------------------------------------------------------
            // CPU Write Logic
            // ------------------------------------------------------------------
            if (data_write) begin
                case (address)
                    6'h05: timer_period <= data_in_8;
                    6'h06: auto_cmd     <= data_in_8;
                    6'h07: thresh_high  <= data_in_8;
                    6'h08: thresh_low   <= data_in_8;
                    6'h09: begin
                        auto_en <= data_in_8[0];
                        if (data_in_8[1]) auto_irq <= 1'b0; // Xóa cờ ngắt
                    end
                    default: ;
                endcase
            end

            // ------------------------------------------------------------------
            // FIX Bug 3: Nếu auto_en bị tắt giữa chừng, dừng FSM ngay lập tức
            // ------------------------------------------------------------------
            if (!auto_en && auto_state != A_IDLE) begin
                auto_state    <= A_IDLE;
                auto_cs_force <= 1'b0;
                auto_trigger  <= 1'b0;
                sleep_timer   <= 16'h0000;
            end else begin
                // ------------------------------------------------------------------
                // FSM: Auto-Wakeup
                // ------------------------------------------------------------------
                case (auto_state)
                    A_IDLE: begin
                        if (auto_en && !spi_busy) begin
                            // FIX Bug 4: dùng đúng độ rộng literal cho counter 16-bit
                            sleep_timer <= sleep_timer + 16'h0001;
                            if (sleep_timer >= {timer_period, 8'h00}) begin 
                                sleep_timer   <= 16'h0000;
                                auto_cs_force <= 1'b1;
                                auto_state    <= A_ASSERT_CS;
                            end
                        end else begin
                            sleep_timer <= 16'h0000;
                        end
                    end
                    A_ASSERT_CS: begin
                        auto_tx_data <= auto_cmd;
                        auto_trigger <= 1'b1;
                        auto_state   <= A_SEND_CMD;
                    end
                    A_SEND_CMD: if (spi_busy) auto_state <= A_WAIT_CMD;
                    A_WAIT_CMD: begin
                        if (!spi_busy) begin
                            auto_tx_data <= 8'h00; // Nhận dummy byte để đọc
                            auto_trigger <= 1'b1;
                            auto_state   <= A_READ_DATA;
                        end
                    end
                    A_READ_DATA: if (spi_busy) auto_state <= A_WAIT_DATA;
                    A_WAIT_DATA: begin
                        if (!spi_busy) begin
                            auto_cs_force <= 1'b0;
                            auto_state    <= A_CHECK;
                        end
                    end
                    A_CHECK: begin
                        if (spi_rx_data > thresh_high || spi_rx_data < thresh_low) begin
                            auto_irq <= 1'b1;
                        end
                        auto_state <= A_IDLE;
                    end
                    default: auto_state <= A_IDLE;
                endcase
            end // end else auto_en check

        end
    end

endmodule
