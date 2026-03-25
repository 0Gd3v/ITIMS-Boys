`timescale 1ns / 1ps

module tqvp_spi_master (
    input  wire       clk,
    input  wire       rst_n,
    
    // Giao tiếp Bus (Tên chân đã được chuẩn hóa)
    input  wire [3:0] addr,
    input  wire [7:0] wdata,
    input  wire       we,
    input  wire       re,
    output reg  [7:0] rdata,
    
    // Giao tiếp SPI
    output reg        sck,
    output reg        mosi,
    input  wire       miso,
    output reg        cs_n,
    output wire       irq
);

    // ==========================================
    // KHAI BÁO FIFO VÀ CON TRỎ
    // ==========================================
    reg [7:0] tx_fifo [0:3];
    reg [7:0] rx_fifo [0:3];
    
    reg [1:0] tx_wr_ptr, tx_rd_ptr;
    reg [2:0] tx_count;
    
    reg [1:0] rx_wr_ptr, rx_rd_ptr;
    reg [2:0] rx_count;

    wire tx_full  = (tx_count == 4);
    wire tx_empty = (tx_count == 0);
    wire rx_full  = (rx_count == 4);
    wire rx_empty = (rx_count == 0);

    reg ctrl_spi_en;
    reg ctrl_irq_en;
    reg spi_busy;

    assign irq = ctrl_irq_en & (~rx_empty);

    // ==========================================
    // ĐỌC THANH GHI 
    // ==========================================
    always @(*) begin
        case (addr)
            4'h1: rdata = rx_empty ? 8'h00 : rx_fifo[rx_rd_ptr];
            4'h2: rdata = {3'b000, rx_empty, rx_full, tx_empty, tx_full, spi_busy};
            4'h3: rdata = {6'b000000, ctrl_irq_en, ctrl_spi_en};
            default: rdata = 8'h00;
        endcase
    end

    // ==========================================
    // GHI THANH GHI VÀ QUẢN LÝ CON TRỎ
    // ==========================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_wr_ptr   <= 0;
            rx_rd_ptr   <= 0;
            ctrl_spi_en <= 0;
            ctrl_irq_en <= 0;
        end else begin
            if (we) begin
                case (addr)
                    4'h0: begin // Đẩy vào TX FIFO
                        if (!tx_full) begin
                            tx_fifo[tx_wr_ptr] <= wdata;
                            tx_wr_ptr <= tx_wr_ptr + 1;
                        end
                    end
                    4'h3: begin
                        ctrl_spi_en <= wdata[0];
                        ctrl_irq_en <= wdata[1];
                    end
                endcase
            end
            
            // CPU Pop RX FIFO
            if (re && addr == 4'h1 && !rx_empty) begin
                rx_rd_ptr <= rx_rd_ptr + 1;
            end
        end
    end

    // ==========================================
    // MÁY TRẠNG THÁI SPI VÀ FIFO ĐẾM
    // ==========================================
    localparam IDLE  = 2'b00;
    localparam SHIFT = 2'b01;
    localparam DONE  = 2'b10;

    reg [1:0] state;
    reg [2:0] bit_cnt;
    reg [7:0] shift_reg_tx;
    reg [7:0] shift_reg_rx;

    wire tx_push = (we && addr == 4'h0 && !tx_full);
    wire tx_pop  = ((state == IDLE && !tx_empty && ctrl_spi_en) || 
                    (state == DONE && !tx_empty));
    
    wire rx_push = (state == DONE && !rx_full);
    wire rx_pop  = (re && addr == 4'h1 && !rx_empty);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) tx_count <= 0;
        else case ({tx_push, tx_pop})
            2'b10: tx_count <= tx_count + 1;
            2'b01: tx_count <= tx_count - 1;
            default: tx_count <= tx_count;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) rx_count <= 0;
        else case ({rx_push, rx_pop})
            2'b10: rx_count <= rx_count + 1;
            2'b01: rx_count <= rx_count - 1;
            default: rx_count <= rx_count;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= IDLE;
            sck          <= 0;
            mosi         <= 0;
            cs_n         <= 1;
            spi_busy     <= 0;
            bit_cnt      <= 0;
            tx_rd_ptr    <= 0;
            rx_wr_ptr    <= 0;
        end else begin
            case (state)
                IDLE: begin
                    sck <= 0;
                    if (!tx_empty && ctrl_spi_en) begin
                        shift_reg_tx <= tx_fifo[tx_rd_ptr];
                        tx_rd_ptr    <= tx_rd_ptr + 1;
                        cs_n         <= 0;
                        spi_busy     <= 1;
                        bit_cnt      <= 7;
                        state        <= SHIFT;
                    end else begin
                        cs_n     <= 1;
                        spi_busy <= 0;
                    end
                end

                SHIFT: begin
                    sck <= ~sck;
                    if (sck == 0) begin
                        mosi <= shift_reg_tx[bit_cnt];
                    end else begin
                        shift_reg_rx[bit_cnt] <= miso;
                        if (bit_cnt == 0) begin
                            state <= DONE;
                        end else begin
                            bit_cnt <= bit_cnt - 1;
                        end
                    end
                end

                DONE: begin
                    sck <= 0;
                    if (!rx_full) begin
                        rx_fifo[rx_wr_ptr] <= shift_reg_rx;
                        rx_wr_ptr <= rx_wr_ptr + 1;
                    end
                    if (!tx_empty) begin
                        shift_reg_tx <= tx_fifo[tx_rd_ptr];
                        tx_rd_ptr    <= tx_rd_ptr + 1;
                        bit_cnt      <= 7;
                        state        <= SHIFT;
                    end else begin
                        cs_n  <= 1;
                        state <= IDLE;
                    end
                end
            endcase
        end
    end

endmodule
