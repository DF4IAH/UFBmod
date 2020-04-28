// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:39 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_util_reduced_logic_0_3 -prefix
//               msys_util_reduced_logic_0_3_ msys_util_reduced_logic_0_3_stub.v
// Design      : msys_util_reduced_logic_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.2.1" *)
module msys_util_reduced_logic_0_3(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[11:0],Res" */;
  input [11:0]Op1;
  output Res;
endmodule
