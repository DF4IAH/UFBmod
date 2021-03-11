// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 11 17:06:23 2021
// Host        : DESKTOP-I3NV8HO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/UFBmod_TRX_stub.v
// Design      : UFBmod_TRX
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module UFBmod_TRX(FFT_window_coef_rom_rx09, RF09_framectr, 
  RF09_quarterfrm, Status_LVDS_rx09_synced, Status_LVDS_rx24_synced, TRX_CONFIG_GPIO1_o, 
  TRX_CONFIG_GPIO2_i, TRX_LVDS_tx09_fifo_din, TRX_PLL_clk_25MHz_n, TRX_PLL_clk_25MHz_p, 
  TRX_PUSHDATA_ch00_din, TRX_PUSHDATA_ch00_grant, TRX_PUSHDATA_ch00_req, 
  TRX_PUSHDATA_ch00_wr_en, TRX_PUSHDATA_ch01_din, TRX_PUSHDATA_ch01_grant, 
  TRX_PUSHDATA_ch01_req, TRX_PUSHDATA_ch01_wr_en, TRX_PUSHDATA_ch02_din, 
  TRX_PUSHDATA_ch02_grant, TRX_PUSHDATA_ch02_req, TRX_PUSHDATA_ch02_wr_en, 
  TRX_PUSHDATA_ch03_din, TRX_PUSHDATA_ch03_grant, TRX_PUSHDATA_ch03_req, 
  TRX_PUSHDATA_ch03_wr_en, TRX_PUSHDATA_ch04_din, TRX_PUSHDATA_ch04_grant, 
  TRX_PUSHDATA_ch04_req, TRX_PUSHDATA_ch04_wr_en, TRX_PUSHDATA_ch05_din, 
  TRX_PUSHDATA_ch05_grant, TRX_PUSHDATA_ch05_req, TRX_PUSHDATA_ch05_wr_en, 
  TRX_PUSHDATA_ch06_din, TRX_PUSHDATA_ch06_grant, TRX_PUSHDATA_ch06_req, 
  TRX_PUSHDATA_ch06_wr_en, TRX_PUSHDATA_ch07_din, TRX_PUSHDATA_ch07_grant, 
  TRX_PUSHDATA_ch07_req, TRX_PUSHDATA_ch07_wr_en, TRX_RX_PUSHDATA_GPIO1_i, 
  TRX_RX_PUSHDATA_GPIO2_o, TRX_TX_DDSAMPL_GPIO1_o, TRX_TX_DDSAMPL_GPIO2_o, 
  TRX_TX_DDS_GPIO1_i, TRX_TX_DDS_GPIO1_o, TRX_TX_DDS_GPIO2_o, 
  TRX_TX_RF09_PULLDATA_FIFO_empty, TRX_clk_26MHz, TRX_clk_trx_26MHz_vio, 
  TRX_clk_trx_pll_25MHz_vio, TRX_dds_tx_rf09_inc, TRX_dds_tx_rf09_ptt, 
  TRX_decoder_rx09_squelch_lvl, TRX_encoder_tx09_pull_FIFO_dump, 
  TRX_encoder_tx09_pull_data_len, TRX_encoder_tx09_pull_do_start, 
  TRX_fft09_data_tready_out, TRX_post_fft_mem_a_rx09_EoT, TRX_post_fft_rx09_mem_a_addr, 
  TRX_pulldata_tx09_byteData, TRX_resetn, TRX_rfx_mode, TRX_rx09_fifo, TRX_rx09_fifo_valid, 
  TRX_rx24_fifo, TRX_rx24_fifo_valid, TRX_rx_clk_64MHz_clk_n, TRX_rx_clk_64MHz_clk_p, 
  TRX_rx_clkdiv_16MHz, TRX_rx_data_n, TRX_rx_data_p, TRX_rx_rd_data_count, 
  TRX_rx_rf09_Pre_FFT_mem_addrb, TRX_rx_rf09_ch00_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch00_Post_FFT_mem_b_dout, TRX_rx_rf09_ch01_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch01_Post_FFT_mem_b_dout, TRX_rx_rf09_ch02_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch02_Post_FFT_mem_b_dout, TRX_rx_rf09_ch03_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch03_Post_FFT_mem_b_dout, TRX_rx_rf09_ch04_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch04_Post_FFT_mem_b_dout, TRX_rx_rf09_ch05_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch05_Post_FFT_mem_b_dout, TRX_rx_rf09_ch06_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch06_Post_FFT_mem_b_dout, TRX_rx_rf09_ch07_Post_FFT_mem_b_addr, 
  TRX_rx_rf09_ch07_Post_FFT_mem_b_dout, TRX_tx_DDS0_gpio_ampt, TRX_tx_DDS1_gpio_ampt, 
  TRX_tx_clk_clk_n, TRX_tx_clk_clk_p, TRX_tx_data_count, TRX_tx_data_n, TRX_tx_data_p, 
  TRX_tx_im_out, TRX_tx_re_out, TRX_xfft_rx09_dly3449_event_data_in_channel_halt, 
  TRX_xfft_rx09_dly3449_event_frame_started, 
  TRX_xfft_rx09_dly3449_event_tlast_missing, 
  TRX_xfft_rx09_dly3449_event_tlast_unexpected, fft09_config_tdata_in, 
  fft09_config_tvalid_in, fft09_data_tlast_in, fft09_data_tvalid_in, 
  microblaze_0_Clk_100MHz, mig_7series_0_mmcm_locked, 
  mig_7series_0_ui_addn_clk_0_200MHz, premem_rx09_addra_in, premem_rx09_dina_in, 
  premem_rx09_wea_in, pulldata_tx09_en, rst_mig_7series_0_100M_peripheral_aresetn, 
  rst_mig_7series_0_100M_peripheral_reset)
