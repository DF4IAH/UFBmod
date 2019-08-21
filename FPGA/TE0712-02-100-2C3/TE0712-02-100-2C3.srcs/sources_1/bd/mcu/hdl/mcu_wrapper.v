//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
//Date        : Thu Aug 22 00:00:21 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target mcu_wrapper.bd
//Design      : mcu_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_wrapper
   (board_rotenc_pulse,
    board_rotenc_push,
    board_rotenc_up,
    ddr3_init_calib_complete_obuf,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    dmr_1_onewire_a_in,
    dmr_1_onewire_d_in,
    dmr_1_onewire_we_in,
    gpio_rtl_0_multi_tri_o,
    gpio_rtl_1_onewire_gpio_in_tri_i,
    gpio_rtl_1_onewire_gpio_out_tri_o,
    iic_rtl_0_pll_scl_io,
    iic_rtl_0_pll_sda_io,
    iic_rtl_1_board_scl_io,
    iic_rtl_1_board_sda_io,
    mb_axi_clk_100mhz,
    mdio_rtl_0_ethernet_mdc,
    mdio_rtl_0_ethernet_mdio_io,
    peripheral_reset,
    pll_clk_n,
    pll_clk_p,
    pll_int,
    pwm0_lcd_bl_obuf,
    reset,
    rmii_rtl_0_ethernet_crs_dv,
    rmii_rtl_0_ethernet_rx_er,
    rmii_rtl_0_ethernet_rxd,
    rmii_rtl_0_ethernet_tx_en,
    rmii_rtl_0_ethernet_txd,
    spi_rtl_0_config_io0_io,
    spi_rtl_0_config_io1_io,
    spi_rtl_0_config_io2_io,
    spi_rtl_0_config_io3_io,
    spi_rtl_0_config_ss_io,
    spi_rtl_1_trx_io0_io,
    spi_rtl_1_trx_io1_io,
    spi_rtl_1_trx_sck_io,
    spi_rtl_1_trx_ss_io,
    sys_rst,
    trx_int,
    uart_rtl_0_ftdi_baudoutn,
    uart_rtl_0_ftdi_ctsn,
    uart_rtl_0_ftdi_dcdn,
    uart_rtl_0_ftdi_ddis,
    uart_rtl_0_ftdi_dsrn,
    uart_rtl_0_ftdi_dtrn,
    uart_rtl_0_ftdi_out1n,
    uart_rtl_0_ftdi_out2n,
    uart_rtl_0_ftdi_ri,
    uart_rtl_0_ftdi_rtsn,
    uart_rtl_0_ftdi_rxd,
    uart_rtl_0_ftdi_rxrdyn,
    uart_rtl_0_ftdi_txd,
    uart_rtl_0_ftdi_txrdyn,
    ufb_fpga_ft_12mhz_obuf,
    ufb_fpga_ft_resetn_obuf,
    ufb_trx_rxclk_n,
    ufb_trx_rxclk_p,
    ufb_trx_rxd09_n,
    ufb_trx_rxd09_p,
    ufb_trx_txclk_n,
    ufb_trx_txclk_p,
    ufb_trx_txd_n,
    ufb_trx_txd_p);
  input board_rotenc_pulse;
  input [0:0]board_rotenc_push;
  input board_rotenc_up;
  output ddr3_init_calib_complete_obuf;
  output [14:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [3:0]ddr3_sdram_dm;
  inout [31:0]ddr3_sdram_dq;
  inout [3:0]ddr3_sdram_dqs_n;
  inout [3:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input [3:0]dmr_1_onewire_a_in;
  input [31:0]dmr_1_onewire_d_in;
  input dmr_1_onewire_we_in;
  output [7:0]gpio_rtl_0_multi_tri_o;
  input [31:0]gpio_rtl_1_onewire_gpio_in_tri_i;
  output [31:0]gpio_rtl_1_onewire_gpio_out_tri_o;
  inout iic_rtl_0_pll_scl_io;
  inout iic_rtl_0_pll_sda_io;
  inout iic_rtl_1_board_scl_io;
  inout iic_rtl_1_board_sda_io;
  output mb_axi_clk_100mhz;
  output mdio_rtl_0_ethernet_mdc;
  inout mdio_rtl_0_ethernet_mdio_io;
  output [0:0]peripheral_reset;
  input pll_clk_n;
  input pll_clk_p;
  input [0:0]pll_int;
  output pwm0_lcd_bl_obuf;
  input reset;
  input rmii_rtl_0_ethernet_crs_dv;
  input rmii_rtl_0_ethernet_rx_er;
  input [1:0]rmii_rtl_0_ethernet_rxd;
  output rmii_rtl_0_ethernet_tx_en;
  output [1:0]rmii_rtl_0_ethernet_txd;
  inout spi_rtl_0_config_io0_io;
  inout spi_rtl_0_config_io1_io;
  inout spi_rtl_0_config_io2_io;
  inout spi_rtl_0_config_io3_io;
  inout [0:0]spi_rtl_0_config_ss_io;
  inout spi_rtl_1_trx_io0_io;
  inout spi_rtl_1_trx_io1_io;
  inout spi_rtl_1_trx_sck_io;
  inout [0:0]spi_rtl_1_trx_ss_io;
  input sys_rst;
  input [0:0]trx_int;
  output uart_rtl_0_ftdi_baudoutn;
  input uart_rtl_0_ftdi_ctsn;
  input uart_rtl_0_ftdi_dcdn;
  output uart_rtl_0_ftdi_ddis;
  input uart_rtl_0_ftdi_dsrn;
  output uart_rtl_0_ftdi_dtrn;
  output uart_rtl_0_ftdi_out1n;
  output uart_rtl_0_ftdi_out2n;
  input uart_rtl_0_ftdi_ri;
  output uart_rtl_0_ftdi_rtsn;
  input uart_rtl_0_ftdi_rxd;
  output uart_rtl_0_ftdi_rxrdyn;
  output uart_rtl_0_ftdi_txd;
  output uart_rtl_0_ftdi_txrdyn;
  output ufb_fpga_ft_12mhz_obuf;
  output [0:0]ufb_fpga_ft_resetn_obuf;
  input ufb_trx_rxclk_n;
  input ufb_trx_rxclk_p;
  input [0:0]ufb_trx_rxd09_n;
  input [0:0]ufb_trx_rxd09_p;
  output ufb_trx_txclk_n;
  output ufb_trx_txclk_p;
  output [0:0]ufb_trx_txd_n;
  output [0:0]ufb_trx_txd_p;

  wire board_rotenc_pulse;
  wire [0:0]board_rotenc_push;
  wire board_rotenc_up;
  wire ddr3_init_calib_complete_obuf;
  wire [14:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [3:0]ddr3_sdram_dm;
  wire [31:0]ddr3_sdram_dq;
  wire [3:0]ddr3_sdram_dqs_n;
  wire [3:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire [3:0]dmr_1_onewire_a_in;
  wire [31:0]dmr_1_onewire_d_in;
  wire dmr_1_onewire_we_in;
  wire [7:0]gpio_rtl_0_multi_tri_o;
  wire [31:0]gpio_rtl_1_onewire_gpio_in_tri_i;
  wire [31:0]gpio_rtl_1_onewire_gpio_out_tri_o;
  wire iic_rtl_0_pll_scl_i;
  wire iic_rtl_0_pll_scl_io;
  wire iic_rtl_0_pll_scl_o;
  wire iic_rtl_0_pll_scl_t;
  wire iic_rtl_0_pll_sda_i;
  wire iic_rtl_0_pll_sda_io;
  wire iic_rtl_0_pll_sda_o;
  wire iic_rtl_0_pll_sda_t;
  wire iic_rtl_1_board_scl_i;
  wire iic_rtl_1_board_scl_io;
  wire iic_rtl_1_board_scl_o;
  wire iic_rtl_1_board_scl_t;
  wire iic_rtl_1_board_sda_i;
  wire iic_rtl_1_board_sda_io;
  wire iic_rtl_1_board_sda_o;
  wire iic_rtl_1_board_sda_t;
  wire mb_axi_clk_100mhz;
  wire mdio_rtl_0_ethernet_mdc;
  wire mdio_rtl_0_ethernet_mdio_i;
  wire mdio_rtl_0_ethernet_mdio_io;
  wire mdio_rtl_0_ethernet_mdio_o;
  wire mdio_rtl_0_ethernet_mdio_t;
  wire [0:0]peripheral_reset;
  wire pll_clk_n;
  wire pll_clk_p;
  wire [0:0]pll_int;
  wire pwm0_lcd_bl_obuf;
  wire reset;
  wire rmii_rtl_0_ethernet_crs_dv;
  wire rmii_rtl_0_ethernet_rx_er;
  wire [1:0]rmii_rtl_0_ethernet_rxd;
  wire rmii_rtl_0_ethernet_tx_en;
  wire [1:0]rmii_rtl_0_ethernet_txd;
  wire spi_rtl_0_config_io0_i;
  wire spi_rtl_0_config_io0_io;
  wire spi_rtl_0_config_io0_o;
  wire spi_rtl_0_config_io0_t;
  wire spi_rtl_0_config_io1_i;
  wire spi_rtl_0_config_io1_io;
  wire spi_rtl_0_config_io1_o;
  wire spi_rtl_0_config_io1_t;
  wire spi_rtl_0_config_io2_i;
  wire spi_rtl_0_config_io2_io;
  wire spi_rtl_0_config_io2_o;
  wire spi_rtl_0_config_io2_t;
  wire spi_rtl_0_config_io3_i;
  wire spi_rtl_0_config_io3_io;
  wire spi_rtl_0_config_io3_o;
  wire spi_rtl_0_config_io3_t;
  wire [0:0]spi_rtl_0_config_ss_i_0;
  wire [0:0]spi_rtl_0_config_ss_io_0;
  wire [0:0]spi_rtl_0_config_ss_o_0;
  wire spi_rtl_0_config_ss_t;
  wire spi_rtl_1_trx_io0_i;
  wire spi_rtl_1_trx_io0_io;
  wire spi_rtl_1_trx_io0_o;
  wire spi_rtl_1_trx_io0_t;
  wire spi_rtl_1_trx_io1_i;
  wire spi_rtl_1_trx_io1_io;
  wire spi_rtl_1_trx_io1_o;
  wire spi_rtl_1_trx_io1_t;
  wire spi_rtl_1_trx_sck_i;
  wire spi_rtl_1_trx_sck_io;
  wire spi_rtl_1_trx_sck_o;
  wire spi_rtl_1_trx_sck_t;
  wire [0:0]spi_rtl_1_trx_ss_i_0;
  wire [0:0]spi_rtl_1_trx_ss_io_0;
  wire [0:0]spi_rtl_1_trx_ss_o_0;
  wire spi_rtl_1_trx_ss_t;
  wire sys_rst;
  wire [0:0]trx_int;
  wire uart_rtl_0_ftdi_baudoutn;
  wire uart_rtl_0_ftdi_ctsn;
  wire uart_rtl_0_ftdi_dcdn;
  wire uart_rtl_0_ftdi_ddis;
  wire uart_rtl_0_ftdi_dsrn;
  wire uart_rtl_0_ftdi_dtrn;
  wire uart_rtl_0_ftdi_out1n;
  wire uart_rtl_0_ftdi_out2n;
  wire uart_rtl_0_ftdi_ri;
  wire uart_rtl_0_ftdi_rtsn;
  wire uart_rtl_0_ftdi_rxd;
  wire uart_rtl_0_ftdi_rxrdyn;
  wire uart_rtl_0_ftdi_txd;
  wire uart_rtl_0_ftdi_txrdyn;
  wire ufb_fpga_ft_12mhz_obuf;
  wire [0:0]ufb_fpga_ft_resetn_obuf;
  wire ufb_trx_rxclk_n;
  wire ufb_trx_rxclk_p;
  wire [0:0]ufb_trx_rxd09_n;
  wire [0:0]ufb_trx_rxd09_p;
  wire ufb_trx_txclk_n;
  wire ufb_trx_txclk_p;
  wire [0:0]ufb_trx_txd_n;
  wire [0:0]ufb_trx_txd_p;

  IOBUF iic_rtl_0_pll_scl_iobuf
       (.I(iic_rtl_0_pll_scl_o),
        .IO(iic_rtl_0_pll_scl_io),
        .O(iic_rtl_0_pll_scl_i),
        .T(iic_rtl_0_pll_scl_t));
  IOBUF iic_rtl_0_pll_sda_iobuf
       (.I(iic_rtl_0_pll_sda_o),
        .IO(iic_rtl_0_pll_sda_io),
        .O(iic_rtl_0_pll_sda_i),
        .T(iic_rtl_0_pll_sda_t));
  IOBUF iic_rtl_1_board_scl_iobuf
       (.I(iic_rtl_1_board_scl_o),
        .IO(iic_rtl_1_board_scl_io),
        .O(iic_rtl_1_board_scl_i),
        .T(iic_rtl_1_board_scl_t));
  IOBUF iic_rtl_1_board_sda_iobuf
       (.I(iic_rtl_1_board_sda_o),
        .IO(iic_rtl_1_board_sda_io),
        .O(iic_rtl_1_board_sda_i),
        .T(iic_rtl_1_board_sda_t));
  mcu mcu_i
       (.board_rotenc_pulse(board_rotenc_pulse),
        .board_rotenc_push(board_rotenc_push),
        .board_rotenc_up(board_rotenc_up),
        .ddr3_init_calib_complete_obuf(ddr3_init_calib_complete_obuf),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .dmr_1_onewire_a_in(dmr_1_onewire_a_in),
        .dmr_1_onewire_d_in(dmr_1_onewire_d_in),
        .dmr_1_onewire_we_in(dmr_1_onewire_we_in),
        .gpio_rtl_0_multi_tri_o(gpio_rtl_0_multi_tri_o),
        .gpio_rtl_1_onewire_gpio_in_tri_i(gpio_rtl_1_onewire_gpio_in_tri_i),
        .gpio_rtl_1_onewire_gpio_out_tri_o(gpio_rtl_1_onewire_gpio_out_tri_o),
        .iic_rtl_0_pll_scl_i(iic_rtl_0_pll_scl_i),
        .iic_rtl_0_pll_scl_o(iic_rtl_0_pll_scl_o),
        .iic_rtl_0_pll_scl_t(iic_rtl_0_pll_scl_t),
        .iic_rtl_0_pll_sda_i(iic_rtl_0_pll_sda_i),
        .iic_rtl_0_pll_sda_o(iic_rtl_0_pll_sda_o),
        .iic_rtl_0_pll_sda_t(iic_rtl_0_pll_sda_t),
        .iic_rtl_1_board_scl_i(iic_rtl_1_board_scl_i),
        .iic_rtl_1_board_scl_o(iic_rtl_1_board_scl_o),
        .iic_rtl_1_board_scl_t(iic_rtl_1_board_scl_t),
        .iic_rtl_1_board_sda_i(iic_rtl_1_board_sda_i),
        .iic_rtl_1_board_sda_o(iic_rtl_1_board_sda_o),
        .iic_rtl_1_board_sda_t(iic_rtl_1_board_sda_t),
        .mb_axi_clk_100mhz(mb_axi_clk_100mhz),
        .mdio_rtl_0_ethernet_mdc(mdio_rtl_0_ethernet_mdc),
        .mdio_rtl_0_ethernet_mdio_i(mdio_rtl_0_ethernet_mdio_i),
        .mdio_rtl_0_ethernet_mdio_o(mdio_rtl_0_ethernet_mdio_o),
        .mdio_rtl_0_ethernet_mdio_t(mdio_rtl_0_ethernet_mdio_t),
        .peripheral_reset(peripheral_reset),
        .pll_clk_n(pll_clk_n),
        .pll_clk_p(pll_clk_p),
        .pll_int(pll_int),
        .pwm0_lcd_bl_obuf(pwm0_lcd_bl_obuf),
        .reset(reset),
        .rmii_rtl_0_ethernet_crs_dv(rmii_rtl_0_ethernet_crs_dv),
        .rmii_rtl_0_ethernet_rx_er(rmii_rtl_0_ethernet_rx_er),
        .rmii_rtl_0_ethernet_rxd(rmii_rtl_0_ethernet_rxd),
        .rmii_rtl_0_ethernet_tx_en(rmii_rtl_0_ethernet_tx_en),
        .rmii_rtl_0_ethernet_txd(rmii_rtl_0_ethernet_txd),
        .spi_rtl_0_config_io0_i(spi_rtl_0_config_io0_i),
        .spi_rtl_0_config_io0_o(spi_rtl_0_config_io0_o),
        .spi_rtl_0_config_io0_t(spi_rtl_0_config_io0_t),
        .spi_rtl_0_config_io1_i(spi_rtl_0_config_io1_i),
        .spi_rtl_0_config_io1_o(spi_rtl_0_config_io1_o),
        .spi_rtl_0_config_io1_t(spi_rtl_0_config_io1_t),
        .spi_rtl_0_config_io2_i(spi_rtl_0_config_io2_i),
        .spi_rtl_0_config_io2_o(spi_rtl_0_config_io2_o),
        .spi_rtl_0_config_io2_t(spi_rtl_0_config_io2_t),
        .spi_rtl_0_config_io3_i(spi_rtl_0_config_io3_i),
        .spi_rtl_0_config_io3_o(spi_rtl_0_config_io3_o),
        .spi_rtl_0_config_io3_t(spi_rtl_0_config_io3_t),
        .spi_rtl_0_config_ss_i(spi_rtl_0_config_ss_i_0),
        .spi_rtl_0_config_ss_o(spi_rtl_0_config_ss_o_0),
        .spi_rtl_0_config_ss_t(spi_rtl_0_config_ss_t),
        .spi_rtl_1_trx_io0_i(spi_rtl_1_trx_io0_i),
        .spi_rtl_1_trx_io0_o(spi_rtl_1_trx_io0_o),
        .spi_rtl_1_trx_io0_t(spi_rtl_1_trx_io0_t),
        .spi_rtl_1_trx_io1_i(spi_rtl_1_trx_io1_i),
        .spi_rtl_1_trx_io1_o(spi_rtl_1_trx_io1_o),
        .spi_rtl_1_trx_io1_t(spi_rtl_1_trx_io1_t),
        .spi_rtl_1_trx_sck_i(spi_rtl_1_trx_sck_i),
        .spi_rtl_1_trx_sck_o(spi_rtl_1_trx_sck_o),
        .spi_rtl_1_trx_sck_t(spi_rtl_1_trx_sck_t),
        .spi_rtl_1_trx_ss_i(spi_rtl_1_trx_ss_i_0),
        .spi_rtl_1_trx_ss_o(spi_rtl_1_trx_ss_o_0),
        .spi_rtl_1_trx_ss_t(spi_rtl_1_trx_ss_t),
        .sys_rst(sys_rst),
        .trx_int(trx_int),
        .uart_rtl_0_ftdi_baudoutn(uart_rtl_0_ftdi_baudoutn),
        .uart_rtl_0_ftdi_ctsn(uart_rtl_0_ftdi_ctsn),
        .uart_rtl_0_ftdi_dcdn(uart_rtl_0_ftdi_dcdn),
        .uart_rtl_0_ftdi_ddis(uart_rtl_0_ftdi_ddis),
        .uart_rtl_0_ftdi_dsrn(uart_rtl_0_ftdi_dsrn),
        .uart_rtl_0_ftdi_dtrn(uart_rtl_0_ftdi_dtrn),
        .uart_rtl_0_ftdi_out1n(uart_rtl_0_ftdi_out1n),
        .uart_rtl_0_ftdi_out2n(uart_rtl_0_ftdi_out2n),
        .uart_rtl_0_ftdi_ri(uart_rtl_0_ftdi_ri),
        .uart_rtl_0_ftdi_rtsn(uart_rtl_0_ftdi_rtsn),
        .uart_rtl_0_ftdi_rxd(uart_rtl_0_ftdi_rxd),
        .uart_rtl_0_ftdi_rxrdyn(uart_rtl_0_ftdi_rxrdyn),
        .uart_rtl_0_ftdi_txd(uart_rtl_0_ftdi_txd),
        .uart_rtl_0_ftdi_txrdyn(uart_rtl_0_ftdi_txrdyn),
        .ufb_fpga_ft_12mhz_obuf(ufb_fpga_ft_12mhz_obuf),
        .ufb_fpga_ft_resetn_obuf(ufb_fpga_ft_resetn_obuf),
        .ufb_trx_rxclk_n(ufb_trx_rxclk_n),
        .ufb_trx_rxclk_p(ufb_trx_rxclk_p),
        .ufb_trx_rxd09_n(ufb_trx_rxd09_n),
        .ufb_trx_rxd09_p(ufb_trx_rxd09_p),
        .ufb_trx_txclk_n(ufb_trx_txclk_n),
        .ufb_trx_txclk_p(ufb_trx_txclk_p),
        .ufb_trx_txd_n(ufb_trx_txd_n),
        .ufb_trx_txd_p(ufb_trx_txd_p));
  IOBUF mdio_rtl_0_ethernet_mdio_iobuf
       (.I(mdio_rtl_0_ethernet_mdio_o),
        .IO(mdio_rtl_0_ethernet_mdio_io),
        .O(mdio_rtl_0_ethernet_mdio_i),
        .T(mdio_rtl_0_ethernet_mdio_t));
  IOBUF spi_rtl_0_config_io0_iobuf
       (.I(spi_rtl_0_config_io0_o),
        .IO(spi_rtl_0_config_io0_io),
        .O(spi_rtl_0_config_io0_i),
        .T(spi_rtl_0_config_io0_t));
  IOBUF spi_rtl_0_config_io1_iobuf
       (.I(spi_rtl_0_config_io1_o),
        .IO(spi_rtl_0_config_io1_io),
        .O(spi_rtl_0_config_io1_i),
        .T(spi_rtl_0_config_io1_t));
  IOBUF spi_rtl_0_config_io2_iobuf
       (.I(spi_rtl_0_config_io2_o),
        .IO(spi_rtl_0_config_io2_io),
        .O(spi_rtl_0_config_io2_i),
        .T(spi_rtl_0_config_io2_t));
  IOBUF spi_rtl_0_config_io3_iobuf
       (.I(spi_rtl_0_config_io3_o),
        .IO(spi_rtl_0_config_io3_io),
        .O(spi_rtl_0_config_io3_i),
        .T(spi_rtl_0_config_io3_t));
  IOBUF spi_rtl_0_config_ss_iobuf_0
       (.I(spi_rtl_0_config_ss_o_0),
        .IO(spi_rtl_0_config_ss_io[0]),
        .O(spi_rtl_0_config_ss_i_0),
        .T(spi_rtl_0_config_ss_t));
  IOBUF spi_rtl_1_trx_io0_iobuf
       (.I(spi_rtl_1_trx_io0_o),
        .IO(spi_rtl_1_trx_io0_io),
        .O(spi_rtl_1_trx_io0_i),
        .T(spi_rtl_1_trx_io0_t));
  IOBUF spi_rtl_1_trx_io1_iobuf
       (.I(spi_rtl_1_trx_io1_o),
        .IO(spi_rtl_1_trx_io1_io),
        .O(spi_rtl_1_trx_io1_i),
        .T(spi_rtl_1_trx_io1_t));
  IOBUF spi_rtl_1_trx_sck_iobuf
       (.I(spi_rtl_1_trx_sck_o),
        .IO(spi_rtl_1_trx_sck_io),
        .O(spi_rtl_1_trx_sck_i),
        .T(spi_rtl_1_trx_sck_t));
  IOBUF spi_rtl_1_trx_ss_iobuf_0
       (.I(spi_rtl_1_trx_ss_o_0),
        .IO(spi_rtl_1_trx_ss_io[0]),
        .O(spi_rtl_1_trx_ss_i_0),
        .T(spi_rtl_1_trx_ss_t));
endmodule
