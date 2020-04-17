-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:57:23 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top msys_microblaze_mcs_0_0 -prefix
--               msys_microblaze_mcs_0_0_ msys_microblaze_mcs_0_0_stub.vhdl
-- Design      : msys_microblaze_mcs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_microblaze_mcs_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end msys_microblaze_mcs_0_0;

architecture stub of msys_microblaze_mcs_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,GPIO1_tri_i[31:0],GPIO1_tri_o[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_cf59,Vivado 2019.2.1";
begin
end;
