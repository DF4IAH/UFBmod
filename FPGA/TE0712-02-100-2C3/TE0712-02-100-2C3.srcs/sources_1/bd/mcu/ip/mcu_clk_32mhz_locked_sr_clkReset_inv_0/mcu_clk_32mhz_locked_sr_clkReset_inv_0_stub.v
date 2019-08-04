// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:02:40 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_clkReset_inv_0/mcu_clk_32mhz_locked_sr_clkReset_inv_0_stub.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *)
module mcu_clk_32mhz_locked_sr_clkReset_inv_0(A, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[0:0],CLK,S[0:0]" */;
  input [0:0]A;
  input CLK;
  output [0:0]S;
endmodule
