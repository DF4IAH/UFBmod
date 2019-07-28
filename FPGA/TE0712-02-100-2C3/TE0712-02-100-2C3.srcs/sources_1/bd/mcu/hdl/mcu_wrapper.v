//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jul 28 21:48:36 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target mcu_wrapper.bd
//Design      : mcu_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_wrapper
   (DDR3_SDRAM_addr,
    DDR3_SDRAM_ba,
    DDR3_SDRAM_cas_n,
    DDR3_SDRAM_ck_n,
    DDR3_SDRAM_ck_p,
    DDR3_SDRAM_cke,
    DDR3_SDRAM_cs_n,
    DDR3_SDRAM_dm,
    DDR3_SDRAM_dq,
    DDR3_SDRAM_dqs_n,
    DDR3_SDRAM_dqs_p,
    DDR3_SDRAM_odt,
    DDR3_SDRAM_ras_n,
    DDR3_SDRAM_reset_n,
    DDR3_SDRAM_we_n,
    init_calib_complete,
    pll_clk_n,
    pll_clk_p,
    reset);
  output [14:0]DDR3_SDRAM_addr;
  output [2:0]DDR3_SDRAM_ba;
  output DDR3_SDRAM_cas_n;
  output [0:0]DDR3_SDRAM_ck_n;
  output [0:0]DDR3_SDRAM_ck_p;
  output [0:0]DDR3_SDRAM_cke;
  output [0:0]DDR3_SDRAM_cs_n;
  output [3:0]DDR3_SDRAM_dm;
  inout [31:0]DDR3_SDRAM_dq;
  inout [3:0]DDR3_SDRAM_dqs_n;
  inout [3:0]DDR3_SDRAM_dqs_p;
  output [0:0]DDR3_SDRAM_odt;
  output DDR3_SDRAM_ras_n;
  output DDR3_SDRAM_reset_n;
  output DDR3_SDRAM_we_n;
  output init_calib_complete;
  input pll_clk_n;
  input pll_clk_p;
  input reset;

  wire [14:0]DDR3_SDRAM_addr;
  wire [2:0]DDR3_SDRAM_ba;
  wire DDR3_SDRAM_cas_n;
  wire [0:0]DDR3_SDRAM_ck_n;
  wire [0:0]DDR3_SDRAM_ck_p;
  wire [0:0]DDR3_SDRAM_cke;
  wire [0:0]DDR3_SDRAM_cs_n;
  wire [3:0]DDR3_SDRAM_dm;
  wire [31:0]DDR3_SDRAM_dq;
  wire [3:0]DDR3_SDRAM_dqs_n;
  wire [3:0]DDR3_SDRAM_dqs_p;
  wire [0:0]DDR3_SDRAM_odt;
  wire DDR3_SDRAM_ras_n;
  wire DDR3_SDRAM_reset_n;
  wire DDR3_SDRAM_we_n;
  wire init_calib_complete;
  wire pll_clk_n;
  wire pll_clk_p;
  wire reset;

  mcu mcu_i
       (.DDR3_SDRAM_addr(DDR3_SDRAM_addr),
        .DDR3_SDRAM_ba(DDR3_SDRAM_ba),
        .DDR3_SDRAM_cas_n(DDR3_SDRAM_cas_n),
        .DDR3_SDRAM_ck_n(DDR3_SDRAM_ck_n),
        .DDR3_SDRAM_ck_p(DDR3_SDRAM_ck_p),
        .DDR3_SDRAM_cke(DDR3_SDRAM_cke),
        .DDR3_SDRAM_cs_n(DDR3_SDRAM_cs_n),
        .DDR3_SDRAM_dm(DDR3_SDRAM_dm),
        .DDR3_SDRAM_dq(DDR3_SDRAM_dq),
        .DDR3_SDRAM_dqs_n(DDR3_SDRAM_dqs_n),
        .DDR3_SDRAM_dqs_p(DDR3_SDRAM_dqs_p),
        .DDR3_SDRAM_odt(DDR3_SDRAM_odt),
        .DDR3_SDRAM_ras_n(DDR3_SDRAM_ras_n),
        .DDR3_SDRAM_reset_n(DDR3_SDRAM_reset_n),
        .DDR3_SDRAM_we_n(DDR3_SDRAM_we_n),
        .init_calib_complete(init_calib_complete),
        .pll_clk_n(pll_clk_n),
        .pll_clk_p(pll_clk_p),
        .reset(reset));
endmodule
