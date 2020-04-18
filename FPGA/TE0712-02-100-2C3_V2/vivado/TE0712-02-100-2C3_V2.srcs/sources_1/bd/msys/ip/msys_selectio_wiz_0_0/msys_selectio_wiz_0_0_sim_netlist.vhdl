-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Sat Apr 18 16:52:24 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_selectio_wiz_0_0/msys_selectio_wiz_0_0_sim_netlist.vhdl
-- Design      : msys_selectio_wiz_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz is
  port (
    data_in_from_pins : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz : entity is 3;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz : entity is "msys_selectio_wiz_0_0_selectio_wiz";
  attribute SYS_W : integer;
  attribute SYS_W of msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz : entity is 3;
end msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz;

architecture STRUCTURE of msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz is
  signal data_in_from_pins_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \pins[0].fdre_in_inst\ : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of \pins[0].fdre_in_inst\ : label is "TRUE";
  attribute BOX_TYPE of \pins[0].ibuf_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \pins[0].ibuf_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \pins[0].ibuf_inst\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \pins[0].ibuf_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[1].fdre_in_inst\ : label is "PRIMITIVE";
  attribute IOB of \pins[1].fdre_in_inst\ : label is "TRUE";
  attribute BOX_TYPE of \pins[1].ibuf_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].ibuf_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[1].ibuf_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[1].ibuf_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[2].fdre_in_inst\ : label is "PRIMITIVE";
  attribute IOB of \pins[2].fdre_in_inst\ : label is "TRUE";
  attribute BOX_TYPE of \pins[2].ibuf_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[2].ibuf_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[2].ibuf_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[2].ibuf_inst\ : label is "AUTO";
begin
\pins[0].fdre_in_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(0),
      Q => data_in_to_device(0),
      R => io_reset
    );
\pins[0].ibuf_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in_from_pins(0),
      O => data_in_from_pins_int(0)
    );
\pins[1].fdre_in_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(1),
      Q => data_in_to_device(1),
      R => io_reset
    );
\pins[1].ibuf_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in_from_pins(1),
      O => data_in_from_pins_int(1)
    );
\pins[2].fdre_in_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => data_in_from_pins_int(2),
      Q => data_in_to_device(2),
      R => io_reset
    );
\pins[2].ibuf_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in_from_pins(2),
      O => data_in_from_pins_int(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_selectio_wiz_0_0 is
  port (
    data_in_from_pins : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_selectio_wiz_0_0 : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of msys_selectio_wiz_0_0 : entity is 3;
  attribute SYS_W : integer;
  attribute SYS_W of msys_selectio_wiz_0_0 : entity is 3;
end msys_selectio_wiz_0_0;

architecture STRUCTURE of msys_selectio_wiz_0_0 is
  attribute DEV_W of inst : label is 3;
  attribute SYS_W of inst : label is 3;
begin
inst: entity work.msys_selectio_wiz_0_0_msys_selectio_wiz_0_0_selectio_wiz
     port map (
      clk_in => clk_in,
      data_in_from_pins(2 downto 0) => data_in_from_pins(2 downto 0),
      data_in_to_device(2 downto 0) => data_in_to_device(2 downto 0),
      io_reset => io_reset
    );
end STRUCTURE;
