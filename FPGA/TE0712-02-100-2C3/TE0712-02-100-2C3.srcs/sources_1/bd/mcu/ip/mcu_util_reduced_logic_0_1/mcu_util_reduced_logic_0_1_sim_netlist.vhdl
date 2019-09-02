-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sun Sep  1 20:48:53 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_util_reduced_logic_0_1/mcu_util_reduced_logic_0_1_sim_netlist.vhdl
-- Design      : mcu_util_reduced_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_util_reduced_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_util_reduced_logic_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_util_reduced_logic_0_1 : entity is "mcu_util_reduced_logic_0_1,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_util_reduced_logic_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_util_reduced_logic_0_1 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.1.2";
end mcu_util_reduced_logic_0_1;

architecture STRUCTURE of mcu_util_reduced_logic_0_1 is
begin
Res_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op1(1),
      O => Res
    );
end STRUCTURE;
