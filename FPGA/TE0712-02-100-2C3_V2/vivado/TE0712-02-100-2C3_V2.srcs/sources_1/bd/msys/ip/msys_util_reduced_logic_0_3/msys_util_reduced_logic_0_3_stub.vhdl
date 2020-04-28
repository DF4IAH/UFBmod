-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Tue Apr 28 23:53:39 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top msys_util_reduced_logic_0_3 -prefix
--               msys_util_reduced_logic_0_3_ msys_util_reduced_logic_0_3_stub.vhdl
-- Design      : msys_util_reduced_logic_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_util_reduced_logic_0_3 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC
  );

end msys_util_reduced_logic_0_3;

architecture stub of msys_util_reduced_logic_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[11:0],Res";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.2.1";
begin
end;
