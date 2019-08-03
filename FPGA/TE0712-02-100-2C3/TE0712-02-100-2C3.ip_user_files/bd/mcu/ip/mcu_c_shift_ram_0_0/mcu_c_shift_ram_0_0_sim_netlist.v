// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 23:15:08 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_c_shift_ram_0_0 -prefix
//               mcu_c_shift_ram_0_0_ mcu_c_shift_ram_0_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
joSY1sF1OUVlTJ/iw6V3tIxwyaACAJaiidgJEaS/0+O/geCrJIlbIqw6+FPF1xjDqwlHx/Z0kxwP
1DDZbxgLWzL8nm/0zHRHY1eHixITIq43V9hT9w52EE0ikTJKsQ28a5pM94xHl9XoZlOpLssFwzrw
7ho1LSSSEJrP2bIOoC3mHrBqMjJf5+FI0oZtk/67gvF3cuqU2HKd4zhOG1R+QCWNuwNCVSoCXMkY
GJUcvqK5ILYsUqyfyfX7D4yAB7ilrKky/YnSQY53yqDK1VQhrwo12qvNkhlmGlsgV5Rd+Y3IZb8J
CKhu5BnbD20w7qJBwZpnbsd0VgrgXaWyuFuJaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1283WAmPajqn9IuvM0P7NGPV41Sd/1vItW9LxjP8tlJ0Vs1VAjdIiXMFF6uImp7nEXGmUUcEPQGv
q7nG0TwewyPM86Hcttb7+RwhPhtCxaUp7yUwEUczGuF648a1puLHr72PR2486EmzseMAiwdgaO2a
3lo/8IljcajTDJH3C/ul8vvm9VvykeB+pnhEXguRT7JaS8Lt8NRLGX6zKa82PB+242B6lvC/Lgzn
EWxFYrjFSHWIEvZsUksvVvnwQ7z6AhrMoH8+dZmbf01TVWKvFLzCX3zmtRU477ajv55DVZ5WSwSi
JvuedvlCj1HKzTseJCuQZP/JNzjvsgJ8yUtooA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5552)
`pragma protect data_block
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
ipo+zBbielkp+ctZ7R6xRg28SuJR16gGAQ==
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
