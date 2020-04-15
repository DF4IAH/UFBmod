-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 12 12:39:05 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_trx_050mhz000_PLL_0/mcu_clk_trx_050mhz000_PLL_0_stub.vhdl
-- Design      : mcu_clk_trx_050mhz000_PLL_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_clk_trx_050mhz000_PLL_0 is
  Port ( 
    clk_in2 : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_200mhz000 : out STD_LOGIC;
    clk_177mhz778 : out STD_LOGIC;
    clk_050mhz000 : out STD_LOGIC;
    clk_025mhz000 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mcu_clk_trx_050mhz000_PLL_0;

architecture stub of mcu_clk_trx_050mhz000_PLL_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in2,clk_in_sel,clk_200mhz000,clk_177mhz778,clk_050mhz000,clk_025mhz000,reset,clk_in1";
begin
end;
