-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Aug  1 23:45:28 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_LVDS_rst_delay_inv_0 -prefix
--               mcu_LVDS_rst_delay_inv_0_ mcu_c_addsub_0_0_sim_netlist.vhdl
-- Design      : mcu_c_addsub_0_0
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
WS1SZo4U02M6znavvS6iy4g9xPjzUzBINW+uk5MdnRSMZUg1rdIMhLnNBxUbxqrYCDMfbHG9SaV8
wr54kcX7cCVHMsKYLNW8IZJSFRHzEhWlzjdXYMtq+Vl2wVLxVS4uK8zLeASVy5dN8lkMuUb2ahza
mxOjAjgNrv/bPDYG21fTpVd2DaV9kHM8od6Q6+nYRD5FlkHRsG3pEQdhswrUzsTJUrEKMn6GEn0z
YSELPFpDJE0Upen94oeU0dijcb4lcKoHL2rWoEUhclvffDjMl2d60ph1asabvaPFoHFvI1WWzqLz
ChI8QZozZN6YUaKtJgemureRFbis9THzoss8Pw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
w5IGr/PcLB1nRk2knodeXdK/m2Fdb3j48n6HfWxawagjsR6/RmTYtihvzkXDjiqiXA57O2o9rUtG
cZWTmY7vs6JlKrbl1gApU0jF9UgfpPo3UTUE3dSlkFiDg8I3NXRYKpvMjHSyirZzhv/+nP+E8A+o
aoypBcs8TgmjC0mrMd4b9pNVcfaLTw1psU4LJRNvOcCK7AeA/7FqpujeY+fRpMoQrJTbeey1ZRqd
tiqt4QflkH7oO70gfiCRXbc+38otF48JcWuUfqaUVgbB+ZvDspDKyWtxdifNlJoY+AZmC4sHoMU3
cNEUxT/7gMGKxwOPw4Yf8cwxAIaT7KhW1qbTBg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10128)
`protect data_block
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
MHhWgyvWgwtbZ38cDCLp5cSfJi54
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 is
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
    S : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is "1";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 2;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 : entity is "yes";
end mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12;

architecture STRUCTURE of mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 1;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 0;
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
  attribute c_out_width of xst_addsub : label is 2;
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12_viv
     port map (
      A(0) => A(0),
      ADD => '0',
      B(0) => '0',
      BYPASS => '0',
      CE => '0',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(1 downto 0) => S(1 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_LVDS_rst_delay_inv_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_LVDS_rst_delay_inv_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_LVDS_rst_delay_inv_0 : entity is "mcu_c_addsub_0_0,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_LVDS_rst_delay_inv_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_LVDS_rst_delay_inv_0 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end mcu_LVDS_rst_delay_inv_0;

architecture STRUCTURE of mcu_LVDS_rst_delay_inv_0 is
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
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
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
  attribute c_out_width of U0 : label is 2;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 2}";
begin
U0: entity work.mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12
     port map (
      A(0) => A(0),
      ADD => '1',
      B(0) => '0',
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(1 downto 0) => S(1 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
