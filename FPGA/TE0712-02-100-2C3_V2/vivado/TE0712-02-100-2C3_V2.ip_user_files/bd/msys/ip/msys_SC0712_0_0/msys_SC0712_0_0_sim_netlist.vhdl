-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:47:59 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top msys_SC0712_0_0 -prefix
--               msys_SC0712_0_0_ msys_SC0712_0_0_sim_netlist.vhdl
-- Design      : msys_SC0712_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_SC0712_0_0_SC0712 is
  port (
    sda_i : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    ext_sda : inout STD_LOGIC;
    GPIO1_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mcs_clk_in : in STD_LOGIC;
    sda_t : in STD_LOGIC
  );
end msys_SC0712_0_0_SC0712;

architecture STRUCTURE of msys_SC0712_0_0_SC0712 is
  signal T : STD_LOGIC;
  signal \rst_delay_i_reg[2]_srl2_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of IOBUF_inst : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rst_delay_i_reg[2]_srl2\ : label is "\U0/rst_delay_i_reg ";
  attribute srl_name : string;
  attribute srl_name of \rst_delay_i_reg[2]_srl2\ : label is "\U0/rst_delay_i_reg[2]_srl2 ";
begin
IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => T,
      IO => ext_sda,
      O => sda_i,
      T => T
    );
IOBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_t,
      I1 => GPIO1_O(0),
      O => T
    );
\rst_delay_i_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => mcs_clk_in,
      D => GPIO1_O(1),
      Q => \rst_delay_i_reg[2]_srl2_n_0\
    );
