-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Sat Apr 18 16:52:23 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top msys_util_reduced_logic_0_1 -prefix
--               msys_util_reduced_logic_0_1_ msys_util_reduced_logic_0_1_sim_netlist.vhdl
-- Design      : msys_util_reduced_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_util_reduced_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_util_reduced_logic_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_util_reduced_logic_0_1 : entity is "msys_util_reduced_logic_0_1,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of msys_util_reduced_logic_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of msys_util_reduced_logic_0_1 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.2.1";
end msys_util_reduced_logic_0_1;

architecture STRUCTURE of msys_util_reduced_logic_0_1 is
begin
Res_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Op1(0),
      I1 => Op1(1),
      O => Res
    );
end STRUCTURE;
