// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 22 08:21:45 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_vio_0_0/msys_vio_0_0_stub.v
// Design      : msys_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2.1" *)
module msys_vio_0_0(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_in7, probe_in8, probe_in9, probe_in10)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_in1[31:0],probe_in2[31:0],probe_in3[31:0],probe_in4[0:0],probe_in5[0:0],probe_in6[31:0],probe_in7[31:0],probe_in8[31:0],probe_in9[0:0],probe_in10[0:0]" */;
  input clk;
  input [31:0]probe_in0;
  input [31:0]probe_in1;
  input [31:0]probe_in2;
  input [31:0]probe_in3;
  input [0:0]probe_in4;
  input [0:0]probe_in5;
  input [31:0]probe_in6;
  input [31:0]probe_in7;
  input [31:0]probe_in8;
  input [0:0]probe_in9;
  input [0:0]probe_in10;
endmodule
