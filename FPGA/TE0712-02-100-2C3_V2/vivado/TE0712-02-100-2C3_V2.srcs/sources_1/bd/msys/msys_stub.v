// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Mon Oct 12 01:10:44 2020
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
  ETH0_MDIO_MDC_mdio_o, ETH0_MDIO_MDC_mdio_t, EUI48_FSM_run, EUI48_FSM_start, EUI48_abort, 
  EUI48_data, EUI48_state, FFT_window_coef_rom_rx09, FPGA_IO, LCD_BL, LCD_rstn, LED_RGB_blue, 
  LED_RGB_green, LED_RGB_red, LVDS_rx09_synced, LVDS_rx24_synced, PLL_I2C_ext_scl_o, 
  PLL_I2C_ext_sda, PLL_int, RF09_framectr, RF09_quarterfrm, RMII_PHY_M_0_crs_dv, 
  RMII_PHY_M_0_rxd, RMII_PHY_M_0_tx_en, RMII_PHY_M_0_txd, SCOPE_FSM_FIFO_RdEmpty, 
  SCOPE_FSM_FIFO_RdEn, SCOPE_FSM_FIFO_RdValid, SCOPE_FSM_FIFO_Rst, SCOPE_FSM_FIFO_WrEn, 
  SCOPE_FSM_FIFO_WrFull, SCOPE_FSM_FIFO_rd_rst_busy, SCOPE_FSM_FIFO_wr_rst_busy, 
  SCOPE_FSM_GPIO0_Out, SCOPE_FSM_GPIO1_In, SCOPE_FSM_Timebase_CE, SCOPE_FSM_TrigSrc, 
  TRX_PLL_clk_25MHz_N, TRX_PLL_clk_25MHz_P, TRX_clk_26MHz, TRX_int, TRX_resetn, TRX_rfx_mode, 
  TRX_rx09_fifo_o, TRX_rx09_fifo_valid_o, TRX_rx24_fifo_o, TRX_rx24_fifo_valid_o, 
  TRX_rx_clk_64MHz_clk_n, TRX_rx_clk_64MHz_clk_p, TRX_rx_data_n, TRX_rx_data_p, 
  TRX_spi_io0_i, TRX_spi_io0_o, TRX_spi_io0_t, TRX_spi_io1_i, TRX_spi_io1_o, TRX_spi_io1_t, 
  TRX_spi_sck_i, TRX_spi_sck_o, TRX_spi_sck_t, TRX_spi_ss_i, TRX_spi_ss_o, TRX_spi_ss_t, 
  TRX_tx_clk_clk_n, TRX_tx_clk_clk_p, TRX_tx_data_n, TRX_tx_data_p, UART0EXT_CTSn, 
  UART0EXT_DCDn, UART0EXT_DSRn, UART0EXT_DTRn, UART0EXT_RIn, UART0EXT_RTSn, UART0_clk, 
  UART0_rst_n, UART0_rxd, UART0_txd, ULI_SYSTEM_XIO, USER_dbg_out, dds_tx09_inc, dds_tx09_ptt, 
  decoder_rx09_active, decoder_rx09_center_pos, decoder_rx09_noise, 
  decoder_rx09_sql_open, decoder_rx09_squelch_lvl, decoder_rx09_strength, 
  encoder_pull_FIFO_dump, encoder_pull_data_len, encoder_pull_do_start, 
  fft09_config_tdata_in, fft09_config_tvalid_in, fft09_data_tlast_in, 
  fft09_data_tready_out, fft09_data_tvalid_in, microblaze_0_Clk_100MHz_o, 
  mig_7series_0_ui_clk_sync_rst, phy_rst_n, post_fft_rx09_mem_a_EoT, 
  post_fft_rx09_mem_a_addr, post_fft_rx09_mem_b_addr, post_fft_rx09_mem_b_dout, 
  premem_rx09_addra_in, premem_rx09_addrb_in, premem_rx09_dina_in, premem_rx09_wea_in, 
  pulldata_tx09_byteData, pulldata_tx09_en, pushdata_rx09_byteData, pushdata_rx09_en, 
  qspi_flash_io0_i, qspi_flash_io0_o, qspi_flash_io0_t, qspi_flash_io1_i, qspi_flash_io1_o, 
  qspi_flash_io1_t, qspi_flash_io2_i, qspi_flash_io2_o, qspi_flash_io2_t, qspi_flash_io3_i, 
  qspi_flash_io3_o, qspi_flash_io3_t, qspi_flash_ss_i, qspi_flash_ss_o, qspi_flash_ss_t, 
  reset, rotenc_dec_cnt_en, rotenc_dec_cnt_up_dwn)
