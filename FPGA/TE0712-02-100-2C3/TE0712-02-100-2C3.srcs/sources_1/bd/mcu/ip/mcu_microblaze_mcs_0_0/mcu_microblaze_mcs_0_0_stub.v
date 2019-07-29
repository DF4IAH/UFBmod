// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 29 16:01:42 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_microblaze_mcs_0_0/mcu_microblaze_mcs_0_0_stub.v
// Design      : mcu_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f021,Vivado 2018.3" *)
module mcu_microblaze_mcs_0_0(Clk, Reset, UART_Interrupt, FIT1_Interrupt, 
  FIT1_Toggle, PIT1_Interrupt, PIT1_Toggle, INTC_IRQ, UART_rxd, UART_txd, GPIO1_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,UART_Interrupt,FIT1_Interrupt,FIT1_Toggle,PIT1_Interrupt,PIT1_Toggle,INTC_IRQ,UART_rxd,UART_txd,GPIO1_tri_o[7:0]" */;
  input Clk;
  input Reset;
  output UART_Interrupt;
  output FIT1_Interrupt;
  output FIT1_Toggle;
  output PIT1_Interrupt;
  output PIT1_Toggle;
  output INTC_IRQ;
  input UART_rxd;
  output UART_txd;
  output [7:0]GPIO1_tri_o;
endmodule
