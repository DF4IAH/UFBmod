-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sun Sep  1 20:45:00 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_LVDS_0/mcu_clk_32mhz_LVDS_0_stub.vhdl
-- Design      : mcu_clk_32mhz_LVDS_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_clk_32mhz_LVDS_0 is
  Port ( 
    clk_064mhz000_lvds : out STD_LOGIC;
    clk_016mhz000_lvds : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end mcu_clk_32mhz_LVDS_0;

architecture stub of mcu_clk_32mhz_LVDS_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_064mhz000_lvds,clk_016mhz000_lvds,locked,clk_in1_p,clk_in1_n";
begin
end;
