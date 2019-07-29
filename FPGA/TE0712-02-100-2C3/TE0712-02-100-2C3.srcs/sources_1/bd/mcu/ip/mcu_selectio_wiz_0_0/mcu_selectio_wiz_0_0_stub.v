// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 29 19:32:35 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_selectio_wiz_0_0/mcu_selectio_wiz_0_0_stub.v
// Design      : mcu_selectio_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mcu_selectio_wiz_0_0(data_out_from_device, data_out_to_pins_p, 
  data_out_to_pins_n, clk_to_pins_p, clk_to_pins_n, clk_in, clk_div_in, clk_reset, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_out_from_device[7:0],data_out_to_pins_p[0:0],data_out_to_pins_n[0:0],clk_to_pins_p,clk_to_pins_n,clk_in,clk_div_in,clk_reset,io_reset" */;
  input [7:0]data_out_from_device;
  output [0:0]data_out_to_pins_p;
  output [0:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  input clk_in;
  input clk_div_in;
  input clk_reset;
  input io_reset;
endmodule
