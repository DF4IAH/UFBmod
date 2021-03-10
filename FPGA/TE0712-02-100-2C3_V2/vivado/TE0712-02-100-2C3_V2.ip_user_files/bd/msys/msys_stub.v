// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Wed Mar 10 10:33:47 2021
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/msys_stub.v
// Design      : msys
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module msys(BOARD_IIC_scl_i, BOARD_IIC_scl_o, 
  BOARD_IIC_scl_t, BOARD_IIC_sda_i, BOARD_IIC_sda_o, BOARD_IIC_sda_t, BOARD_ROTENC_PUSH, 
  CLK0_clk_n, CLK0_clk_p, CLK1B_clk, CLK2_mgt_clk0_clk_n, CLK2_mgt_clk0_clk_p, 
  CLK3_sys_diff_clk_n, CLK3_sys_diff_clk_p, DDR3_SDRAM_addr, DDR3_SDRAM_ba, 
  DDR3_SDRAM_cas_n, DDR3_SDRAM_ck_n, DDR3_SDRAM_ck_p, DDR3_SDRAM_cke, DDR3_SDRAM_cs_n, 
  DDR3_SDRAM_dm, DDR3_SDRAM_dq, DDR3_SDRAM_dqs_n, DDR3_SDRAM_dqs_p, DDR3_SDRAM_odt, 
  DDR3_SDRAM_ras_n, DDR3_SDRAM_reset_n, DDR3_SDRAM_we_n, DDR3_init_calib_complete, 
  ETH0_DA_G, ETH0_DA_Y, ETH0_LINK_LED_g, ETH0_MDIO_MDC_mdc, ETH0_MDIO_MDC_mdio_i, 
  ETH0_MDIO_MDC_mdio_o, ETH0_MDIO_MDC_mdio_t, EUI48_FSM_run, EUI48_FSM_start, EUI48_data, 
  LCD_BL, LCD_rstn, LED_RGB_blue, LED_RGB_green, LED_RGB_red, LVDS_mrk09ok, LVDS_mrk24ok, 
  LVDS_rx09_synced, LVDS_rx24_synced, PLL_I2C_ext_scl_o, PLL_I2C_ext_sda, PLL_int, 
  RMII_PHY_M_0_crs_dv, RMII_PHY_M_0_rxd, RMII_PHY_M_0_tx_en, RMII_PHY_M_0_txd, 
  SCOPE_FSM_FIFO_RdEmpty, SCOPE_FSM_FIFO_RdEn, SCOPE_FSM_FIFO_RdValid, 
  SCOPE_FSM_FIFO_Rst, SCOPE_FSM_FIFO_WrEn, SCOPE_FSM_FIFO_WrFull, 
  SCOPE_FSM_FIFO_rd_rst_busy, SCOPE_FSM_FIFO_wr_rst_busy, SCOPE_FSM_GPIO0_Out, 
  SCOPE_FSM_GPIO1_In, SCOPE_FSM_Timebase_CE, SCOPE_FSM_TrigSrc, TRX_CONFIG_GPIO1_o, 
  TRX_CONFIG_GPIO2_i, TRX_CONFIG_SPI_io0_i, TRX_CONFIG_SPI_io0_o, TRX_CONFIG_SPI_io0_t, 
  TRX_CONFIG_SPI_io1_i, TRX_CONFIG_SPI_io1_o, TRX_CONFIG_SPI_io1_t, TRX_CONFIG_SPI_sck_i, 
  TRX_CONFIG_SPI_sck_o, TRX_CONFIG_SPI_sck_t, TRX_CONFIG_SPI_ss_i, TRX_CONFIG_SPI_ss_o, 
  TRX_CONFIG_SPI_ss_t, TRX_LVDS_tx09_fifo_din, TRX_RX_PUSHDATA_GPIO1_i, 
  TRX_RX_PUSHDATA_GPIO2_o, TRX_TX_DDSAMPL_GPIO1_o, TRX_TX_DDSAMPL_GPIO2_o, 
  TRX_TX_DDS_GPIO1_i, TRX_TX_DDS_GPIO1_o, TRX_TX_DDS_GPIO2_o, 
  TRX_TX_RF09_PULLDATA_FIFO_empty, TRX_clk_trx_26MHz_vio, TRX_clk_trx_pll_25MHz_vio, 
  TRX_decoder_rx09_ch00_squelch_lvl, TRX_int, TRX_rx09_32bits_CD100, 
  TRX_rx24_32bits_CD100, TRX_rx_clkdiv_16MHz_in, TRX_rx_rd_data_count, 
  TRX_tx_DDS0_gpio_ampt, TRX_tx_DDS0_gpio_inc, TRX_tx_DDS1_gpio_ampt, TRX_tx_data_count, 
  TRX_tx_im, TRX_tx_re, UART0EXT_CTSn, UART0EXT_DCDn, UART0EXT_DSRn, UART0EXT_DTRn, 
  UART0EXT_RIn, UART0EXT_RTSn, UART0_clk, UART0_rst_n, UART0_rxd, UART0_txd, 
  USER_dbg_00_signal, USER_dbg_01_signal, USER_dbg_02_signal, USER_dbg_03_signal, 
  USER_dbg_04_signal, USER_dbg_05_signal, USER_dbg_06_signal, USER_dbg_07_signal, 
  USER_dbg_08_signal, USER_dbg_09_signal, USER_dbg_10_signal, USER_dbg_11_signal, 
  USER_dbg_12_signal, USER_dbg_13_signal, dds_tx09_inc, dds_tx09_ptt, 
  decoder_rx09_ch00_center_pos, decoder_rx09_ch00_noise, decoder_rx09_ch00_strength, 
  decoder_rx09_ch01_center_pos, decoder_rx09_ch01_noise, decoder_rx09_ch01_strength, 
  decoder_rx09_ch02_center_pos, decoder_rx09_ch02_noise, decoder_rx09_ch02_strength, 
  decoder_rx09_ch03_center_pos, decoder_rx09_ch03_noise, decoder_rx09_ch03_strength, 
  decoder_rx09_ch04_center_pos, decoder_rx09_ch04_noise, decoder_rx09_ch04_strength, 
  decoder_rx09_ch05_center_pos, decoder_rx09_ch05_noise, decoder_rx09_ch05_strength, 
  decoder_rx09_ch06_center_pos, decoder_rx09_ch06_noise, decoder_rx09_ch06_strength, 
  decoder_rx09_ch07_center_pos, decoder_rx09_ch07_noise, decoder_rx09_ch07_strength, 
  decoder_rx09_chXX_active, decoder_rx09_chXX_sql_open, microblaze_0_Clk_100MHz, 
  mig_7series_0_mmcm_locked, mig_7series_0_ui_addn_clk_0_200MHz, phy_rst_n, 
  qspi_flash_io0_i, qspi_flash_io0_o, qspi_flash_io0_t, qspi_flash_io1_i, qspi_flash_io1_o, 
  qspi_flash_io1_t, qspi_flash_io2_i, qspi_flash_io2_o, qspi_flash_io2_t, qspi_flash_io3_i, 
  qspi_flash_io3_o, qspi_flash_io3_t, qspi_flash_ss_i, qspi_flash_ss_o, qspi_flash_ss_t, 
  reset, rotenc_dec_cnt_en, rotenc_dec_cnt_up_dwn, 
  rst_mig_7series_0_100M_peripheral_aresetn, rst_mig_7series_0_100M_peripheral_reset)
