// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:20:45 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mcu_dmr_1_ONEWIRE_0 -prefix
//               mcu_dmr_1_ONEWIRE_0_ mcu_CDC_LVDS_in_0_stub.v
// Design      : mcu_CDC_LVDS_in_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1.2" *)
module mcu_dmr_1_ONEWIRE_0(a, d, dpra, clk, we, qspo_srst, qdpo_srst, qspo, qdpo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[31:0],dpra[3:0],clk,we,qspo_srst,qdpo_srst,qspo[31:0],qdpo[31:0]" */;
  input [3:0]a;
  input [31:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]qspo;
  output [31:0]qdpo;
endmodule
