//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f021_wrapper.bd
//Design : bd_f021_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f021_wrapper
   (Clk,
    GPIO1_tri_i,
    GPIO1_tri_o,
    INTC_IRQ,
    Reset);
  input Clk;
  input [7:0]GPIO1_tri_i;
  output [7:0]GPIO1_tri_o;
  output INTC_IRQ;
  input Reset;

  wire Clk;
  wire [7:0]GPIO1_tri_i;
  wire [7:0]GPIO1_tri_o;
  wire INTC_IRQ;
  wire Reset;

  bd_f021 bd_f021_i
       (.Clk(Clk),
        .GPIO1_tri_i(GPIO1_tri_i),
        .GPIO1_tri_o(GPIO1_tri_o),
        .INTC_IRQ(INTC_IRQ),
        .Reset(Reset));
endmodule
