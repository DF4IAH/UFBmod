-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  2 14:14:12 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_clkReset_inv_0 -prefix
--               mcu_clk_32mhz_locked_sr_clkReset_inv_0_ mcu_LVDS_rst_delay_inv_0_sim_netlist.vhdl
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
y3EgFUvYSe7ajqArQME=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 is
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
  attribute C_ADD_MODE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is "1";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 : entity is "yes";
end mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 is
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
xst_addsub: entity work.mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12_viv
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
entity mcu_clk_32mhz_locked_sr_clkReset_inv_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_clk_32mhz_locked_sr_clkReset_inv_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_clk_32mhz_locked_sr_clkReset_inv_0 : entity is "mcu_LVDS_rst_delay_inv_0,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_clkReset_inv_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_clk_32mhz_locked_sr_clkReset_inv_0 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end mcu_clk_32mhz_locked_sr_clkReset_inv_0;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_clkReset_inv_0 is
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
U0: entity work.mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12
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