/* synthesis syn_black_box black_box_pad_pin="BOARD_IIC_scl_i,BOARD_IIC_scl_o,BOARD_IIC_scl_t,BOARD_IIC_sda_i,BOARD_IIC_sda_o,BOARD_IIC_sda_t,BOARD_ROTENC_PUSH,CLK0_clk_n[0:0],CLK0_clk_p[0:0],CLK1B_clk[0:0],CLK2_mgt_clk0_clk_n,CLK2_mgt_clk0_clk_p,CLK3_sys_diff_clk_n,CLK3_sys_diff_clk_p,DDR3_SDRAM_addr[14:0],DDR3_SDRAM_ba[2:0],DDR3_SDRAM_cas_n,DDR3_SDRAM_ck_n[0:0],DDR3_SDRAM_ck_p[0:0],DDR3_SDRAM_cke[0:0],DDR3_SDRAM_cs_n[0:0],DDR3_SDRAM_dm[3:0],DDR3_SDRAM_dq[31:0],DDR3_SDRAM_dqs_n[3:0],DDR3_SDRAM_dqs_p[3:0],DDR3_SDRAM_odt[0:0],DDR3_SDRAM_ras_n,DDR3_SDRAM_reset_n,DDR3_SDRAM_we_n,DDR3_init_calib_complete,ETH0_DA_G[0:0],ETH0_DA_Y[0:0],ETH0_LINK_LED_g,ETH0_MDIO_MDC_mdc,ETH0_MDIO_MDC_mdio_i,ETH0_MDIO_MDC_mdio_o,ETH0_MDIO_MDC_mdio_t,EUI48_FSM_run,EUI48_FSM_start[0:0],EUI48_abort[7:0],EUI48_data[47:0],EUI48_state[7:0],FFT_window_coef_rom_rx09[9:0],FPGA_IO,LCD_BL[0:0],LCD_rstn[0:0],LED_RGB_blue[0:0],LED_RGB_green[0:0],LED_RGB_red[0:0],LVDS_rx09_synced,LVDS_rx24_synced,PLL_I2C_ext_scl_o,PLL_I2C_ext_sda,PLL_int,RF09_framectr[29:0],RF09_quarterfrm[1:0],RMII_PHY_M_0_crs_dv,RMII_PHY_M_0_rxd[1:0],RMII_PHY_M_0_tx_en,RMII_PHY_M_0_txd[1:0],SCOPE_FSM_FIFO_RdEmpty,SCOPE_FSM_FIFO_RdEn,SCOPE_FSM_FIFO_RdValid,SCOPE_FSM_FIFO_Rst,SCOPE_FSM_FIFO_WrEn,SCOPE_FSM_FIFO_WrFull,SCOPE_FSM_FIFO_rd_rst_busy,SCOPE_FSM_FIFO_wr_rst_busy,SCOPE_FSM_GPIO0_Out[31:0],SCOPE_FSM_GPIO1_In[31:0],SCOPE_FSM_Timebase_CE,SCOPE_FSM_TrigSrc[47:0],TRX_PLL_clk_25MHz_N[0:0],TRX_PLL_clk_25MHz_P[0:0],TRX_clk_26MHz,TRX_int,TRX_resetn[0:0],TRX_rfx_mode[0:0],TRX_rx09_fifo_o[31:0],TRX_rx09_fifo_valid_o,TRX_rx24_fifo_o[31:0],TRX_rx24_fifo_valid_o,TRX_rx_clk_64MHz_clk_n,TRX_rx_clk_64MHz_clk_p,TRX_rx_data_n[1:0],TRX_rx_data_p[1:0],TRX_spi_io0_i,TRX_spi_io0_o,TRX_spi_io0_t,TRX_spi_io1_i,TRX_spi_io1_o,TRX_spi_io1_t,TRX_spi_sck_i,TRX_spi_sck_o,TRX_spi_sck_t,TRX_spi_ss_i[0:0],TRX_spi_ss_o[0:0],TRX_spi_ss_t,TRX_tx_clk_clk_n,TRX_tx_clk_clk_p,TRX_tx_data_n[1:0],TRX_tx_data_p[1:0],UART0EXT_CTSn[0:0],UART0EXT_DCDn[0:0],UART0EXT_DSRn[0:0],UART0EXT_DTRn,UART0EXT_RIn[0:0],UART0EXT_RTSn,UART0_clk,UART0_rst_n[0:0],UART0_rxd,UART0_txd,ULI_SYSTEM_XIO,USER_dbg_out[13:0],dds_tx09_inc[25:0],dds_tx09_ptt,decoder_rx09_active,decoder_rx09_center_pos[7:0],decoder_rx09_noise[18:0],decoder_rx09_sql_open,decoder_rx09_squelch_lvl[18:0],decoder_rx09_strength[18:0],encoder_pull_FIFO_dump[0:0],encoder_pull_data_len[6:0],encoder_pull_do_start[0:0],fft09_config_tdata_in[7:0],fft09_config_tvalid_in,fft09_data_tlast_in,fft09_data_tready_out,fft09_data_tvalid_in,microblaze_0_Clk_100MHz_o,mig_7series_0_ui_clk_sync_rst,phy_rst_n,post_fft_rx09_mem_a_EoT,post_fft_rx09_mem_a_addr[41:0],post_fft_rx09_mem_b_addr[9:0],post_fft_rx09_mem_b_dout[15:0],premem_rx09_addra_in[10:0],premem_rx09_addrb_in[10:0],premem_rx09_dina_in[25:0],premem_rx09_wea_in[0:0],pulldata_tx09_byteData[7:0],pulldata_tx09_en,pushdata_rx09_byteData[7:0],pushdata_rx09_en,qspi_flash_io0_i,qspi_flash_io0_o,qspi_flash_io0_t,qspi_flash_io1_i,qspi_flash_io1_o,qspi_flash_io1_t,qspi_flash_io2_i,qspi_flash_io2_o,qspi_flash_io2_t,qspi_flash_io3_i,qspi_flash_io3_o,qspi_flash_io3_t,qspi_flash_ss_i,qspi_flash_ss_o,qspi_flash_ss_t,reset,rotenc_dec_cnt_en,rotenc_dec_cnt_up_dwn" */;
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
  input [7:0]EUI48_abort;
  input [47:0]EUI48_data;
  input [7:0]EUI48_state;
  input [9:0]FFT_window_coef_rom_rx09;
  input FPGA_IO;
  output [0:0]LCD_BL;
  output [0:0]LCD_rstn;
  output [0:0]LED_RGB_blue;
  output [0:0]LED_RGB_green;
  output [0:0]LED_RGB_red;
  input LVDS_rx09_synced;
  input LVDS_rx24_synced;
  output PLL_I2C_ext_scl_o;
  inout PLL_I2C_ext_sda;
  input PLL_int;
  input [29:0]RF09_framectr;
  input [1:0]RF09_quarterfrm;
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
  output [0:0]TRX_PLL_clk_25MHz_N;
  output [0:0]TRX_PLL_clk_25MHz_P;
  input TRX_clk_26MHz;
  input TRX_int;
  output [0:0]TRX_resetn;
  output [0:0]TRX_rfx_mode;
  output [31:0]TRX_rx09_fifo_o;
  output TRX_rx09_fifo_valid_o;
  output [31:0]TRX_rx24_fifo_o;
  output TRX_rx24_fifo_valid_o;
  input TRX_rx_clk_64MHz_clk_n;
  input TRX_rx_clk_64MHz_clk_p;
  input [1:0]TRX_rx_data_n;
  input [1:0]TRX_rx_data_p;
  input TRX_spi_io0_i;
  output TRX_spi_io0_o;
  output TRX_spi_io0_t;
  input TRX_spi_io1_i;
  output TRX_spi_io1_o;
  output TRX_spi_io1_t;
  input TRX_spi_sck_i;
  output TRX_spi_sck_o;
  output TRX_spi_sck_t;
  input [0:0]TRX_spi_ss_i;
  output [0:0]TRX_spi_ss_o;
  output TRX_spi_ss_t;
  output TRX_tx_clk_clk_n;
  output TRX_tx_clk_clk_p;
  output [1:0]TRX_tx_data_n;
  output [1:0]TRX_tx_data_p;
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
  input ULI_SYSTEM_XIO;
  output [13:0]USER_dbg_out;
  input [25:0]dds_tx09_inc;
  input dds_tx09_ptt;
  input decoder_rx09_active;
  input [7:0]decoder_rx09_center_pos;
  input [18:0]decoder_rx09_noise;
  input decoder_rx09_sql_open;
  output [18:0]decoder_rx09_squelch_lvl;
  input [18:0]decoder_rx09_strength;
  output [0:0]encoder_pull_FIFO_dump;
  output [6:0]encoder_pull_data_len;
  output [0:0]encoder_pull_do_start;
  input [7:0]fft09_config_tdata_in;
  input fft09_config_tvalid_in;
  input fft09_data_tlast_in;
  output fft09_data_tready_out;
  input fft09_data_tvalid_in;
  output microblaze_0_Clk_100MHz_o;
  output mig_7series_0_ui_clk_sync_rst;
  output phy_rst_n;
  output post_fft_rx09_mem_a_EoT;
  output [41:0]post_fft_rx09_mem_a_addr;
  input [9:0]post_fft_rx09_mem_b_addr;
  output [15:0]post_fft_rx09_mem_b_dout;
  input [10:0]premem_rx09_addra_in;
  input [10:0]premem_rx09_addrb_in;
  input [25:0]premem_rx09_dina_in;
  input [0:0]premem_rx09_wea_in;
  output [7:0]pulldata_tx09_byteData;
  input pulldata_tx09_en;
  input [7:0]pushdata_rx09_byteData;
  input pushdata_rx09_en;
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
endmodule
