// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Sun Sep  1 20:49:56 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mcu_LVDS_in_tlast_gen_REDLOG_0_0 -prefix
//               mcu_LVDS_in_tlast_gen_REDLOG_0_0_ mcu_LVDS_in_out_sample_clken_REDLOG_0_0_stub.v
// Design      : mcu_LVDS_in_out_sample_clken_REDLOG_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.1.2" *)
module mcu_LVDS_in_tlast_gen_REDLOG_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[10:0],Res" */;
  input [10:0]Op1;
  output Res;
endmodule