/* synthesis syn_black_box black_box_pad_pin="FFT_window_coef_rom_rx09[9:0],RF09_framectr[29:0],RF09_quarterfrm[1:0],Status_LVDS_rx09_synced,Status_LVDS_rx24_synced,TRX_CONFIG_GPIO1_o[31:0],TRX_CONFIG_GPIO2_i[31:0],TRX_LVDS_tx09_fifo_din[31:0],TRX_PLL_clk_25MHz_n[0:0],TRX_PLL_clk_25MHz_p[0:0],TRX_PUSHDATA_ch00_din[7:0],TRX_PUSHDATA_ch00_grant,TRX_PUSHDATA_ch00_req,TRX_PUSHDATA_ch00_wr_en,TRX_PUSHDATA_ch01_din[7:0],TRX_PUSHDATA_ch01_grant,TRX_PUSHDATA_ch01_req,TRX_PUSHDATA_ch01_wr_en,TRX_PUSHDATA_ch02_din[7:0],TRX_PUSHDATA_ch02_grant,TRX_PUSHDATA_ch02_req,TRX_PUSHDATA_ch02_wr_en,TRX_PUSHDATA_ch03_din[7:0],TRX_PUSHDATA_ch03_grant,TRX_PUSHDATA_ch03_req,TRX_PUSHDATA_ch03_wr_en,TRX_PUSHDATA_ch04_din[7:0],TRX_PUSHDATA_ch04_grant,TRX_PUSHDATA_ch04_req,TRX_PUSHDATA_ch04_wr_en,TRX_PUSHDATA_ch05_din[7:0],TRX_PUSHDATA_ch05_grant,TRX_PUSHDATA_ch05_req,TRX_PUSHDATA_ch05_wr_en,TRX_PUSHDATA_ch06_din[7:0],TRX_PUSHDATA_ch06_grant,TRX_PUSHDATA_ch06_req,TRX_PUSHDATA_ch06_wr_en,TRX_PUSHDATA_ch07_din[7:0],TRX_PUSHDATA_ch07_grant,TRX_PUSHDATA_ch07_req,TRX_PUSHDATA_ch07_wr_en,TRX_RX_PUSHDATA_GPIO1_i[31:0],TRX_RX_PUSHDATA_GPIO2_o[31:0],TRX_TX_DDSAMPL_GPIO1_o[15:0],TRX_TX_DDSAMPL_GPIO2_o[15:0],TRX_TX_DDS_GPIO1_i[31:0],TRX_TX_DDS_GPIO1_o[31:0],TRX_TX_DDS_GPIO2_o[31:0],TRX_TX_RF09_PULLDATA_FIFO_empty,TRX_clk_26MHz,TRX_clk_trx_26MHz_vio,TRX_clk_trx_pll_25MHz_vio,TRX_dds_tx_rf09_inc[25:0],TRX_dds_tx_rf09_ptt,TRX_decoder_rx09_squelch_lvl[15:0],TRX_encoder_tx09_pull_FIFO_dump[0:0],TRX_encoder_tx09_pull_data_len[6:0],TRX_encoder_tx09_pull_do_start[0:0],TRX_fft09_data_tready_out,TRX_post_fft_mem_a_rx09_EoT,TRX_post_fft_rx09_mem_a_addr[41:0],TRX_pulldata_tx09_byteData[7:0],TRX_resetn[0:0],TRX_rfx_mode[0:0],TRX_rx09_fifo[31:0],TRX_rx09_fifo_valid,TRX_rx24_fifo[31:0],TRX_rx24_fifo_valid,TRX_rx_clk_64MHz_clk_n,TRX_rx_clk_64MHz_clk_p,TRX_rx_clkdiv_16MHz[0:0],TRX_rx_data_n[1:0],TRX_rx_data_p[1:0],TRX_rx_rd_data_count[3:0],TRX_rx_rf09_Pre_FFT_mem_addrb[10:0],TRX_rx_rf09_ch00_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch00_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch01_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch01_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch02_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch02_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch03_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch03_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch04_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch04_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch05_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch05_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch06_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch06_Post_FFT_mem_b_dout[15:0],TRX_rx_rf09_ch07_Post_FFT_mem_b_addr[4:0],TRX_rx_rf09_ch07_Post_FFT_mem_b_dout[15:0],TRX_tx_DDS0_gpio_ampt[15:0],TRX_tx_DDS1_gpio_ampt[15:0],TRX_tx_clk_clk_n,TRX_tx_clk_clk_p,TRX_tx_data_count[11:0],TRX_tx_data_n[1:0],TRX_tx_data_p[1:0],TRX_tx_im_out[20:8],TRX_tx_re_out[20:8],TRX_xfft_rx09_dly3449_event_data_in_channel_halt,TRX_xfft_rx09_dly3449_event_frame_started,TRX_xfft_rx09_dly3449_event_tlast_missing,TRX_xfft_rx09_dly3449_event_tlast_unexpected,fft09_config_tdata_in[7:0],fft09_config_tvalid_in,fft09_data_tlast_in,fft09_data_tvalid_in,microblaze_0_Clk_100MHz,mig_7series_0_mmcm_locked,mig_7series_0_ui_addn_clk_0_200MHz,premem_rx09_addra_in[10:0],premem_rx09_dina_in[25:0],premem_rx09_wea_in,pulldata_tx09_en,rst_mig_7series_0_100M_peripheral_aresetn,rst_mig_7series_0_100M_peripheral_reset" */;
  input [9:0]FFT_window_coef_rom_rx09;
  input [29:0]RF09_framectr;
  input [1:0]RF09_quarterfrm;
  input Status_LVDS_rx09_synced;
  input Status_LVDS_rx24_synced;
  input [31:0]TRX_CONFIG_GPIO1_o;
  output [31:0]TRX_CONFIG_GPIO2_i;
  output [31:0]TRX_LVDS_tx09_fifo_din;
  output [0:0]TRX_PLL_clk_25MHz_n;
  output [0:0]TRX_PLL_clk_25MHz_p;
  input [7:0]TRX_PUSHDATA_ch00_din;
  output TRX_PUSHDATA_ch00_grant;
  input TRX_PUSHDATA_ch00_req;
  input TRX_PUSHDATA_ch00_wr_en;
  input [7:0]TRX_PUSHDATA_ch01_din;
  output TRX_PUSHDATA_ch01_grant;
  input TRX_PUSHDATA_ch01_req;
  input TRX_PUSHDATA_ch01_wr_en;
  input [7:0]TRX_PUSHDATA_ch02_din;
  output TRX_PUSHDATA_ch02_grant;
  input TRX_PUSHDATA_ch02_req;
  input TRX_PUSHDATA_ch02_wr_en;
  input [7:0]TRX_PUSHDATA_ch03_din;
  output TRX_PUSHDATA_ch03_grant;
  input TRX_PUSHDATA_ch03_req;
  input TRX_PUSHDATA_ch03_wr_en;
  input [7:0]TRX_PUSHDATA_ch04_din;
  output TRX_PUSHDATA_ch04_grant;
  input TRX_PUSHDATA_ch04_req;
  input TRX_PUSHDATA_ch04_wr_en;
  input [7:0]TRX_PUSHDATA_ch05_din;
  output TRX_PUSHDATA_ch05_grant;
  input TRX_PUSHDATA_ch05_req;
  input TRX_PUSHDATA_ch05_wr_en;
  input [7:0]TRX_PUSHDATA_ch06_din;
  output TRX_PUSHDATA_ch06_grant;
  input TRX_PUSHDATA_ch06_req;
  input TRX_PUSHDATA_ch06_wr_en;
  input [7:0]TRX_PUSHDATA_ch07_din;
  output TRX_PUSHDATA_ch07_grant;
  input TRX_PUSHDATA_ch07_req;
  input TRX_PUSHDATA_ch07_wr_en;
  output [31:0]TRX_RX_PUSHDATA_GPIO1_i;
  input [31:0]TRX_RX_PUSHDATA_GPIO2_o;
  input [15:0]TRX_TX_DDSAMPL_GPIO1_o;
  input [15:0]TRX_TX_DDSAMPL_GPIO2_o;
  output [31:0]TRX_TX_DDS_GPIO1_i;
  input [31:0]TRX_TX_DDS_GPIO1_o;
  input [31:0]TRX_TX_DDS_GPIO2_o;
  output TRX_TX_RF09_PULLDATA_FIFO_empty;
  input TRX_clk_26MHz;
  output TRX_clk_trx_26MHz_vio;
  output TRX_clk_trx_pll_25MHz_vio;
  input [25:0]TRX_dds_tx_rf09_inc;
  input TRX_dds_tx_rf09_ptt;
  output [15:0]TRX_decoder_rx09_squelch_lvl;
  output [0:0]TRX_encoder_tx09_pull_FIFO_dump;
  output [6:0]TRX_encoder_tx09_pull_data_len;
  output [0:0]TRX_encoder_tx09_pull_do_start;
  output TRX_fft09_data_tready_out;
  output TRX_post_fft_mem_a_rx09_EoT;
  output [41:0]TRX_post_fft_rx09_mem_a_addr;
  output [7:0]TRX_pulldata_tx09_byteData;
  output [0:0]TRX_resetn;
  output [0:0]TRX_rfx_mode;
  output [31:0]TRX_rx09_fifo;
  output TRX_rx09_fifo_valid;
  output [31:0]TRX_rx24_fifo;
  output TRX_rx24_fifo_valid;
  input TRX_rx_clk_64MHz_clk_n;
  input TRX_rx_clk_64MHz_clk_p;
  output [0:0]TRX_rx_clkdiv_16MHz;
  input [1:0]TRX_rx_data_n;
  input [1:0]TRX_rx_data_p;
  output [3:0]TRX_rx_rd_data_count;
  input [10:0]TRX_rx_rf09_Pre_FFT_mem_addrb;
  input [4:0]TRX_rx_rf09_ch00_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch00_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch01_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch01_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch02_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch02_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch03_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch03_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch04_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch04_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch05_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch05_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch06_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch06_Post_FFT_mem_b_dout;
  input [4:0]TRX_rx_rf09_ch07_Post_FFT_mem_b_addr;
  output [15:0]TRX_rx_rf09_ch07_Post_FFT_mem_b_dout;
  output [15:0]TRX_tx_DDS0_gpio_ampt;
  output [15:0]TRX_tx_DDS1_gpio_ampt;
  output TRX_tx_clk_clk_n;
  output TRX_tx_clk_clk_p;
  output [11:0]TRX_tx_data_count;
  output [1:0]TRX_tx_data_n;
  output [1:0]TRX_tx_data_p;
  output [20:8]TRX_tx_im_out;
  output [20:8]TRX_tx_re_out;
  output TRX_xfft_rx09_dly3449_event_data_in_channel_halt;
  output TRX_xfft_rx09_dly3449_event_frame_started;
  output TRX_xfft_rx09_dly3449_event_tlast_missing;
  output TRX_xfft_rx09_dly3449_event_tlast_unexpected;
  input [7:0]fft09_config_tdata_in;
  input fft09_config_tvalid_in;
  input fft09_data_tlast_in;
  input fft09_data_tvalid_in;
  input microblaze_0_Clk_100MHz;
  input mig_7series_0_mmcm_locked;
  input mig_7series_0_ui_addn_clk_0_200MHz;
  input [10:0]premem_rx09_addra_in;
  input [25:0]premem_rx09_dina_in;
  input premem_rx09_wea_in;
  input pulldata_tx09_en;
  input rst_mig_7series_0_100M_peripheral_aresetn;
  input rst_mig_7series_0_100M_peripheral_reset;
endmodule
