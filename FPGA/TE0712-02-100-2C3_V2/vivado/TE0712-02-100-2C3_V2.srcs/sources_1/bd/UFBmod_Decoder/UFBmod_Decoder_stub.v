// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Thu Mar 11 00:17:13 2021
// Host        : DESKTOP-I3NV8HO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/UFBmod_Decoder_stub.v
// Design      : UFBmod_Decoder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module UFBmod_Decoder(TRX_channel_rx_rf09_id, 
  TRX_dds_tx_rf09_ptt, TRX_decoder_rx_rf09_chXX_SoM_frameCtr, 
  TRX_decoder_rx_rf09_chXX_active, TRX_decoder_rx_rf09_chXX_center_pos, 
  TRX_decoder_rx_rf09_chXX_noise, TRX_decoder_rx_rf09_chXX_sql_open, 
  TRX_decoder_rx_rf09_chXX_squelch_lvl, TRX_decoder_rx_rf09_chXX_strength, 
  TRX_post_fft_rx_rf09_chXX_mem_b_addr, TRX_post_fft_rx_rf09_chXX_mem_b_dout, 
  TRX_post_fft_rx_rf09_mem_a_EoT, TRX_post_fft_rx_rf09_mem_a_addr, 
  TRX_pushdata_rx_rf09_chXX_din, TRX_pushdata_rx_rf09_chXX_grant, 
  TRX_pushdata_rx_rf09_chXX_req, TRX_pushdata_rx_rf09_chXX_wr_en, clk_100MHz, 
  reset_100MHz)
/* synthesis syn_black_box black_box_pad_pin="TRX_channel_rx_rf09_id[2:0],TRX_dds_tx_rf09_ptt,TRX_decoder_rx_rf09_chXX_SoM_frameCtr[31:0],TRX_decoder_rx_rf09_chXX_active,TRX_decoder_rx_rf09_chXX_center_pos[7:0],TRX_decoder_rx_rf09_chXX_noise[18:0],TRX_decoder_rx_rf09_chXX_sql_open,TRX_decoder_rx_rf09_chXX_squelch_lvl[15:0],TRX_decoder_rx_rf09_chXX_strength[18:0],TRX_post_fft_rx_rf09_chXX_mem_b_addr[4:0],TRX_post_fft_rx_rf09_chXX_mem_b_dout[15:0],TRX_post_fft_rx_rf09_mem_a_EoT,TRX_post_fft_rx_rf09_mem_a_addr[41:0],TRX_pushdata_rx_rf09_chXX_din[7:0],TRX_pushdata_rx_rf09_chXX_grant,TRX_pushdata_rx_rf09_chXX_req,TRX_pushdata_rx_rf09_chXX_wr_en,clk_100MHz,reset_100MHz" */;
  input [2:0]TRX_channel_rx_rf09_id;
  input TRX_dds_tx_rf09_ptt;
  output [31:0]TRX_decoder_rx_rf09_chXX_SoM_frameCtr;
  output TRX_decoder_rx_rf09_chXX_active;
  output [7:0]TRX_decoder_rx_rf09_chXX_center_pos;
  output [18:0]TRX_decoder_rx_rf09_chXX_noise;
  output TRX_decoder_rx_rf09_chXX_sql_open;
  input [15:0]TRX_decoder_rx_rf09_chXX_squelch_lvl;
  output [18:0]TRX_decoder_rx_rf09_chXX_strength;
  output [4:0]TRX_post_fft_rx_rf09_chXX_mem_b_addr;
  input [15:0]TRX_post_fft_rx_rf09_chXX_mem_b_dout;
  input TRX_post_fft_rx_rf09_mem_a_EoT;
  input [41:0]TRX_post_fft_rx_rf09_mem_a_addr;
  output [7:0]TRX_pushdata_rx_rf09_chXX_din;
  input TRX_pushdata_rx_rf09_chXX_grant;
  output TRX_pushdata_rx_rf09_chXX_req;
  output TRX_pushdata_rx_rf09_chXX_wr_en;
  input clk_100MHz;
  input reset_100MHz;
endmodule
