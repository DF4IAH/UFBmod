-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  2 15:10:12 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_inv_0 -prefix
--               mcu_clk_32mhz_locked_sr_inv_0_ mcu_LVDS_rst_delay_inv_0_sim_netlist.vhdl
-- Design      : mcu_LVDS_rst_delay_inv_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
PkyhyBb59EPgq8kANKUgNUvJSxwVgcYTKLlfXroHeM6zPnPHm+ATuJPY2OmCojZnDY2A6SHiMUmx
ylnsx6jVAA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XgKClVpS+h3z22aTgNZepCZW5Yffl4m6nNLRjY88G0b6Og6dF7wA3of30X3Vr2BKX5GVSe+jeu6a
q3D7Qa0T3sEnO1qnWdbom/P31G6nS7/pQCPaLh+suxznQX2imRfhfTkmY1B9wExxZtZBbss2GPfs
EFGX8a+efiUiZLAKaSE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LYMHL9qwz9VPPAbHAyLFK1YM6t0YBJUbhdak6y3IQta7KscLfLakFo9QXv7rXKj3R5WEjx6Vg+9K
QUgoa/uCYy+n2t004DDpVeDamNuGIrJU3WXV9mo6tEi21Rm+kIG+CFgVuqLY9JSjwI3dhmEqYYtS
wC2GIO6hKaV0keq1ldvsRFBu71kLY+jczboTe6EddpUktWp3UM/RqnrSfHPMlZWhHp1k3YC0SDq9
gvcPn9DB3vIjXgn+xRbyzZOt/j+s8RfjF446i2RalkF5p/den9o/OMG5jmv4rZKHj9S1V3Z2UuL1
c2fxe26sNIvZ7tpz8RHVWRMloPfcPVakam2zhg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BACIRg239ZSAZHpsLobWk7IZyWSAM1rsaZq5LesIgnba07iijhvT5s8WIOIIgHZs1XEDKelSnU1J
+5cyEbU9WgPZsja6FQEw6J0GuN3L/1QyrvmNIJKsNXINx7R+xaY/n0uby2eFsFE9luplvdOyrCEw
eK82BghXwPdasTT1ZUgKiycyGYtNsp5ZaPIWXI9ezN9oHowcWp7Mn6v2jrdDl4lzJuoHgqRtkZvG
7GqevJFheGfXkRPuQGkNK2Pk6XN9woSB1a9C+FUsQBM5MlIE7zrBQAjONIQj/nd82Hlp1H4PRxBW
1mmFP7PskMeNR2hH5xwkvg4Q3IfYBlw8gdzneg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
vUWbACu3JL9XeVH21XChN1bLnACIM0U/dLRQNf2LGaDFNW9CL0o3SY9pOtV226o71+9Eal6i7P4l
ht62RU2AHTweJsgWkXtQBI0/jHIw4/gxbBebNbqZM6m3qjEE5blPsuzJ1njoX2JWCJElO3p9FfRu
uHpC+4hYoccdFayGku3vk1gwz9lLJ4FcYG9mi1vLIY+tzs0o83THQ8dLrg50Rr/r2n0Xf4hxWe4U
tJ6iUOYBQUYjeOwNQOOxfjv5PKfLIgGA2WC8sJb2GFe9MkTDoMAo40nBLK0Y8+klDIJTyx079Bx0
wdRg2JxUF3+TGlXW98+2/iWy94H1CPEVRm18FQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
VX8rVAT0l4oniSvb1X0sblwaqcWh2XE0oCAZbC0SVv8fCy8dLmmtqBzFq3w2V/7nyMmJzWKNP/yV
0GW7ICEfrGaBejU3VpwaHA69xE56Y/8NSHGlZOhr390/5/UqELcFOknZEPJXMLpeKjUn2ijACn/u
O0myDIvGFiUyRGWWYKM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dlKAt52rb1rebbUvCxUw/pmWR03F+be3vApC1VuekYTvk7BFt7xopdHrqsvoU8rgaCBc2wuCudx5
nUcu7bKEyHKFc6bcbp6J84c2uG0ZckyqBn/OHRMbmq4Vbar8C3ERI2YmcbL0Q0fBLzMosVarF9eM
+c6VfE9hA5lx9qpwFJhgk5v/yx6kjgu+kEnG+xsdWrpKrj8LIxxh6gkrPOn+jQtKQSX3o7q35Rcv
W3vWLRYdH+pHsfJqCdT0wL4oBTLa7ozdsufX9l6UDgT4ECxLf7R1TtNj7XA1jaaefThL0F1AUCjF
5WuhMqBOotpDZUmvB91yVtbXLMm0r85tK9b/iA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
p/i8sjwP6t/B/I6qg/8OE/m5EJFycsTCVqnJBDehj4Hg7oiJpKQ6ZAY0LBoCjo/O3a9tnMxmHVvY
IDHbFpS7+5MxMtXTU1dT2uVBs8CSo2oo0rg6+MkygBgLnoONkFj2VeQd/SZo4ZItrkim03WXp+xH
fhGMQAomui9NFliJ+kGUuVbEEiJ5yiSeQi6bXm/GzoIy5e4OopUBvEceSo8LM5U3bg/yFi2MMfjN
VrvPKqTQnmvaCSEfMIdCi2junnmRDQrFhhOHEFoFzbF0Bd4WIv4DjadNKUPIKolFGsqolF/zp2jh
ivlT0uuUHjXvY3mh0RSgLW//MP5slO83qmySpA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ou7R06ruUkiE5FnASgdi25HPxlEVpvoTiOcVCMiLIQVfxgTocRVr9K9+Sm3gcL5hIkpSb04ERY3e
y2trt++AadNrABa3t+nyouWiLNZzSL7d770Yml8gvV66NwBKBCfXkFjzSsJfx+tvFkbk17MzEvY9
65bQCyjlCCutnPeny73KkKsJDLECqNdQrMoOF3mso/Mu8fRNua71Y5ScAeWR1wHzAgEsPQXES3kZ
t6ukTrUdnMGlP59zxfGgI7lT2sdMGh0vfCspQSfPQLlwL+MN9xhzDlXxuO5sWcH6XwBYcoilBALU
NrJFlY/LtM9+cVpbyrXJW9gkvWxtaNtpcCvZFA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9584)
`protect data_block
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
9Uw=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is "1";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is "yes";
end mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 0;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 1;
  attribute C_IMPLEMENTATION of xst_addsub : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_SINIT_VAL of xst_addsub : label is "0";
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "artix7";
  attribute c_a_type of xst_addsub : label is 1;
  attribute c_a_width of xst_addsub : label is 1;
  attribute c_add_mode of xst_addsub : label is 0;
  attribute c_b_constant of xst_addsub : label is 1;
  attribute c_b_type of xst_addsub : label is 1;
  attribute c_b_value of xst_addsub : label is "1";
  attribute c_b_width of xst_addsub : label is 1;
  attribute c_bypass_low of xst_addsub : label is 0;
  attribute c_has_bypass of xst_addsub : label is 0;
  attribute c_has_c_in of xst_addsub : label is 0;
  attribute c_has_c_out of xst_addsub : label is 0;
  attribute c_latency of xst_addsub : label is 1;
  attribute c_out_width of xst_addsub : label is 1;
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12_viv
     port map (
      A(0) => A(0),
      ADD => '0',
      B(0) => '0',
      BYPASS => '0',
      CE => '0',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(0) => S(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_32mhz_locked_sr_inv_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SSET : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_clk_32mhz_locked_sr_inv_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_clk_32mhz_locked_sr_inv_0 : entity is "mcu_LVDS_rst_delay_inv_0,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_inv_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_clk_32mhz_locked_sr_inv_0 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end mcu_clk_32mhz_locked_sr_inv_0;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_inv_0 is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 1;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 1;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 1;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 0;
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 1;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 1;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "1";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 1;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of SSET : signal is "xilinx.com:signal:data:1.0 sset_intf DATA";
  attribute x_interface_parameter of SSET : signal is "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
begin
U0: entity work.mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12
     port map (
      A(0) => A(0),
      ADD => '1',
      B(0) => '0',
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(0) => S(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
