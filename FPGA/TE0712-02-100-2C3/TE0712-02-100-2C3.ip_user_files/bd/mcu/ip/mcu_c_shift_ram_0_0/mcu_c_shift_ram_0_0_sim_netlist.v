// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 22:06:01 2019
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 32000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
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
  (* c_depth = "18" *) 
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
(* C_DEPTH = "18" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "18" *) 
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
dBTSFTYicsacCuXnXMxOnQseLA2p7/Ybxz/PTKKzpcmaGRtRQLTWW/5+uwxmtvM4mll92iloePt/
Geb+ePx9/F/x1P6p5xIYQPeakBnMIUvRtAbhDgNV6DwXqH7X6IIkFvH6Ikv/vMjuuqX8yIYxpyUD
0SI8ZZuee7NUxYM2tIzxTnQVmBOfgpsj6LkXm0GcP8EglRavRQCdSJzf7LDAG7ollR5wQvscxX3Y
Q8AVduKdLmWPmfsKF1T6H65Go/qfnLZpNZDRyKvJuM/wiSCFPr8PDqGdxjuR4pKJEPxArkEgyGf8
nt8hV7zYYUzkWJ5mDQLctpoAWES34Ntlp60V3g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AUlz35m9Tan/k5E38qEruc+BvnDPxRJfFxk3Fxhx9bC65AW6eMUEwj7zhtSpdIZCQz4UQFAnFl+4
0MSarVBM9fJO8//cQcsyUYHzjK/kRBIW0XMxNMG5OxaAiYF9RQ9f9EUzMNmPMB8Gf0n2iRk8NMG1
HvJITqmExG/fV202T1h5ZI+79AO/SWY1UaGu01hltkLEqZnt+0mA07mlVjLI9QwJZOQ1eUfF135D
HX9Zg+336xA/9XgK1iIEQSS/zwduQbT56MetFJ5evRT0WwXkoscUl3eMYiz/PWz78RUSkyKs3TTg
/HM5g4fqaBA9J6gR/tQJdrCTS1maKhGk4qjVoQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5504)
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
