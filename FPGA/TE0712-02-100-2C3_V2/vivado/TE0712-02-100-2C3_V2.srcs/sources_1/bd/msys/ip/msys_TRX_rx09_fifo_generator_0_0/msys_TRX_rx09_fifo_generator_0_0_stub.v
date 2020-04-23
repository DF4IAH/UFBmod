// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Apr 23 19:00:16 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_TRX_rx09_fifo_generator_0_0 -prefix
//               msys_TRX_rx09_fifo_generator_0_0_ msys_TRX_rx09_fifo_generator_0_0_stub.v
// Design      : msys_TRX_rx09_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2.1" *)
module msys_TRX_rx09_fifo_generator_0_0(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, valid, rd_data_count, wr_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[7:0],wr_en,rd_en,dout[31:0],full,empty,valid,rd_data_count[8:0],wr_data_count[10:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
  output valid;
  output [8:0]rd_data_count;
  output [10:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
