-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sun Sep  1 20:51:03 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_util_vector_logic_0_2 -prefix
--               mcu_util_vector_logic_0_2_ mcu_util_vector_logic_0_2_stub.vhdl
-- Design      : mcu_util_vector_logic_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_util_vector_logic_0_2 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end mcu_util_vector_logic_0_2;

architecture stub of mcu_util_vector_logic_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[10:0],Op2[10:0],Res[10:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1.2";
begin
end;
