// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Fri Nov  6 23:04:18 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Encoder/UFBmod_Encoder_stub.v
// Design      : UFBmod_Encoder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module UFBmod_Encoder(TRX_dds_tx_rf09_inc, TRX_dds_tx_rf09_ptt, 
  clk_100MHz, decoder_rx09_chAll_active, decoder_rx09_chAll_sql_open, 
  encoder_pull_FIFO_dump, encoder_pull_data_len, encoder_pull_do_start, 
  pulldata_tx09_byteData, pulldata_tx09_en, reset_100MHz)
/* synthesis syn_black_box black_box_pad_pin="TRX_dds_tx_rf09_inc[25:0],TRX_dds_tx_rf09_ptt,clk_100MHz,decoder_rx09_chAll_active[7:0],decoder_rx09_chAll_sql_open[7:0],encoder_pull_FIFO_dump,encoder_pull_data_len[6:0],encoder_pull_do_start,pulldata_tx09_byteData[7:0],pulldata_tx09_en,reset_100MHz" */;
  output [25:0]TRX_dds_tx_rf09_inc;
  output TRX_dds_tx_rf09_ptt;
  input clk_100MHz;
  input [7:0]decoder_rx09_chAll_active;
  input [7:0]decoder_rx09_chAll_sql_open;
  input encoder_pull_FIFO_dump;
  input [6:0]encoder_pull_data_len;
  input encoder_pull_do_start;
  input [7:0]pulldata_tx09_byteData;
  output pulldata_tx09_en;
  input reset_100MHz;
endmodule
