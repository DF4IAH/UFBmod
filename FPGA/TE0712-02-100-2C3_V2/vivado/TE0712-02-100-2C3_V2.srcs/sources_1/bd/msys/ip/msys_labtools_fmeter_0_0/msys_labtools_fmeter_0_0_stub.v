// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 21 20:17:28 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_labtools_fmeter_0_0 -prefix
//               msys_labtools_fmeter_0_0_ msys_labtools_fmeter_0_0_stub.v
// Design      : msys_labtools_fmeter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "labtools_fmeter,Vivado 2019.2.1" *)
module msys_labtools_fmeter_0_0(refclk, fin, F0, F1, F2, F3, F4, update)
/* synthesis syn_black_box black_box_pad_pin="refclk,fin[4:0],F0[31:0],F1[31:0],F2[31:0],F3[31:0],F4[31:0],update" */;
  input refclk;
  input [4:0]fin;
  output [31:0]F0;
  output [31:0]F1;
  output [31:0]F2;
  output [31:0]F3;
  output [31:0]F4;
  output update;
endmodule
