-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sun Sep  1 20:49:50 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_LVDS_in_out_bin_clken_REDLOG_0_0 -prefix
--               mcu_LVDS_in_out_bin_clken_REDLOG_0_0_ mcu_LVDS_in_out_bin_clken_REDLOG_0_0_stub.vhdl
-- Design      : mcu_LVDS_in_out_bin_clken_REDLOG_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_LVDS_in_out_bin_clken_REDLOG_0_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC
  );

end mcu_LVDS_in_out_bin_clken_REDLOG_0_0;

architecture stub of mcu_LVDS_in_out_bin_clken_REDLOG_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[3:0],Res";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.1.2";
begin
end;
