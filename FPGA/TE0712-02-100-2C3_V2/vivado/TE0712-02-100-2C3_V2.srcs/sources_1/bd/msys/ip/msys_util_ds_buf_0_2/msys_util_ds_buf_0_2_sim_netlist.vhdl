-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 22 15:42:03 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_util_ds_buf_0_2/msys_util_ds_buf_0_2_sim_netlist.vhdl
-- Design      : msys_util_ds_buf_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_util_ds_buf_0_2_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of msys_util_ds_buf_0_2_util_ds_buf : entity is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of msys_util_ds_buf_0_2_util_ds_buf : entity is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of msys_util_ds_buf_0_2_util_ds_buf : entity is "OBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of msys_util_ds_buf_0_2_util_ds_buf : entity is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of msys_util_ds_buf_0_2_util_ds_buf : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of msys_util_ds_buf_0_2_util_ds_buf : entity is "util_ds_buf";
end msys_util_ds_buf_0_2_util_ds_buf;

architecture STRUCTURE of msys_util_ds_buf_0_2_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "PRIMITIVE";
begin
  BUFGCE_O(0) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
  IOBUF_DS_N(0) <= \<const0>\;
  IOBUF_DS_P(0) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(0),
      O => OBUF_DS_P(0),
      OB => OBUF_DS_N(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_util_ds_buf_0_2 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_util_ds_buf_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_util_ds_buf_0_2 : entity is "msys_util_ds_buf_0_2,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of msys_util_ds_buf_0_2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of msys_util_ds_buf_0_2 : entity is "util_ds_buf,Vivado 2019.2.1";
end msys_util_ds_buf_0_2;

architecture STRUCTURE of msys_util_ds_buf_0_2 is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of U0 : label is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "OBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of U0 : label is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of OBUF_DS_N : signal is "xilinx.com:signal:clock:1.0 OBUF_DS_N CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of OBUF_DS_N : signal is "XIL_INTERFACENAME OBUF_DS_N, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /TRX_PLL_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of OBUF_DS_P : signal is "xilinx.com:signal:clock:1.0 OBUF_DS_P CLK";
  attribute x_interface_parameter of OBUF_DS_P : signal is "XIL_INTERFACENAME OBUF_DS_P, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /TRX_PLL_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of OBUF_IN : signal is "xilinx.com:signal:clock:1.0 OBUF_IN CLK";
  attribute x_interface_parameter of OBUF_IN : signal is "XIL_INTERFACENAME OBUF_IN, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /TRX_PLL_clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.msys_util_ds_buf_0_2_util_ds_buf
     port map (
      BUFGCE_CE(0) => '0',
      BUFGCE_CLR(0) => '0',
      BUFGCE_I(0) => '0',
      BUFGCE_O(0) => NLW_U0_BUFGCE_O_UNCONNECTED(0),
      BUFG_GT_CE(0) => '0',
      BUFG_GT_CEMASK(0) => '0',
      BUFG_GT_CLR(0) => '0',
      BUFG_GT_CLRMASK(0) => '0',
      BUFG_GT_DIV(2 downto 0) => B"000",
      BUFG_GT_I(0) => '0',
      BUFG_GT_O(0) => NLW_U0_BUFG_GT_O_UNCONNECTED(0),
      BUFG_I(0) => '0',
      BUFG_O(0) => NLW_U0_BUFG_O_UNCONNECTED(0),
      BUFHCE_CE(0) => '0',
      BUFHCE_I(0) => '0',
      BUFHCE_O(0) => NLW_U0_BUFHCE_O_UNCONNECTED(0),
      BUFH_I(0) => '0',
      BUFH_O(0) => NLW_U0_BUFH_O_UNCONNECTED(0),
      IBUF_DS_CEB(0) => '0',
      IBUF_DS_N(0) => '0',
      IBUF_DS_ODIV2(0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => '0',
      IBUF_OUT(0) => NLW_U0_IBUF_OUT_UNCONNECTED(0),
      IOBUF_DS_N(0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(0),
      IOBUF_DS_P(0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(0),
      IOBUF_IO_I(0) => '0',
      IOBUF_IO_IO(0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(0),
      IOBUF_IO_O(0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(0),
      IOBUF_IO_T(0) => '0',
      OBUF_DS_N(0) => OBUF_DS_N(0),
      OBUF_DS_P(0) => OBUF_DS_P(0),
      OBUF_IN(0) => OBUF_IN(0)
    );
end STRUCTURE;