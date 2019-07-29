// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:microblaze_mcs:3.0
// IP Revision: 10

(* X_CORE_INFO = "bd_f021,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "mcu_microblaze_mcs_0_0,bd_f021,{}" *)
(* CORE_GENERATION_INFO = "mcu_microblaze_mcs_0_0,bd_f021,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze_mcs,x_ipVersion=3.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,JTAG_CHAIN=2,MICROBLAZE_INSTANCE=microblaze_0,AVOID_PRIMITIVES=0,PATH=mcs_0,FREQ=100.0,OPTIMIZATION=0,DEBUG_ENABLED=0,TRACE=0,ECC=0,MEMSIZE=32768,USE_IO_BUS=0,USE_UART_RX=1,USE_UART_TX=1,UART_BAUDRATE=9600,UART_PROG_BAUDRATE=1,UART_DATA_BITS=8,UART_USE_PARITY=0,UART_ODD_PARITY=0,UART_RX_INTERRUPT=1,UA\
RT_TX_INTERRUPT=1,UART_ERROR_INTERRUPT=1,USE_FIT1=1,FIT1_No_CLOCKS=100000,FIT1_INTERRUPT=1,USE_FIT2=0,FIT2_No_CLOCKS=6216,FIT2_INTERRUPT=0,USE_FIT3=0,FIT3_No_CLOCKS=6216,FIT3_INTERRUPT=0,USE_FIT4=0,FIT4_No_CLOCKS=6216,FIT4_INTERRUPT=0,USE_PIT1=1,PIT1_SIZE=32,PIT1_READABLE=1,PIT1_PRESCALER=0,PIT1_INTERRUPT=1,USE_PIT2=0,PIT2_SIZE=32,PIT2_READABLE=1,PIT2_PRESCALER=0,PIT2_INTERRUPT=0,USE_PIT3=0,PIT3_SIZE=32,PIT3_READABLE=1,PIT3_PRESCALER=0,PIT3_INTERRUPT=0,USE_PIT4=0,PIT4_SIZE=32,PIT4_READABLE=1,PIT\
4_PRESCALER=0,PIT4_INTERRUPT=0,USE_GPO1=1,GPO1_SIZE=8,GPO1_INIT=0x00000000,USE_GPO2=0,GPO2_SIZE=32,GPO2_INIT=0x00000000,USE_GPO3=0,GPO3_SIZE=32,GPO3_INIT=0x00000000,USE_GPO4=0,GPO4_SIZE=32,GPO4_INIT=0x00000000,USE_GPI1=1,GPI1_SIZE=8,GPI1_INTERRUPT=0,USE_GPI2=0,GPI2_SIZE=32,GPI2_INTERRUPT=0,USE_GPI3=0,GPI3_SIZE=32,GPI3_INTERRUPT=0,USE_GPI4=0,GPI4_SIZE=32,GPI4_INTERRUPT=0,INTC_USE_EXT_INTR=0,INTC_INTR_SIZE=1,INTC_LEVEL_EDGE=0x0000,INTC_POSITIVE=0xFFFF,INTC_ASYNC_INTR=0xFFFF,INTC_NUM_SYNC_FF=2,Comp\
onent_Name=mcu_microblaze_mcs_0_0,USE_BOARD_FLOW=false,CLK_BOARD_INTERFACE=Custom,RESET_BOARD_INTERFACE=Custom,GPIO1_BOARD_INTERFACE=Custom,GPIO2_BOARD_INTERFACE=Custom,GPIO3_BOARD_INTERFACE=Custom,GPIO4_BOARD_INTERFACE=Custom,UART_BOARD_INTERFACE=Custom}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mcu_microblaze_mcs_0_0 (
  Clk,
  Reset,
  UART_Interrupt,
  FIT1_Interrupt,
  FIT1_Toggle,
  PIT1_Interrupt,
  PIT1_Toggle,
  INTC_IRQ,
  UART_rxd,
  UART_txd,
  GPIO1_tri_i,
  GPIO1_tri_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *)
input wire Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.Reset RST" *)
input wire Reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.UART_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.UART_Interrupt INTERRUPT" *)
output wire UART_Interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.FIT1_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.FIT1_Interrupt INTERRUPT" *)
output wire FIT1_Interrupt;
output wire FIT1_Toggle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PIT1_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PIT1_Interrupt INTERRUPT" *)
output wire PIT1_Interrupt;
output wire PIT1_Toggle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTC_IRQ INTERRUPT" *)
output wire INTC_IRQ;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *)
input wire UART_rxd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *)
output wire UART_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_I" *)
input wire [7 : 0] GPIO1_tri_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 8, C_GPO1_INIT 0x00000000, C_USE_GPI1 1, C_GPI1_SIZE 8, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O" *)
output wire [7 : 0] GPIO1_tri_o;

  bd_f021 inst (
    .Clk(Clk),
    .Reset(Reset),
    .UART_Interrupt(UART_Interrupt),
    .FIT1_Interrupt(FIT1_Interrupt),
    .FIT1_Toggle(FIT1_Toggle),
    .PIT1_Interrupt(PIT1_Interrupt),
    .PIT1_Toggle(PIT1_Toggle),
    .INTC_IRQ(INTC_IRQ),
    .UART_rxd(UART_rxd),
    .UART_txd(UART_txd),
    .GPIO1_tri_i(GPIO1_tri_i),
    .GPIO1_tri_o(GPIO1_tri_o)
  );
endmodule
