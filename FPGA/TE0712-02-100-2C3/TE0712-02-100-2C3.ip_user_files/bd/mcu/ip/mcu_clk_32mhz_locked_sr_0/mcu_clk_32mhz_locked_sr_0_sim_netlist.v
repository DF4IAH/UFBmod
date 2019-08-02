// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 22:06:01 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_0/mcu_clk_32mhz_locked_sr_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_0
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
  (* c_depth = "2" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 U0
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
(* C_DEPTH = "2" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12
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
  (* c_depth = "2" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12_viv i_synth
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
i3IOywv5+1GhGjA1dJyl0UqsR4Y7AoyaCeOIUCOjZQVihkFZuzKzzo/3b3zkILDJawbve5s0Kdck
l1WJgeNu2z0aYeZmAdZBtCcxz/bC5pGuqa/TEJyKsXhYiajQ/rlreyP4cEvk8VoN6vczAtJ+xwv5
voLvQ2OenPYClLh2slYS5kHGKzU1jdDrB3MXjv8VYJINyXpB2MzHuKxG7bGY9dqnDNLiXivv4pLC
96V2WwtncQ/BcjYf7mauWu1qBe8r9yZuHKbe6kHvF4V/0tTnWumje2VeYBcJ/3bxxYvpYyxWeXCr
qf2SPR/Om2CPRkcEtAGr50QTELr3MpUUbJLuTg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TbaB+JEXUOy2tXPwpeB+QCryY/iakfdLoi0EytBA1JxJEr6Wc4HAsUSGnYEW0DwFcjMo0JrawYQu
uSWYzixlljnPihRYJU58/FzChMSLc162mzAurYB58oihL78WhhnH+8zRHHm8i2apIQAkL28t1rgn
buCIKZFSXiCgWKditybcnyg6OVoDerGf+0YVX7rtuD+bN5UbnL6S/me4P7uZ0kgf/nUDllvo4yes
jjhU8RDblQ5i1v8gm6exfeRmMSilBohjokVZUj0TDbuQOqri+mc6RAqXrUD+pKEGKIPlV9jAJ3Ft
XRPX2IYEfW+Bch8Ui4ZzDqPcb1fybc1GB867uQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4832)
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
