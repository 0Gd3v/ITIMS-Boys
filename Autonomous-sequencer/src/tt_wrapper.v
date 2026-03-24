/*
 * Copyright (c) 2025 Michael Bell
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

/** TinyQV peripheral test using SPI */
module tt_um_tqv_peripheral_harness (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  // =========================================================================
  // Our peripheral uses: address[3:0], data_in[7:0], data_write, data_out[7:0]
  // spi_reg provides:    address[5:0], data_in[31:0], data_valid, data_out[7:0]
  // We adapt by taking only the lower bits.
  // =========================================================================
  wire [3:0] address;
  wire [7:0] data_in;
  wire [7:0] data_out;
  wire       data_valid;

  // Unused spi_reg outputs
  wire       reg_addr_v;
  wire       reg_rw;
  wire [1:0] txn_width;

  // Synchronize ui_in (MISO from external SPI slave)
  reg [7:0] ui_in_sync;
  synchronizer #(.STAGES(2), .WIDTH(8)) synchronizer_ui_in_inst (
    .clk(clk), .data_in(ui_in), .data_out(ui_in_sync)
  );

  // Register reset as in TinyQV
  /* verilator lint_off SYNCASYNCNET */
  reg rst_reg_n;
  /* verilator lint_on SYNCASYNCNET */
  always @(negedge clk) rst_reg_n <= rst_n;

  // =========================================================================
  // Peripheral instantiation
  // =========================================================================
  tqvp_spi_master user_peripheral (
    .clk        (clk),
    .rst_n      (rst_reg_n),
    .ui_in      (ui_in_sync),
    .uo_out     (uo_out),
    .address    (address),
    .data_write (data_valid),
    .data_in    (data_in),
    .data_out   (data_out)
  );

  // =========================================================================
  // SPI register interface (CPU override via uio_in[6:4])
  // =========================================================================
  wire spi_cs_n  = uio_in[4];
  wire spi_clk   = uio_in[5];
  wire spi_mosi  = uio_in[6];
  wire spi_miso;

  wire spi_cs_n_sync;
  wire spi_clk_sync;
  wire spi_mosi_sync;

  synchronizer #(.STAGES(2), .WIDTH(1)) synchronizer_spi_cs_n_inst (
    .clk(clk), .data_in(spi_cs_n), .data_out(spi_cs_n_sync)
  );
  synchronizer #(.STAGES(2), .WIDTH(1)) synchronizer_spi_clk_inst (
    .clk(clk), .data_in(spi_clk), .data_out(spi_clk_sync)
  );
  synchronizer #(.STAGES(2), .WIDTH(1)) synchronizer_spi_mosi_inst (
    .clk(clk), .data_in(spi_mosi), .data_out(spi_mosi_sync)
  );

  // spi_reg with ADDR_W=4, REG_W=8 to match our peripheral's bus width
  spi_reg #(.ADDR_W(4)) i_spi_reg (
    .clk           (clk),
    .rstb          (rst_reg_n),
    .ena           (1'b1),
    .spi_mosi      (spi_mosi_sync),
    .spi_miso      (spi_miso),
    .spi_clk       (spi_clk_sync),
    .spi_cs_n      (spi_cs_n_sync),
    .reg_addr      (address),
    .reg_data_i    (data_out),
    .reg_data_i_dv (1'b1),
    .reg_data_o    (data_in),
    .reg_data_o_dv (data_valid),
    .reg_addr_v    (reg_addr_v),
    .reg_rw        (reg_rw),
    .txn_width     (txn_width)
  );

  // =========================================================================
  // IO assignments
  // =========================================================================
  assign uio_out[3]   = spi_miso;
  assign uio_oe[3]    = 1'b1;
  assign uio_out[7:4] = 4'b0;
  assign uio_out[2:0] = 3'b0;
  assign uio_oe[7:4]  = 4'b0;
  assign uio_oe[2:0]  = 3'b0;

  wire _unused = &{ena, uio_in[7], uio_in[3:0],
                   reg_addr_v, reg_rw, txn_width, 1'b0};

endmodule
