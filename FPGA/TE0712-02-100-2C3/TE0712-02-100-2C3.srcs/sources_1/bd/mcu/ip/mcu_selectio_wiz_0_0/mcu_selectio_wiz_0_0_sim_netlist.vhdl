-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 29 15:50:58 2019
-- Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_selectio_wiz_0_0/mcu_selectio_wiz_0_0_sim_netlist.vhdl
-- Design      : mcu_selectio_wiz_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz is
  port (
    data_out_from_device : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz : entity is "mcu_selectio_wiz_0_0_selectio_wiz";
  attribute SYS_W : integer;
  attribute SYS_W of mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz : entity is 1;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz : entity is 8;
end mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz;

architecture STRUCTURE of mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz is
  signal \^clk_div_out\ : STD_LOGIC;
  signal clk_fwd_out : STD_LOGIC;
  signal clk_in_int : STD_LOGIC;
  signal clk_in_int_buf : STD_LOGIC;
  signal data_out_to_pins_int : STD_LOGIC;
  signal NLW_clk_fwd_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TQ_UNCONNECTED : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TQ_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of bufio_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of clk_fwd : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout_buf_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of ibufds_clk_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibufds_clk_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibufds_clk_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibufds_clk_inst : label is "AUTO";
  attribute BOX_TYPE of obufds_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of obufds_inst : label is "DONT_CARE";
  attribute BOX_TYPE of \pins[0].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].obufds_inst\ : label is "DONT_CARE";
  attribute BOX_TYPE of \pins[0].oserdese2_master\ : label is "PRIMITIVE";
begin
  clk_div_out <= \^clk_div_out\;
bufio_inst: unisim.vcomponents.BUFIO
     port map (
      I => clk_in_int,
      O => clk_in_int_buf
    );
clk_fwd: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 4,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      D1 => '1',
      D2 => '0',
      D3 => '1',
      D4 => '0',
      D5 => '1',
      D6 => '0',
      D7 => '1',
      D8 => '0',
      OCE => '1',
      OFB => NLW_clk_fwd_OFB_UNCONNECTED,
      OQ => clk_fwd_out,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_clk_fwd_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_clk_fwd_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_clk_fwd_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_clk_fwd_TFB_UNCONNECTED,
      TQ => NLW_clk_fwd_TQ_UNCONNECTED
    );
clkout_buf_inst: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "4",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => clk_reset,
      I => clk_in_int,
      O => \^clk_div_out\
    );
ibufds_clk_inst: unisim.vcomponents.IBUFDS
     port map (
      I => clk_in_p,
      IB => clk_in_n,
      O => clk_in_int
    );
obufds_inst: unisim.vcomponents.OBUFDS
     port map (
      I => clk_fwd_out,
      O => clk_to_pins_p,
      OB => clk_to_pins_n
    );
\pins[0].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => data_out_to_pins_int,
      O => data_out_to_pins_p(0),
      OB => data_out_to_pins_n(0)
    );
\pins[0].oserdese2_master\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 8,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      D1 => data_out_from_device(0),
      D2 => data_out_from_device(1),
      D3 => data_out_from_device(2),
      D4 => data_out_from_device(3),
      D5 => data_out_from_device(4),
      D6 => data_out_from_device(5),
      D7 => data_out_from_device(6),
      D8 => data_out_from_device(7),
      OCE => '1',
      OFB => \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED\,
      OQ => data_out_to_pins_int,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_pins[0].oserdese2_master_TFB_UNCONNECTED\,
      TQ => \NLW_pins[0].oserdese2_master_TQ_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_selectio_wiz_0_0 is
  port (
    data_out_from_device : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_selectio_wiz_0_0 : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of mcu_selectio_wiz_0_0 : entity is 8;
  attribute SYS_W : integer;
  attribute SYS_W of mcu_selectio_wiz_0_0 : entity is 1;
end mcu_selectio_wiz_0_0;

architecture STRUCTURE of mcu_selectio_wiz_0_0 is
  attribute DEV_W of inst : label is 8;
  attribute SYS_W of inst : label is 1;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of inst : label is 8;
begin
inst: entity work.mcu_selectio_wiz_0_0_mcu_selectio_wiz_0_0_selectio_wiz
     port map (
      clk_div_out => clk_div_out,
      clk_in_n => clk_in_n,
      clk_in_p => clk_in_p,
      clk_reset => clk_reset,
      clk_to_pins_n => clk_to_pins_n,
      clk_to_pins_p => clk_to_pins_p,
      data_out_from_device(7 downto 0) => data_out_from_device(7 downto 0),
      data_out_to_pins_n(0) => data_out_to_pins_n(0),
      data_out_to_pins_p(0) => data_out_to_pins_p(0),
      io_reset => io_reset
    );
end STRUCTURE;
