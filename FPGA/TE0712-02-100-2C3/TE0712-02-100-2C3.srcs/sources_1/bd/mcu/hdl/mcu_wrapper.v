//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sun Aug  4 22:20:52 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target mcu_wrapper.bd
//Design      : mcu_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_wrapper
   (DDR3_SDRAM_addr,
    DDR3_SDRAM_ba,
    DDR3_SDRAM_cas_n,
    DDR3_SDRAM_ck_n,
    DDR3_SDRAM_ck_p,
    DDR3_SDRAM_cke,
    DDR3_SDRAM_cs_n,
    DDR3_SDRAM_dm,
    DDR3_SDRAM_dq,
    DDR3_SDRAM_dqs_n,
    DDR3_SDRAM_dqs_p,
    DDR3_SDRAM_odt,
    DDR3_SDRAM_ras_n,
    DDR3_SDRAM_reset_n,
    DDR3_SDRAM_we_n,
    Dbg_TDI_0_0,
    Dbg_TDO_0_0,
    gpio_rtl_0_tri_o,
    init_calib_complete,
    pll_clk_n,
    pll_clk_p,
    pwm0_lcd_bl,
    reset,
    spi_rtl_0_io0_io,
    spi_rtl_0_io1_io,
    spi_rtl_0_io2_io,
    spi_rtl_0_io3_io,
    spi_rtl_0_ss_io,
    sys_rst,
    uart_rtl_0_baudoutn,
    uart_rtl_0_ctsn,
    uart_rtl_0_dcdn,
    uart_rtl_0_ddis,
    uart_rtl_0_dsrn,
    uart_rtl_0_dtrn,
    uart_rtl_0_out1n,
    uart_rtl_0_out2n,
    uart_rtl_0_ri,
    uart_rtl_0_rtsn,
    uart_rtl_0_rxd,
    uart_rtl_0_rxrdyn,
    uart_rtl_0_txd,
    uart_rtl_0_txrdyn,
    ufb_fpga_ft_12mhz,
    ufb_fpga_ft_reset,
    ufb_trx_rxclk_n,
    ufb_trx_rxclk_p,
    ufb_trx_rxd09_n,
    ufb_trx_rxd09_p,
    ufb_trx_txclk_n,
    ufb_trx_txclk_p,
    ufb_trx_txd_n,
    ufb_trx_txd_p);
  output [14:0]DDR3_SDRAM_addr;
  output [2:0]DDR3_SDRAM_ba;
  output DDR3_SDRAM_cas_n;
  output [0:0]DDR3_SDRAM_ck_n;
  output [0:0]DDR3_SDRAM_ck_p;
  output [0:0]DDR3_SDRAM_cke;
  output [0:0]DDR3_SDRAM_cs_n;
  output [3:0]DDR3_SDRAM_dm;
  inout [31:0]DDR3_SDRAM_dq;
  inout [3:0]DDR3_SDRAM_dqs_n;
  inout [3:0]DDR3_SDRAM_dqs_p;
  output [0:0]DDR3_SDRAM_odt;
  output DDR3_SDRAM_ras_n;
  output DDR3_SDRAM_reset_n;
  output DDR3_SDRAM_we_n;
  output Dbg_TDI_0_0;
  input Dbg_TDO_0_0;
  output [7:0]gpio_rtl_0_tri_o;
  output init_calib_complete;
  input pll_clk_n;
  input pll_clk_p;
  output pwm0_lcd_bl;
  input reset;
  inout spi_rtl_0_io0_io;
  inout spi_rtl_0_io1_io;
  inout spi_rtl_0_io2_io;
  inout spi_rtl_0_io3_io;
  inout [0:0]spi_rtl_0_ss_io;
  input sys_rst;
  output uart_rtl_0_baudoutn;
  input uart_rtl_0_ctsn;
  input uart_rtl_0_dcdn;
  output uart_rtl_0_ddis;
  input uart_rtl_0_dsrn;
  output uart_rtl_0_dtrn;
  output uart_rtl_0_out1n;
  output uart_rtl_0_out2n;
  input uart_rtl_0_ri;
  output uart_rtl_0_rtsn;
  input uart_rtl_0_rxd;
  output uart_rtl_0_rxrdyn;
  output uart_rtl_0_txd;
  output uart_rtl_0_txrdyn;
  output ufb_fpga_ft_12mhz;
  output [0:0]ufb_fpga_ft_reset;
  input ufb_trx_rxclk_n;
  input ufb_trx_rxclk_p;
  input [0:0]ufb_trx_rxd09_n;
  input [0:0]ufb_trx_rxd09_p;
  output ufb_trx_txclk_n;
  output ufb_trx_txclk_p;
  output [0:0]ufb_trx_txd_n;
  output [0:0]ufb_trx_txd_p;

  wire [14:0]DDR3_SDRAM_addr;
  wire [2:0]DDR3_SDRAM_ba;
  wire DDR3_SDRAM_cas_n;
  wire [0:0]DDR3_SDRAM_ck_n;
  wire [0:0]DDR3_SDRAM_ck_p;
  wire [0:0]DDR3_SDRAM_cke;
  wire [0:0]DDR3_SDRAM_cs_n;
  wire [3:0]DDR3_SDRAM_dm;
  wire [31:0]DDR3_SDRAM_dq;
  wire [3:0]DDR3_SDRAM_dqs_n;
  wire [3:0]DDR3_SDRAM_dqs_p;
  wire [0:0]DDR3_SDRAM_odt;
  wire DDR3_SDRAM_ras_n;
  wire DDR3_SDRAM_reset_n;
  wire DDR3_SDRAM_we_n;
  wire Dbg_TDI_0_0;
  wire Dbg_TDO_0_0;
  wire [7:0]gpio_rtl_0_tri_o;
  wire init_calib_complete;
  wire pll_clk_n;
  wire pll_clk_p;
  wire pwm0_lcd_bl;
  wire reset;
  wire spi_rtl_0_io0_i;
  wire spi_rtl_0_io0_io;
  wire spi_rtl_0_io0_o;
  wire spi_rtl_0_io0_t;
  wire spi_rtl_0_io1_i;
  wire spi_rtl_0_io1_io;
  wire spi_rtl_0_io1_o;
  wire spi_rtl_0_io1_t;
  wire spi_rtl_0_io2_i;
  wire spi_rtl_0_io2_io;
  wire spi_rtl_0_io2_o;
  wire spi_rtl_0_io2_t;
  wire spi_rtl_0_io3_i;
  wire spi_rtl_0_io3_io;
  wire spi_rtl_0_io3_o;
  wire spi_rtl_0_io3_t;
  wire [0:0]spi_rtl_0_ss_i_0;
  wire [0:0]spi_rtl_0_ss_io_0;
  wire [0:0]spi_rtl_0_ss_o_0;
  wire spi_rtl_0_ss_t;
  wire sys_rst;
  wire uart_rtl_0_baudoutn;
  wire uart_rtl_0_ctsn;
  wire uart_rtl_0_dcdn;
  wire uart_rtl_0_ddis;
  wire uart_rtl_0_dsrn;
  wire uart_rtl_0_dtrn;
  wire uart_rtl_0_out1n;
  wire uart_rtl_0_out2n;
  wire uart_rtl_0_ri;
  wire uart_rtl_0_rtsn;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_rxrdyn;
  wire uart_rtl_0_txd;
  wire uart_rtl_0_txrdyn;
  wire ufb_fpga_ft_12mhz;
  wire [0:0]ufb_fpga_ft_reset;
  wire ufb_trx_rxclk_n;
  wire ufb_trx_rxclk_p;
  wire [0:0]ufb_trx_rxd09_n;
  wire [0:0]ufb_trx_rxd09_p;
  wire ufb_trx_txclk_n;
  wire ufb_trx_txclk_p;
  wire [0:0]ufb_trx_txd_n;
  wire [0:0]ufb_trx_txd_p;

  mcu mcu_i
       (.DDR3_SDRAM_addr(DDR3_SDRAM_addr),
        .DDR3_SDRAM_ba(DDR3_SDRAM_ba),
        .DDR3_SDRAM_cas_n(DDR3_SDRAM_cas_n),
        .DDR3_SDRAM_ck_n(DDR3_SDRAM_ck_n),
        .DDR3_SDRAM_ck_p(DDR3_SDRAM_ck_p),
        .DDR3_SDRAM_cke(DDR3_SDRAM_cke),
        .DDR3_SDRAM_cs_n(DDR3_SDRAM_cs_n),
        .DDR3_SDRAM_dm(DDR3_SDRAM_dm),
        .DDR3_SDRAM_dq(DDR3_SDRAM_dq),
        .DDR3_SDRAM_dqs_n(DDR3_SDRAM_dqs_n),
        .DDR3_SDRAM_dqs_p(DDR3_SDRAM_dqs_p),
        .DDR3_SDRAM_odt(DDR3_SDRAM_odt),
        .DDR3_SDRAM_ras_n(DDR3_SDRAM_ras_n),
        .DDR3_SDRAM_reset_n(DDR3_SDRAM_reset_n),
        .DDR3_SDRAM_we_n(DDR3_SDRAM_we_n),
        .Dbg_TDI_0_0(Dbg_TDI_0_0),
        .Dbg_TDO_0_0(Dbg_TDO_0_0),
        .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o),
        .init_calib_complete(init_calib_complete),
        .pll_clk_n(pll_clk_n),
        .pll_clk_p(pll_clk_p),
        .pwm0_lcd_bl(pwm0_lcd_bl),
        .reset(reset),
        .spi_rtl_0_io0_i(spi_rtl_0_io0_i),
        .spi_rtl_0_io0_o(spi_rtl_0_io0_o),
        .spi_rtl_0_io0_t(spi_rtl_0_io0_t),
        .spi_rtl_0_io1_i(spi_rtl_0_io1_i),
        .spi_rtl_0_io1_o(spi_rtl_0_io1_o),
        .spi_rtl_0_io1_t(spi_rtl_0_io1_t),
        .spi_rtl_0_io2_i(spi_rtl_0_io2_i),
        .spi_rtl_0_io2_o(spi_rtl_0_io2_o),
        .spi_rtl_0_io2_t(spi_rtl_0_io2_t),
        .spi_rtl_0_io3_i(spi_rtl_0_io3_i),
        .spi_rtl_0_io3_o(spi_rtl_0_io3_o),
        .spi_rtl_0_io3_t(spi_rtl_0_io3_t),
        .spi_rtl_0_ss_i(spi_rtl_0_ss_i_0),
        .spi_rtl_0_ss_o(spi_rtl_0_ss_o_0),
        .spi_rtl_0_ss_t(spi_rtl_0_ss_t),
        .sys_rst(sys_rst),
        .uart_rtl_0_baudoutn(uart_rtl_0_baudoutn),
        .uart_rtl_0_ctsn(uart_rtl_0_ctsn),
        .uart_rtl_0_dcdn(uart_rtl_0_dcdn),
        .uart_rtl_0_ddis(uart_rtl_0_ddis),
        .uart_rtl_0_dsrn(uart_rtl_0_dsrn),
        .uart_rtl_0_dtrn(uart_rtl_0_dtrn),
        .uart_rtl_0_out1n(uart_rtl_0_out1n),
        .uart_rtl_0_out2n(uart_rtl_0_out2n),
        .uart_rtl_0_ri(uart_rtl_0_ri),
        .uart_rtl_0_rtsn(uart_rtl_0_rtsn),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_rxrdyn(uart_rtl_0_rxrdyn),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .uart_rtl_0_txrdyn(uart_rtl_0_txrdyn),
        .ufb_fpga_ft_12mhz(ufb_fpga_ft_12mhz),
        .ufb_fpga_ft_reset(ufb_fpga_ft_reset),
        .ufb_trx_rxclk_n(ufb_trx_rxclk_n),
        .ufb_trx_rxclk_p(ufb_trx_rxclk_p),
        .ufb_trx_rxd09_n(ufb_trx_rxd09_n),
        .ufb_trx_rxd09_p(ufb_trx_rxd09_p),
        .ufb_trx_txclk_n(ufb_trx_txclk_n),
        .ufb_trx_txclk_p(ufb_trx_txclk_p),
        .ufb_trx_txd_n(ufb_trx_txd_n),
        .ufb_trx_txd_p(ufb_trx_txd_p));
  IOBUF spi_rtl_0_io0_iobuf
       (.I(spi_rtl_0_io0_o),
        .IO(spi_rtl_0_io0_io),
        .O(spi_rtl_0_io0_i),
        .T(spi_rtl_0_io0_t));
  IOBUF spi_rtl_0_io1_iobuf
       (.I(spi_rtl_0_io1_o),
        .IO(spi_rtl_0_io1_io),
        .O(spi_rtl_0_io1_i),
        .T(spi_rtl_0_io1_t));
  IOBUF spi_rtl_0_io2_iobuf
       (.I(spi_rtl_0_io2_o),
        .IO(spi_rtl_0_io2_io),
        .O(spi_rtl_0_io2_i),
        .T(spi_rtl_0_io2_t));
  IOBUF spi_rtl_0_io3_iobuf
       (.I(spi_rtl_0_io3_o),
        .IO(spi_rtl_0_io3_io),
        .O(spi_rtl_0_io3_i),
        .T(spi_rtl_0_io3_t));
  IOBUF spi_rtl_0_ss_iobuf_0
       (.I(spi_rtl_0_ss_o_0),
        .IO(spi_rtl_0_ss_io[0]),
        .O(spi_rtl_0_ss_i_0),
        .T(spi_rtl_0_ss_t));
endmodule
