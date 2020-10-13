// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Mon Oct 12 00:52:29 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/UFBmod_stub.v
// Design      : UFBmod
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module UFBmod(clk, dds_tx09_ptt, decoder_rx09_ch00_active, 
  decoder_rx09_ch00_center_pos, decoder_rx09_ch00_noise, decoder_rx09_ch00_sql_open, 
  decoder_rx09_ch00_squelch_lvl, decoder_rx09_ch00_strength, post_fft_rx09_mem_a_EoT, 
  post_fft_rx09_mem_a_addr, post_fft_rx09_mem_b_addr, post_fft_rx09_mem_b_dout, 
  pushdata_rx09_byteData, pushdata_rx09_en, reset)
/* synthesis syn_black_box black_box_pad_pin="clk,dds_tx09_ptt,decoder_rx09_ch00_active,decoder_rx09_ch00_center_pos[7:0],decoder_rx09_ch00_noise[18:0],decoder_rx09_ch00_sql_open,decoder_rx09_ch00_squelch_lvl[18:0],decoder_rx09_ch00_strength[18:0],post_fft_rx09_mem_a_EoT,post_fft_rx09_mem_a_addr[41:0],post_fft_rx09_mem_b_addr[9:0],post_fft_rx09_mem_b_dout[15:0],pushdata_rx09_byteData[7:0],pushdata_rx09_en,reset" */;
  input clk;
  input dds_tx09_ptt;
  output decoder_rx09_ch00_active;
  output [7:0]decoder_rx09_ch00_center_pos;
  output [18:0]decoder_rx09_ch00_noise;
  output decoder_rx09_ch00_sql_open;
  input [18:0]decoder_rx09_ch00_squelch_lvl;
  output [18:0]decoder_rx09_ch00_strength;
  input post_fft_rx09_mem_a_EoT;
  input [41:0]post_fft_rx09_mem_a_addr;
  output [9:0]post_fft_rx09_mem_b_addr;
  input [15:0]post_fft_rx09_mem_b_dout;
  output [7:0]pushdata_rx09_byteData;
  output pushdata_rx09_en;
  input reset;
endmodule
