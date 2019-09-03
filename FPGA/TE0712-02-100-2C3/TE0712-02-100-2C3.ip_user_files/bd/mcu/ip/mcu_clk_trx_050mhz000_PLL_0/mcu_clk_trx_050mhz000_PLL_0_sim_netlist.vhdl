-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Tue Sep  3 00:28:54 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_clk_trx_050mhz000_PLL_0 -prefix
--               mcu_clk_trx_050mhz000_PLL_0_ mcu_clk_trx_050mhz000_PLL_0_sim_netlist.vhdl
-- Design      : mcu_clk_trx_050mhz000_PLL_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_trx_050mhz000_PLL_0_mcu_clk_trx_050mhz000_PLL_0_clk_wiz is
  port (
    clk_in2 : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_200mhz000 : out STD_LOGIC;
    clk_177mhz778 : out STD_LOGIC;
    clk_050mhz000 : out STD_LOGIC;
    clk_025mhz000 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end mcu_clk_trx_050mhz000_PLL_0_mcu_clk_trx_050mhz000_PLL_0_clk_wiz;

architecture STRUCTURE of mcu_clk_trx_050mhz000_PLL_0_mcu_clk_trx_050mhz000_PLL_0_clk_wiz is
  signal clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal clkfbout_mcu_clk_trx_050mhz000_PLL_0 : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout4_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_mcu_clk_trx_050mhz000_PLL_0,
      O => clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0,
      O => clk_200mhz000
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0,
      O => clk_177mhz778
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0,
      O => clk_050mhz000
    );
clkout4_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0,
      O => clk_025mhz000
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 32,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 20.000000,
      CLKIN2_PERIOD => 20.000000,
      CLKOUT0_DIVIDE => 8,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 9,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 32,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 64,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_mcu_clk_trx_050mhz000_PLL_0,
      CLKFBOUT => clkfbout_mcu_clk_trx_050mhz000_PLL_0,
      CLKIN1 => clk_in1,
      CLKIN2 => clk_in2,
      CLKINSEL => clk_in_sel,
      CLKOUT0 => clk_200mhz000_mcu_clk_trx_050mhz000_PLL_0,
      CLKOUT1 => clk_177mhz778_mcu_clk_trx_050mhz000_PLL_0,
      CLKOUT2 => clk_050mhz000_mcu_clk_trx_050mhz000_PLL_0,
      CLKOUT3 => clk_025mhz000_mcu_clk_trx_050mhz000_PLL_0,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_plle2_adv_inst_LOCKED_UNCONNECTED,
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_trx_050mhz000_PLL_0 is
  port (
    clk_in2 : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_200mhz000 : out STD_LOGIC;
    clk_177mhz778 : out STD_LOGIC;
    clk_050mhz000 : out STD_LOGIC;
    clk_025mhz000 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_clk_trx_050mhz000_PLL_0 : entity is true;
end mcu_clk_trx_050mhz000_PLL_0;

architecture STRUCTURE of mcu_clk_trx_050mhz000_PLL_0 is
begin
inst: entity work.mcu_clk_trx_050mhz000_PLL_0_mcu_clk_trx_050mhz000_PLL_0_clk_wiz
     port map (
      clk_025mhz000 => clk_025mhz000,
      clk_050mhz000 => clk_050mhz000,
      clk_177mhz778 => clk_177mhz778,
      clk_200mhz000 => clk_200mhz000,
      clk_in1 => clk_in1,
      clk_in2 => clk_in2,
      clk_in_sel => clk_in_sel,
      reset => reset
    );
end STRUCTURE;
