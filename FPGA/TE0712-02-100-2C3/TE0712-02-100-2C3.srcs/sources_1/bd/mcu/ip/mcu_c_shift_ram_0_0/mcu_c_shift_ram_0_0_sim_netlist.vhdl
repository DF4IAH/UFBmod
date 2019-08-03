-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  2 23:15:09 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_c_shift_ram_0_0 -prefix
--               mcu_c_shift_ram_0_0_ mcu_c_shift_ram_0_0_sim_netlist.vhdl
-- Design      : mcu_c_shift_ram_0_0
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
bwSpoCzZ9h8I4dr39kECjbNSoZbZfGclwKQ0WuieNodiqHqlJmWSvBRHr+cZIYNAInY1aQhFTj8a
gPkiFbxnv19nR+yWjH+mF3LteHxMpxagz2RkMRkp0SyujhN6Nw7H/UcIVicNuvDtqotAxpNghYNA
X6Tn5C8/fVcyIptepO1lCVdqdcIrIOX3RyiwbJCcU7zVeqWjbfzXJ2j96X1Qyaora/4zHMXx5AVb
EALkgp52remYvTkT12vO3CduoX5MyeyOfPlwmfjH0SwS4WDd6ZzXhserJvrwIz5iBpyp6PGTSGgI
Id0Ew6K+lNU8uwiclt843XHMU262DlZZltlWkg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
R3su30uKXQrfAEnAOOGSE0sEi0psOgpd7M9pRtv6N4zGh/dzZ7UjBcu5/LlhZO+1g8AOMoSwI8VM
iFWEzzYUx4en82TpZtmWrgyvYlQ28UKLQvNhs+rVK51f/rRIYebyW8lzagTYpecMHe46Ay13sU+C
aMUfcn8WjVPB/1yb6XNDWnuNbxIWTSOBg3uZcnVCYcET5qstz3hjsFuaiM1aoofxtoZ97yNxxL7D
kvCIq532CtGQY02Te4/+eNFg54kLhxozyuCo0cfpvWKmy4qE3duKLPGYpzqKCjk8MhlCMPGfuq8Y
arXhtYFHtl1qLiIRxTUXZKQmp4LCTJoaLVHW5w==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15408)
`protect data_block
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
+aRigqjOk4tiH83wY2qQ31JXkjTX
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "1";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "1";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 24;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "yes";
end mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12;

architecture STRUCTURE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  attribute C_AINIT_VAL of i_synth : label is "1";
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 1;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "1";
  attribute c_depth of i_synth : label is 24;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_xdevicefamily of i_synth : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SSET : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_c_shift_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_c_shift_ram_0_0 : entity is "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_c_shift_ram_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_c_shift_ram_0_0 : entity is "c_shift_ram_v12_0_12,Vivado 2018.3";
end mcu_c_shift_ram_0_0;

architecture STRUCTURE of mcu_c_shift_ram_0_0 is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "1";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 1;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "1";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 24;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_opt_goal : integer;
  attribute c_opt_goal of U0 : label is 0;
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_last_bit : integer;
  attribute c_reg_last_bit of U0 : label is 1;
  attribute c_shift_type : integer;
  attribute c_shift_type of U0 : label is 0;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0";
  attribute x_interface_info of SSET : signal is "xilinx.com:signal:data:1.0 sset_intf DATA";
  attribute x_interface_parameter of SSET : signal is "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
begin
U0: entity work.mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