\rst_delay_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mcs_clk_in,
      CE => '1',
      D => \rst_delay_i_reg[2]_srl2_n_0\,
      Q => reset_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_SC0712_0_0 is
  port (
    mcs_clk_out : out STD_LOGIC;
    mcs_clk_in : in STD_LOGIC;
    reset_out : out STD_LOGIC;
    GPIO1_O : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_sda : inout STD_LOGIC;
    ext_scl_o : out STD_LOGIC;
    mon_GPIO1_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mon_GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sda_i : out STD_LOGIC;
    sda_o : in STD_LOGIC;
    sda_t : in STD_LOGIC;
    scl_i : out STD_LOGIC;
    scl_o : in STD_LOGIC;
    scl_t : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_SC0712_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_SC0712_0_0 : entity is "msys_SC0712_0_0,SC0712,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of msys_SC0712_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of msys_SC0712_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of msys_SC0712_0_0 : entity is "SC0712,Vivado 2019.2.1";
end msys_SC0712_0_0;

architecture STRUCTURE of msys_SC0712_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^gpio1_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^mcs_clk_in\ : STD_LOGIC;
  signal \^scl_t\ : STD_LOGIC;
  signal \^sda_i\ : STD_LOGIC;
  attribute DRIVE : integer;
  attribute DRIVE of sda_i : signal is 12;
  attribute IBUF_LOW_PWR : boolean;
  attribute IBUF_LOW_PWR of sda_i : signal is std.standard.true;
  attribute SLEW : string;
  attribute SLEW of sda_i : signal is "SLOW";
  attribute x_interface_info : string;
  attribute x_interface_info of mcs_clk_out : signal is "xilinx.com:signal:clock:1.0 MCS_CLK_OUT CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of mcs_clk_out : signal is "XIL_INTERFACENAME MCS_CLK_OUT, FREQ_HZ 100000000, ASSOCIATED_RESET reset_out, PHASE 0.000, CLK_DOMAIN msys_SC0712_0_0_mcs_clk_out, INSERT_VIP 0";
  attribute x_interface_info of reset_out : signal is "xilinx.com:signal:reset:1.0 reset_out RST";
  attribute x_interface_parameter of reset_out : signal is "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of scl_i : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_I";
  attribute x_interface_info of scl_o : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_O";
  attribute x_interface_info of scl_t : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_T";
  attribute x_interface_info of sda_i : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_I";
  attribute x_interface_info of sda_o : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_O";
  attribute x_interface_info of sda_t : signal is "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_T";
  attribute x_interface_info of GPIO1_I : signal is "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_I";
  attribute x_interface_info of GPIO1_O : signal is "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_O";
begin
  GPIO1_I(31) <= \<const0>\;
  GPIO1_I(30) <= \<const0>\;
  GPIO1_I(29) <= \<const0>\;
  GPIO1_I(28) <= \<const0>\;
  GPIO1_I(27) <= \<const0>\;
  GPIO1_I(26) <= \<const0>\;
  GPIO1_I(25) <= \<const0>\;
  GPIO1_I(24) <= \<const0>\;
  GPIO1_I(23) <= \<const0>\;
  GPIO1_I(22) <= \<const0>\;
  GPIO1_I(21) <= \<const0>\;
  GPIO1_I(20) <= \<const0>\;
  GPIO1_I(19) <= \<const0>\;
  GPIO1_I(18) <= \<const0>\;
  GPIO1_I(17) <= \<const0>\;
  GPIO1_I(16) <= \<const0>\;
  GPIO1_I(15) <= \<const0>\;
  GPIO1_I(14) <= \<const0>\;
  GPIO1_I(13) <= \<const0>\;
  GPIO1_I(12) <= \<const0>\;
  GPIO1_I(11) <= \<const0>\;
  GPIO1_I(10) <= \<const0>\;
  GPIO1_I(9) <= \<const0>\;
  GPIO1_I(8) <= \<const0>\;
  GPIO1_I(7) <= \<const0>\;
  GPIO1_I(6) <= \<const0>\;
  GPIO1_I(5) <= \<const0>\;
  GPIO1_I(4) <= \<const0>\;
  GPIO1_I(3) <= \<const0>\;
  GPIO1_I(2) <= \<const0>\;
  GPIO1_I(1) <= \^gpio1_o\(1);
  GPIO1_I(0) <= \^sda_i\;
  \^gpio1_o\(31 downto 0) <= GPIO1_O(31 downto 0);
  \^mcs_clk_in\ <= mcs_clk_in;
  \^scl_t\ <= scl_t;
  mcs_clk_out <= \^mcs_clk_in\;
  mon_GPIO1_I(31) <= \<const0>\;
  mon_GPIO1_I(30) <= \<const0>\;
  mon_GPIO1_I(29) <= \<const0>\;
  mon_GPIO1_I(28) <= \<const0>\;
  mon_GPIO1_I(27) <= \<const0>\;
  mon_GPIO1_I(26) <= \<const0>\;
  mon_GPIO1_I(25) <= \<const0>\;
  mon_GPIO1_I(24) <= \<const0>\;
  mon_GPIO1_I(23) <= \<const0>\;
  mon_GPIO1_I(22) <= \<const0>\;
  mon_GPIO1_I(21) <= \<const0>\;
  mon_GPIO1_I(20) <= \<const0>\;
  mon_GPIO1_I(19) <= \<const0>\;
  mon_GPIO1_I(18) <= \<const0>\;
  mon_GPIO1_I(17) <= \<const0>\;
  mon_GPIO1_I(16) <= \<const0>\;
  mon_GPIO1_I(15) <= \<const0>\;
  mon_GPIO1_I(14) <= \<const0>\;
  mon_GPIO1_I(13) <= \<const0>\;
  mon_GPIO1_I(12) <= \<const0>\;
  mon_GPIO1_I(11) <= \<const0>\;
  mon_GPIO1_I(10) <= \<const0>\;
  mon_GPIO1_I(9) <= \<const0>\;
  mon_GPIO1_I(8) <= \<const0>\;
  mon_GPIO1_I(7) <= \<const0>\;
  mon_GPIO1_I(6) <= \<const0>\;
  mon_GPIO1_I(5) <= \<const0>\;
  mon_GPIO1_I(4) <= \<const0>\;
  mon_GPIO1_I(3) <= \<const0>\;
  mon_GPIO1_I(2) <= \<const0>\;
  mon_GPIO1_I(1) <= \^gpio1_o\(1);
  mon_GPIO1_I(0) <= \^sda_i\;
  mon_GPIO1_O(31 downto 0) <= \^gpio1_o\(31 downto 0);
  scl_i <= \^scl_t\;
  sda_i <= \^sda_i\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.msys_SC0712_0_0_SC0712
     port map (
      GPIO1_O(1) => \^gpio1_o\(31),
      GPIO1_O(0) => \^gpio1_o\(0),
      ext_sda => ext_sda,
      mcs_clk_in => \^mcs_clk_in\,
      reset_out => reset_out,
      sda_i => \^sda_i\,
      sda_t => sda_t
    );
ext_scl_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^scl_t\,
      I1 => \^gpio1_o\(1),
      O => ext_scl_o
    );
end STRUCTURE;
