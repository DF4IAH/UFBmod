// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 23:15:10 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_sim_netlist.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_c_shift_ram_0_0
   (D,
    CLK,
    SSET,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "24" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "1" *) (* C_DEFAULT_DATA = "1" *) 
(* C_DEPTH = "24" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "24" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
PkyhyBb59EPgq8kANKUgNUvJSxwVgcYTKLlfXroHeM6zPnPHm+ATuJPY2OmCojZnDY2A6SHiMUmx
ylnsx6jVAA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XgKClVpS+h3z22aTgNZepCZW5Yffl4m6nNLRjY88G0b6Og6dF7wA3of30X3Vr2BKX5GVSe+jeu6a
q3D7Qa0T3sEnO1qnWdbom/P31G6nS7/pQCPaLh+suxznQX2imRfhfTkmY1B9wExxZtZBbss2GPfs
EFGX8a+efiUiZLAKaSE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYMHL9qwz9VPPAbHAyLFK1YM6t0YBJUbhdak6y3IQta7KscLfLakFo9QXv7rXKj3R5WEjx6Vg+9K
QUgoa/uCYy+n2t004DDpVeDamNuGIrJU3WXV9mo6tEi21Rm+kIG+CFgVuqLY9JSjwI3dhmEqYYtS
wC2GIO6hKaV0keq1ldvsRFBu71kLY+jczboTe6EddpUktWp3UM/RqnrSfHPMlZWhHp1k3YC0SDq9
gvcPn9DB3vIjXgn+xRbyzZOt/j+s8RfjF446i2RalkF5p/den9o/OMG5jmv4rZKHj9S1V3Z2UuL1
c2fxe26sNIvZ7tpz8RHVWRMloPfcPVakam2zhg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BACIRg239ZSAZHpsLobWk7IZyWSAM1rsaZq5LesIgnba07iijhvT5s8WIOIIgHZs1XEDKelSnU1J
+5cyEbU9WgPZsja6FQEw6J0GuN3L/1QyrvmNIJKsNXINx7R+xaY/n0uby2eFsFE9luplvdOyrCEw
eK82BghXwPdasTT1ZUgKiycyGYtNsp5ZaPIWXI9ezN9oHowcWp7Mn6v2jrdDl4lzJuoHgqRtkZvG
7GqevJFheGfXkRPuQGkNK2Pk6XN9woSB1a9C+FUsQBM5MlIE7zrBQAjONIQj/nd82Hlp1H4PRxBW
1mmFP7PskMeNR2hH5xwkvg4Q3IfYBlw8gdzneg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vUWbACu3JL9XeVH21XChN1bLnACIM0U/dLRQNf2LGaDFNW9CL0o3SY9pOtV226o71+9Eal6i7P4l
ht62RU2AHTweJsgWkXtQBI0/jHIw4/gxbBebNbqZM6m3qjEE5blPsuzJ1njoX2JWCJElO3p9FfRu
uHpC+4hYoccdFayGku3vk1gwz9lLJ4FcYG9mi1vLIY+tzs0o83THQ8dLrg50Rr/r2n0Xf4hxWe4U
tJ6iUOYBQUYjeOwNQOOxfjv5PKfLIgGA2WC8sJb2GFe9MkTDoMAo40nBLK0Y8+klDIJTyx079Bx0
wdRg2JxUF3+TGlXW98+2/iWy94H1CPEVRm18FQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VX8rVAT0l4oniSvb1X0sblwaqcWh2XE0oCAZbC0SVv8fCy8dLmmtqBzFq3w2V/7nyMmJzWKNP/yV
0GW7ICEfrGaBejU3VpwaHA69xE56Y/8NSHGlZOhr390/5/UqELcFOknZEPJXMLpeKjUn2ijACn/u
O0myDIvGFiUyRGWWYKM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dlKAt52rb1rebbUvCxUw/pmWR03F+be3vApC1VuekYTvk7BFt7xopdHrqsvoU8rgaCBc2wuCudx5
nUcu7bKEyHKFc6bcbp6J84c2uG0ZckyqBn/OHRMbmq4Vbar8C3ERI2YmcbL0Q0fBLzMosVarF9eM
+c6VfE9hA5lx9qpwFJhgk5v/yx6kjgu+kEnG+xsdWrpKrj8LIxxh6gkrPOn+jQtKQSX3o7q35Rcv
W3vWLRYdH+pHsfJqCdT0wL4oBTLa7ozdsufX9l6UDgT4ECxLf7R1TtNj7XA1jaaefThL0F1AUCjF
5WuhMqBOotpDZUmvB91yVtbXLMm0r85tK9b/iA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpjMDTYBGBGmXV9zMYxRFhkIwTyPHV4JyYLZ3v1VGiT95190FicX20EMXvVUYmb0WgfxeB3UV36J
vF9Asf+rM8bdp8/pjVjlOiAY/BdiXoiin/KINb8Wl+gEkjfEdlEIRKQSgz/oAdy3v8TIYgyP4+8A
QN1JLCk+6OcxXSJtzUy8TiYqLXVzsjBq0PJWzGc+j8u4KGhnxAnea2P1SsCMnyBrc5DlGxMp0uqE
jwH5GcoZx+LZ5oPEHmG3vcyGMyGRoZqL+qLkGV1J0FWWSfzkBnedgzNyYJQ3B87oZ82cNcYRbP+o
ePkaO+2C+5cBDzuNr+rfmbgPAkEqbGzh0jTvqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TV1C/od5GhwIzwJew4avY/45dc8F8FoGjrnnpN9XYT8efQyb9X9vtQ8HN2q+riBksvS48VuHqJFF
cyj8GP5qi2tDf35D20VcXj//EwhJOtzREpoBiuhrNMKJrQ/Jrs781KOufxt0VIX6CbN4p5UZqGur
kWD97xu92b/lknabXdykuB6TYqR0WqjIKZZz1KX+cp+g0TUf+dS9MCW7Z0y6ApliSUOypOfvdCjv
zU6VG129YVcp2Celi1faW249g2k9HA7iPHStslaZB4kQFP6f9pySNqsiomB1otiDVa1HRPFwclwk
jcx1EmSFxS4RQtSHz0g4snRE8MfJeakWHzEo0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5584)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
