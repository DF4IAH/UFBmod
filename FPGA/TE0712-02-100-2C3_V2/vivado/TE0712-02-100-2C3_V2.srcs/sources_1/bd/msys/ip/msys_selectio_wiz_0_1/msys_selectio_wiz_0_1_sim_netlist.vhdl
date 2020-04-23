-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 22 23:43:50 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top msys_selectio_wiz_0_1 -prefix
--               msys_selectio_wiz_0_1_ msys_selectio_wiz_0_1_sim_netlist.vhdl
-- Design      : msys_selectio_wiz_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_from_device : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz : entity is 16;
  attribute SYS_W : integer;
  attribute SYS_W of msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz : entity is 2;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz : entity is 8;
end msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz;

architecture STRUCTURE of msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz is
  signal \^clk_div_out\ : STD_LOGIC;
  signal clk_fwd_out : STD_LOGIC;
  signal clk_in_int : STD_LOGIC;
  signal clk_in_int_buf : STD_LOGIC;
  signal data_in_from_pins_delay_0 : STD_LOGIC;
  signal data_in_from_pins_delay_1 : STD_LOGIC;
  signal data_in_from_pins_int_0 : STD_LOGIC;
  signal data_in_from_pins_int_1 : STD_LOGIC;
  signal data_out_to_pins_int_0 : STD_LOGIC;
  signal data_out_to_pins_int_1 : STD_LOGIC;
  signal ref_clock_bufg : STD_LOGIC;
  signal NLW_clk_fwd_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_fwd_TQ_UNCONNECTED : STD_LOGIC;
  signal \NLW_pins[0].idelaye2_bus_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[0].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].oserdese2_master_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].idelaye2_bus_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[1].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].oserdese2_master_TQ_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of bufio_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of clk_fwd : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout_buf_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of delayctrl : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of delayctrl : label is "msys_selectio_wiz_0_1_group";
  attribute BOX_TYPE of ibufds_clk_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibufds_clk_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibufds_clk_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibufds_clk_inst : label is "AUTO";
  attribute BOX_TYPE of obufds_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of obufds_inst : label is "DONT_CARE";
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[0].idelaye2_bus\ : label is "msys_selectio_wiz_0_1_group";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of \pins[0].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[0].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \pins[0].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[0].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].obufds_inst\ : label is "DONT_CARE";
  attribute BOX_TYPE of \pins[0].oserdese2_master\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \pins[1].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[1].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[1].idelaye2_bus\ : label is "msys_selectio_wiz_0_1_group";
  attribute SIM_DELAY_D of \pins[1].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[1].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[1].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[1].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].obufds_inst\ : label is "DONT_CARE";
  attribute BOX_TYPE of \pins[1].oserdese2_master\ : label is "PRIMITIVE";
  attribute BOX_TYPE of ref_clk_bufg : label is "PRIMITIVE";
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
delayctrl: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => delay_locked,
      REFCLK => ref_clock_bufg,
      RST => io_reset
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
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(0),
      IB => data_in_from_pins_n(0),
      O => data_in_from_pins_int_0
    );
\pins[0].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_pins[0].idelaye2_bus_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_0,
      IDATAIN => data_in_from_pins_int_0,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[0].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(0),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_0,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[0].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(14),
      Q2 => data_in_to_device(12),
      Q3 => data_in_to_device(10),
      Q4 => data_in_to_device(8),
      Q5 => data_in_to_device(6),
      Q6 => data_in_to_device(4),
      Q7 => data_in_to_device(2),
      Q8 => data_in_to_device(0),
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[0].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => data_out_to_pins_int_0,
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
      D2 => data_out_from_device(2),
      D3 => data_out_from_device(4),
      D4 => data_out_from_device(6),
      D5 => data_out_from_device(8),
      D6 => data_out_from_device(10),
      D7 => data_out_from_device(12),
      D8 => data_out_from_device(14),
      OCE => '1',
      OFB => \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED\,
      OQ => data_out_to_pins_int_0,
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
\pins[1].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(1),
      IB => data_in_from_pins_n(1),
      O => data_in_from_pins_int_1
    );
\pins[1].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_pins[1].idelaye2_bus_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_1,
      IDATAIN => data_in_from_pins_int_1,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[1].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(1),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_1,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[1].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(15),
      Q2 => data_in_to_device(13),
      Q3 => data_in_to_device(11),
      Q4 => data_in_to_device(9),
      Q5 => data_in_to_device(7),
      Q6 => data_in_to_device(5),
      Q7 => data_in_to_device(3),
      Q8 => data_in_to_device(1),
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[1].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => data_out_to_pins_int_1,
      O => data_out_to_pins_p(1),
      OB => data_out_to_pins_n(1)
    );
\pins[1].oserdese2_master\: unisim.vcomponents.OSERDESE2
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
      D1 => data_out_from_device(1),
      D2 => data_out_from_device(3),
      D3 => data_out_from_device(5),
      D4 => data_out_from_device(7),
      D5 => data_out_from_device(9),
      D6 => data_out_from_device(11),
      D7 => data_out_from_device(13),
      D8 => data_out_from_device(15),
      OCE => '1',
      OFB => \NLW_pins[1].oserdese2_master_OFB_UNCONNECTED\,
      OQ => data_out_to_pins_int_1,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[1].oserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[1].oserdese2_master_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_pins[1].oserdese2_master_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_pins[1].oserdese2_master_TFB_UNCONNECTED\,
      TQ => \NLW_pins[1].oserdese2_master_TQ_UNCONNECTED\
    );
ref_clk_bufg: unisim.vcomponents.BUFG
     port map (
      I => ref_clock,
      O => ref_clock_bufg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_selectio_wiz_0_1 is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_from_device : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_selectio_wiz_0_1 : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of msys_selectio_wiz_0_1 : entity is 16;
  attribute SYS_W : integer;
  attribute SYS_W of msys_selectio_wiz_0_1 : entity is 2;
end msys_selectio_wiz_0_1;

architecture STRUCTURE of msys_selectio_wiz_0_1 is
  attribute DEV_W of inst : label is 16;
  attribute SYS_W of inst : label is 2;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of inst : label is 8;
begin
inst: entity work.msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz
     port map (
      bitslip(1 downto 0) => bitslip(1 downto 0),
      clk_div_out => clk_div_out,
      clk_in_n => clk_in_n,
      clk_in_p => clk_in_p,
      clk_reset => clk_reset,
      clk_to_pins_n => clk_to_pins_n,
      clk_to_pins_p => clk_to_pins_p,
      data_in_from_pins_n(1 downto 0) => data_in_from_pins_n(1 downto 0),
      data_in_from_pins_p(1 downto 0) => data_in_from_pins_p(1 downto 0),
      data_in_to_device(15 downto 0) => data_in_to_device(15 downto 0),
      data_out_from_device(15 downto 0) => data_out_from_device(15 downto 0),
      data_out_to_pins_n(1 downto 0) => data_out_to_pins_n(1 downto 0),
      data_out_to_pins_p(1 downto 0) => data_out_to_pins_p(1 downto 0),
      delay_locked => delay_locked,
      io_reset => io_reset,
      ref_clock => ref_clock
    );
end STRUCTURE;
