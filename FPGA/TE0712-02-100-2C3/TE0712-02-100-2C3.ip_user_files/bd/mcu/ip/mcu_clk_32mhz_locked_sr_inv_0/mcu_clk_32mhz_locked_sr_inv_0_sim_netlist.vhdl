-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  2 14:14:12 2019
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
Y8hjq0iO/Oxp1xVPZpljlKoF63LPTKFQyYceA3J61fwOsYBwfWDIKI4VkEcItjVh/gOmgt+cylD5
75YR9GZhvZVbR0W7VTT5t7oJ0hYDji1aSw9EIwynauVB+ITiA38CPueeaj4g9e+9D3tcBNRtyx9n
EChiirDLDIqiILYtvKJbI7Cugl1bTRDhd44h/ngsM5ukmzBqnEvDp5NNQq2zhJzGmHxcDitDy8dt
WbC/yCS1dOKGUWIJN6UMLxBCnK3gspoYaD8mOV3CMd3+567o+Kz4QBWm5LslJ0fxq2QLy3qDXC+a
/jg2Ijw8bd/vNysL+F6yC6IU/vKJZIFMk3NYPw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JQ1lVMg1pv7VPPThStXvc6IYFOZwpntwHNwhOTOdiw+AZNYmMb0sOJGcdFiur+tgwCa0Pow430zI
IBgbiArRmhawBKrFk9GI4Hl88GZjkW5bojU2liRCwC4GCjg4u2s4iBum8Ld6MvsTV/r+Tn8fhikY
gDG3fxoTuz948N/l6UCIwJjMuOjshwGavjZVDrvQATddPAI6Tg1QEXpaztMNWwvIT3sKc16sQYBQ
Z1EwHhfIsqeVQOwxzLNxnLLORzUbE5X5XU9uuDr3vChjysDffKtY/X1r1/w0dAWPazPxki2SvEZV
Nge5QOdhIgFzVlWCwWVhMbDN6u+gSBlhVZYIlw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9392)
`protect data_block
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
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
  attribute C_HAS_SSET of mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 : entity is 0;
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
      SSET => '0'
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
  attribute c_out_width of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
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
      SSET => '0'
    );
end STRUCTURE;
