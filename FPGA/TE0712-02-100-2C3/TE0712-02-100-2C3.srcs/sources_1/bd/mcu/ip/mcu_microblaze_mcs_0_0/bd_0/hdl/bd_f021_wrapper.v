//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f021_wrapper.bd
//Design : bd_f021_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f021_wrapper
   (Clk,
    FIT1_Interrupt,
    FIT1_Toggle,
    GPIO1_tri_i,
    GPIO1_tri_o,
    INTC_IRQ,
    PIT1_Interrupt,
    PIT1_Toggle,
    Reset,
    UART_Interrupt);
  input Clk;
  output FIT1_Interrupt;
  output FIT1_Toggle;
  input [7:0]GPIO1_tri_i;
  output [7:0]GPIO1_tri_o;
  output INTC_IRQ;
  output PIT1_Interrupt;
  output PIT1_Toggle;
  input Reset;
  output UART_Interrupt;

  wire Clk;
  wire FIT1_Interrupt;
  wire FIT1_Toggle;
  wire [7:0]GPIO1_tri_i;
  wire [7:0]GPIO1_tri_o;
  wire INTC_IRQ;
  wire PIT1_Interrupt;
  wire PIT1_Toggle;
  wire Reset;
  wire UART_Interrupt;

  bd_f021 bd_f021_i
       (.Clk(Clk),
        .FIT1_Interrupt(FIT1_Interrupt),
        .FIT1_Toggle(FIT1_Toggle),
        .GPIO1_tri_i(GPIO1_tri_i),
        .GPIO1_tri_o(GPIO1_tri_o),
        .INTC_IRQ(INTC_IRQ),
        .PIT1_Interrupt(PIT1_Interrupt),
        .PIT1_Toggle(PIT1_Toggle),
        .Reset(Reset),
        .UART_Interrupt(UART_Interrupt));
endmodule