/* synthesis syn_black_box black_box_pad_pin="BOARD_IIC_scl_i,BOARD_IIC_scl_o,BOARD_IIC_scl_t,BOARD_IIC_sda_i,BOARD_IIC_sda_o,BOARD_IIC_sda_t,BOARD_ROTENC_PUSH,CLK0_clk_n[0:0],CLK0_clk_p[0:0],CLK1B_clk[0:0],CLK2_mgt_clk0_clk_n,CLK2_mgt_clk0_clk_p,CLK3_sys_diff_clk_n,CLK3_sys_diff_clk_p,DDR3_SDRAM_addr[14:0],DDR3_SDRAM_ba[2:0],DDR3_SDRAM_cas_n,DDR3_SDRAM_ck_n[0:0],DDR3_SDRAM_ck_p[0:0],DDR3_SDRAM_cke[0:0],DDR3_SDRAM_cs_n[0:0],DDR3_SDRAM_dm[3:0],DDR3_SDRAM_dq[31:0],DDR3_SDRAM_dqs_n[3:0],DDR3_SDRAM_dqs_p[3:0],DDR3_SDRAM_odt[0:0],DDR3_SDRAM_ras_n,DDR3_SDRAM_reset_n,DDR3_SDRAM_we_n,DDR3_init_calib_complete,ETH0_DA_G[0:0],ETH0_DA_Y[0:0],ETH0_LINK_LED_g,ETH0_MDIO_MDC_mdc,ETH0_MDIO_MDC_mdio_i,ETH0_MDIO_MDC_mdio_o,ETH0_MDIO_MDC_mdio_t,EUI48_FSM_run,EUI48_FSM_start[0:0],EUI48_data[47:0],LCD_BL[0:0],LCD_rstn[0:0],LED_RGB_blue[0:0],LED_RGB_green[0:0],LED_RGB_red[0:0],LVDS_mrk09ok,LVDS_mrk24ok,LVDS_rx09_synced,LVDS_rx24_synced,PLL_I2C_ext_scl_o,PLL_I2C_ext_sda,PLL_int,RMII_PHY_M_0_crs_dv,RMII_PHY_M_0_rxd[1:0],RMII_PHY_M_0_tx_en,RMII_PHY_M_0_txd[1:0],SCOPE_FSM_FIFO_RdEmpty,SCOPE_FSM_FIFO_RdEn,SCOPE_FSM_FIFO_RdValid,SCOPE_FSM_FIFO_Rst,SCOPE_FSM_FIFO_WrEn,SCOPE_FSM_FIFO_WrFull,SCOPE_FSM_FIFO_rd_rst_busy,SCOPE_FSM_FIFO_wr_rst_busy,SCOPE_FSM_GPIO0_Out[31:0],SCOPE_FSM_GPIO1_In[31:0],SCOPE_FSM_Timebase_CE,SCOPE_FSM_TrigSrc[47:0],TRX_CONFIG_GPIO1_o[31:0],TRX_CONFIG_GPIO2_i[31:0],TRX_CONFIG_SPI_io0_i,TRX_CONFIG_SPI_io0_o,TRX_CONFIG_SPI_io0_t,TRX_CONFIG_SPI_io1_i,TRX_CONFIG_SPI_io1_o,TRX_CONFIG_SPI_io1_t,TRX_CONFIG_SPI_sck_i,TRX_CONFIG_SPI_sck_o,TRX_CONFIG_SPI_sck_t,TRX_CONFIG_SPI_ss_i[0:0],TRX_CONFIG_SPI_ss_o[0:0],TRX_CONFIG_SPI_ss_t,TRX_LVDS_tx09_fifo_din[31:0],TRX_RX_PUSHDATA_GPIO1_i[31:0],TRX_RX_PUSHDATA_GPIO2_o[31:0],TRX_TX_DDSAMPL_GPIO1_o[15:0],TRX_TX_DDSAMPL_GPIO2_o[15:0],TRX_TX_DDS_GPIO1_i[31:0],TRX_TX_DDS_GPIO1_o[31:0],TRX_TX_DDS_GPIO2_o[31:0],TRX_TX_RF09_PULLDATA_FIFO_empty,TRX_clk_trx_26MHz_vio,TRX_clk_trx_pll_25MHz_vio,TRX_decoder_rx09_ch00_squelch_lvl[15:0],TRX_int,TRX_rx09_32bits_CD100[31:0],TRX_rx24_32bits_CD100[31:0],TRX_rx_clkdiv_16MHz_in,TRX_rx_rd_data_count[3:0],TRX_tx_DDS0_gpio_ampt[15:0],TRX_tx_DDS0_gpio_inc[31:0],TRX_tx_DDS1_gpio_ampt[15:0],TRX_tx_data_count[11:0],TRX_tx_im[12:0],TRX_tx_re[12:0],UART0EXT_CTSn[0:0],UART0EXT_DCDn[0:0],UART0EXT_DSRn[0:0],UART0EXT_DTRn,UART0EXT_RIn[0:0],UART0EXT_RTSn,UART0_clk,UART0_rst_n[0:0],UART0_rxd,UART0_txd,USER_dbg_00_signal[0:0],USER_dbg_01_signal[0:0],USER_dbg_02_signal[0:0],USER_dbg_03_signal[0:0],USER_dbg_04_signal[0:0],USER_dbg_05_signal[0:0],USER_dbg_06_signal[0:0],USER_dbg_07_signal[0:0],USER_dbg_08_signal[0:0],USER_dbg_09_signal[0:0],USER_dbg_10_signal[0:0],USER_dbg_11_signal[0:0],USER_dbg_12_signal[0:0],USER_dbg_13_signal[0:0],dds_tx09_inc[25:0],dds_tx09_ptt,decoder_rx09_ch00_center_pos[7:0],decoder_rx09_ch00_noise[18:0],decoder_rx09_ch00_strength[18:0],decoder_rx09_ch01_center_pos[7:0],decoder_rx09_ch01_noise[18:0],decoder_rx09_ch01_strength[18:0],decoder_rx09_ch02_center_pos[7:0],decoder_rx09_ch02_noise[18:0],decoder_rx09_ch02_strength[18:0],decoder_rx09_ch03_center_pos[7:0],decoder_rx09_ch03_noise[18:0],decoder_rx09_ch03_strength[18:0],decoder_rx09_ch04_center_pos[7:0],decoder_rx09_ch04_noise[18:0],decoder_rx09_ch04_strength[18:0],decoder_rx09_ch05_center_pos[7:0],decoder_rx09_ch05_noise[18:0],decoder_rx09_ch05_strength[18:0],decoder_rx09_ch06_center_pos[7:0],decoder_rx09_ch06_noise[18:0],decoder_rx09_ch06_strength[18:0],decoder_rx09_ch07_center_pos[7:0],decoder_rx09_ch07_noise[18:0],decoder_rx09_ch07_strength[18:0],decoder_rx09_chXX_active[7:0],decoder_rx09_chXX_sql_open[7:0],microblaze_0_Clk_100MHz,mig_7series_0_mmcm_locked,mig_7series_0_ui_addn_clk_0_200MHz,phy_rst_n,qspi_flash_io0_i,qspi_flash_io0_o,qspi_flash_io0_t,qspi_flash_io1_i,qspi_flash_io1_o,qspi_flash_io1_t,qspi_flash_io2_i,qspi_flash_io2_o,qspi_flash_io2_t,qspi_flash_io3_i,qspi_flash_io3_o,qspi_flash_io3_t,qspi_flash_ss_i,qspi_flash_ss_o,qspi_flash_ss_t,reset,rotenc_dec_cnt_en,rotenc_dec_cnt_up_dwn,rst_mig_7series_0_100M_peripheral_aresetn[0:0],rst_mig_7series_0_100M_peripheral_reset[0:0]" */;
  input BOARD_IIC_scl_i;
  output BOARD_IIC_scl_o;
  output BOARD_IIC_scl_t;
  input BOARD_IIC_sda_i;
  output BOARD_IIC_sda_o;
  output BOARD_IIC_sda_t;
  input BOARD_ROTENC_PUSH;
  input [0:0]CLK0_clk_n;
  input [0:0]CLK0_clk_p;
  input [0:0]CLK1B_clk;
  input CLK2_mgt_clk0_clk_n;
  input CLK2_mgt_clk0_clk_p;
  input CLK3_sys_diff_clk_n;
  input CLK3_sys_diff_clk_p;
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
  output DDR3_init_calib_complete;
  output [0:0]ETH0_DA_G;
  output [0:0]ETH0_DA_Y;
  input ETH0_LINK_LED_g;
  output ETH0_MDIO_MDC_mdc;
  input ETH0_MDIO_MDC_mdio_i;
  output ETH0_MDIO_MDC_mdio_o;
  output ETH0_MDIO_MDC_mdio_t;
  input EUI48_FSM_run;
  output [0:0]EUI48_FSM_start;
  input [47:0]EUI48_data;
  output [0:0]LCD_BL;
  output [0:0]LCD_rstn;
  output [0:0]LED_RGB_blue;
  output [0:0]LED_RGB_green;
  output [0:0]LED_RGB_red;
  input LVDS_mrk09ok;
  input LVDS_mrk24ok;
  input LVDS_rx09_synced;
  input LVDS_rx24_synced;
  output PLL_I2C_ext_scl_o;
  inout PLL_I2C_ext_sda;
  input PLL_int;
  input RMII_PHY_M_0_crs_dv;
  input [1:0]RMII_PHY_M_0_rxd;
  output RMII_PHY_M_0_tx_en;
  output [1:0]RMII_PHY_M_0_txd;
  output SCOPE_FSM_FIFO_RdEmpty;
  input SCOPE_FSM_FIFO_RdEn;
  output SCOPE_FSM_FIFO_RdValid;
  input SCOPE_FSM_FIFO_Rst;
  input SCOPE_FSM_FIFO_WrEn;
  output SCOPE_FSM_FIFO_WrFull;
  output SCOPE_FSM_FIFO_rd_rst_busy;
  output SCOPE_FSM_FIFO_wr_rst_busy;
  output [31:0]SCOPE_FSM_GPIO0_Out;
  input [31:0]SCOPE_FSM_GPIO1_In;
  input SCOPE_FSM_Timebase_CE;
  output [47:0]SCOPE_FSM_TrigSrc;
  output [31:0]TRX_CONFIG_GPIO1_o;
  input [31:0]TRX_CONFIG_GPIO2_i;
  input TRX_CONFIG_SPI_io0_i;
  output TRX_CONFIG_SPI_io0_o;
  output TRX_CONFIG_SPI_io0_t;
  input TRX_CONFIG_SPI_io1_i;
  output TRX_CONFIG_SPI_io1_o;
  output TRX_CONFIG_SPI_io1_t;
  input TRX_CONFIG_SPI_sck_i;
  output TRX_CONFIG_SPI_sck_o;
  output TRX_CONFIG_SPI_sck_t;
  input [0:0]TRX_CONFIG_SPI_ss_i;
  output [0:0]TRX_CONFIG_SPI_ss_o;
  output TRX_CONFIG_SPI_ss_t;
  input [31:0]TRX_LVDS_tx09_fifo_din;
  input [31:0]TRX_RX_PUSHDATA_GPIO1_i;
  output [31:0]TRX_RX_PUSHDATA_GPIO2_o;
  output [15:0]TRX_TX_DDSAMPL_GPIO1_o;
  output [15:0]TRX_TX_DDSAMPL_GPIO2_o;
  input [31:0]TRX_TX_DDS_GPIO1_i;
  output [31:0]TRX_TX_DDS_GPIO1_o;
  output [31:0]TRX_TX_DDS_GPIO2_o;
  input TRX_TX_RF09_PULLDATA_FIFO_empty;
  input TRX_clk_trx_26MHz_vio;
  input TRX_clk_trx_pll_25MHz_vio;
  input [15:0]TRX_decoder_rx09_ch00_squelch_lvl;
  input TRX_int;
  input [31:0]TRX_rx09_32bits_CD100;
  input [31:0]TRX_rx24_32bits_CD100;
  input TRX_rx_clkdiv_16MHz_in;
  input [3:0]TRX_rx_rd_data_count;
  input [15:0]TRX_tx_DDS0_gpio_ampt;
  input [31:0]TRX_tx_DDS0_gpio_inc;
  input [15:0]TRX_tx_DDS1_gpio_ampt;
  input [11:0]TRX_tx_data_count;
  input [12:0]TRX_tx_im;
  input [12:0]TRX_tx_re;
  output [0:0]UART0EXT_CTSn;
  output [0:0]UART0EXT_DCDn;
  output [0:0]UART0EXT_DSRn;
  input UART0EXT_DTRn;
  output [0:0]UART0EXT_RIn;
  input UART0EXT_RTSn;
  output UART0_clk;
  output [0:0]UART0_rst_n;
  input UART0_rxd;
  output UART0_txd;
  output [0:0]USER_dbg_00_signal;
  output [0:0]USER_dbg_01_signal;
  output [0:0]USER_dbg_02_signal;
  output [0:0]USER_dbg_03_signal;
  output [0:0]USER_dbg_04_signal;
  output [0:0]USER_dbg_05_signal;
  output [0:0]USER_dbg_06_signal;
  output [0:0]USER_dbg_07_signal;
  output [0:0]USER_dbg_08_signal;
  output [0:0]USER_dbg_09_signal;
  output [0:0]USER_dbg_10_signal;
  output [0:0]USER_dbg_11_signal;
  output [0:0]USER_dbg_12_signal;
  output [0:0]USER_dbg_13_signal;
  input [25:0]dds_tx09_inc;
  input dds_tx09_ptt;
  input [7:0]decoder_rx09_ch00_center_pos;
  input [18:0]decoder_rx09_ch00_noise;
  input [18:0]decoder_rx09_ch00_strength;
  input [7:0]decoder_rx09_ch01_center_pos;
  input [18:0]decoder_rx09_ch01_noise;
  input [18:0]decoder_rx09_ch01_strength;
  input [7:0]decoder_rx09_ch02_center_pos;
  input [18:0]decoder_rx09_ch02_noise;
  input [18:0]decoder_rx09_ch02_strength;
  input [7:0]decoder_rx09_ch03_center_pos;
  input [18:0]decoder_rx09_ch03_noise;
  input [18:0]decoder_rx09_ch03_strength;
  input [7:0]decoder_rx09_ch04_center_pos;
  input [18:0]decoder_rx09_ch04_noise;
  input [18:0]decoder_rx09_ch04_strength;
  input [7:0]decoder_rx09_ch05_center_pos;
  input [18:0]decoder_rx09_ch05_noise;
  input [18:0]decoder_rx09_ch05_strength;
  input [7:0]decoder_rx09_ch06_center_pos;
  input [18:0]decoder_rx09_ch06_noise;
  input [18:0]decoder_rx09_ch06_strength;
  input [7:0]decoder_rx09_ch07_center_pos;
  input [18:0]decoder_rx09_ch07_noise;
  input [18:0]decoder_rx09_ch07_strength;
  input [7:0]decoder_rx09_chXX_active;
  input [7:0]decoder_rx09_chXX_sql_open;
  output microblaze_0_Clk_100MHz;
  output mig_7series_0_mmcm_locked;
  output mig_7series_0_ui_addn_clk_0_200MHz;
  output phy_rst_n;
  input qspi_flash_io0_i;
  output qspi_flash_io0_o;
  output qspi_flash_io0_t;
  input qspi_flash_io1_i;
  output qspi_flash_io1_o;
  output qspi_flash_io1_t;
  input qspi_flash_io2_i;
  output qspi_flash_io2_o;
  output qspi_flash_io2_t;
  input qspi_flash_io3_i;
  output qspi_flash_io3_o;
  output qspi_flash_io3_t;
  input qspi_flash_ss_i;
  output qspi_flash_ss_o;
  output qspi_flash_ss_t;
  input reset;
  input rotenc_dec_cnt_en;
  input rotenc_dec_cnt_up_dwn;
  output [0:0]rst_mig_7series_0_100M_peripheral_aresetn;
  output [0:0]rst_mig_7series_0_100M_peripheral_reset;
endmodule
