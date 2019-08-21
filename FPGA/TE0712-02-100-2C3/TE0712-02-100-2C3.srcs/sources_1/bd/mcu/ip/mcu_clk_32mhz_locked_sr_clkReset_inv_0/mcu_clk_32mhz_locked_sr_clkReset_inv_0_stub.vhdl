-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Aug 15 19:11:38 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_clk_32mhz_locked_sr_clkReset_inv_0 -prefix
--               mcu_clk_32mhz_locked_sr_clkReset_inv_0_ mcu_clk_32mhz_locked_sr_clkReset_inv_0_stub.vhdl
-- Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_clk_32mhz_locked_sr_clkReset_inv_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end mcu_clk_32mhz_locked_sr_clkReset_inv_0;

architecture stub of mcu_clk_32mhz_locked_sr_clkReset_inv_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[0:0],CLK,S[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_13,Vivado 2019.1.2";
begin
end;
