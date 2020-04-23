// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Apr 23 18:58:54 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_c_counter_binary_0_2 -prefix
//               msys_c_counter_binary_0_2_ msys_c_counter_binary_0_2_stub.v
// Design      : msys_c_counter_binary_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *)
module msys_c_counter_binary_0_2(CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,SCLR,Q[6:0]" */;
  input CLK;
  input SCLR;
  output [6:0]Q;
endmodule
