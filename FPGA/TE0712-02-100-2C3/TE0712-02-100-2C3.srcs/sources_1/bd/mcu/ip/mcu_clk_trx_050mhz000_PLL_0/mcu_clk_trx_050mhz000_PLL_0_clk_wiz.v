
// file: mcu_clk_trx_050mhz000_PLL_0.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// clk_200mhz000___200.000______0.000______50.0_______96.666____120.359
// clk_177mhz778___177.778______0.000______50.0_______98.321____120.359
// clk_050mhz000____50.000______0.000______50.0______118.639____120.359
// clk_025mhz000____25.000______0.000______50.0______131.885____120.359
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary______________50____________0.010
// _secondary____________50____________0.010

`timescale 1ps/1ps

module mcu_clk_trx_050mhz000_PLL_0_clk_wiz 

 (// Clock in ports
  input         clk_in2,
  input         clk_in_sel,
  // Clock out ports
  output        clk_200mhz000,
  output        clk_177mhz778,
  output        clk_050mhz000,
  output        clk_025mhz000,
  // Status and control signals
  input         reset,
  input         clk_in1
 );
  // Input buffering
  //------------------------------------
wire clk_in1_mcu_clk_trx_050mhz000_PLL_0;
wire clk_in2_mcu_clk_trx_050mhz000_PLL_0;
  assign clk_in1_mcu_clk_trx_050mhz000_PLL_0 = clk_in1;

  assign clk_in2_mcu_clk_trx_050mhz000_PLL_0 = clk_in2;



  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_out5_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_out6_mcu_clk_trx_050mhz000_PLL_0;
  wire        clk_out7_mcu_clk_trx_050mhz000_PLL_0;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_mcu_clk_trx_050mhz000_PLL_0;
  wire        clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0;
  wire        clkfboutb_unused;
   wire clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

  PLLE2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT        (32),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_DIVIDE       (8),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT1_DIVIDE       (9),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT2_DIVIDE       (32),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT3_DIVIDE       (64),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKIN1_PERIOD        (20.000),
    .CLKIN2_PERIOD        (20.000))
  plle2_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_mcu_clk_trx_050mhz000_PLL_0),
    .CLKOUT0             (clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0),
    .CLKOUT1             (clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0),
    .CLKOUT2             (clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0),
    .CLKOUT3             (clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0),
    .CLKIN1              (clk_in1_mcu_clk_trx_050mhz000_PLL_0),
    .CLKIN2              (clk_in2_mcu_clk_trx_050mhz000_PLL_0),
    .CLKINSEL            (clk_in_sel),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Other control and status signals
    .LOCKED              (locked_int),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));
  assign reset_high = reset; 

// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------

  BUFG clkf_buf
   (.O (clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0),
    .I (clkfbout_mcu_clk_trx_050mhz000_PLL_0));






  BUFG clkout1_buf
   (.O   (clk_200mhz000),
    .I   (clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0));


  BUFG clkout2_buf
   (.O   (clk_177mhz778),
    .I   (clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0));

  BUFG clkout3_buf
   (.O   (clk_050mhz000),
    .I   (clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0));

  BUFG clkout4_buf
   (.O   (clk_025mhz000),
    .I   (clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0));



endmodule
