// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 22 23:43:50 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_selectio_wiz_0_1 -prefix
//               msys_selectio_wiz_0_1_ msys_selectio_wiz_0_1_stub.v
// Design      : msys_selectio_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module msys_selectio_wiz_0_1(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, data_out_from_device, data_out_to_pins_p, data_out_to_pins_n, 
  clk_to_pins_p, clk_to_pins_n, delay_locked, ref_clock, bitslip, clk_in_p, clk_in_n, 
  clk_div_out, clk_reset, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[1:0],data_in_from_pins_n[1:0],data_in_to_device[15:0],data_out_from_device[15:0],data_out_to_pins_p[1:0],data_out_to_pins_n[1:0],clk_to_pins_p,clk_to_pins_n,delay_locked,ref_clock,bitslip[1:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset" */;
  input [1:0]data_in_from_pins_p;
  input [1:0]data_in_from_pins_n;
  output [15:0]data_in_to_device;
  input [15:0]data_out_from_device;
  output [1:0]data_out_to_pins_p;
  output [1:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  output delay_locked;
  input ref_clock;
  input [1:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out;
  input clk_reset;
  input io_reset;
endmodule
