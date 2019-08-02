// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 23:15:10 2019
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
  (* c_depth = "6" *) 
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
(* C_DEPTH = "6" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "6" *) 
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
mJKVoLEYCTYlgwpFaDDvKi98lJVsx4iiHsj4XAY3MLpXTsmJzQXS230ATXMJ3q7dKNJILiavQ/VY
7HEzYYWIT0fxofNGa6vHPh+zGfWnNGvqAEQ1AMeflQG+IxQEfqjK0UgsEfKMq6BltT7KD0N0ytzd
wcmabbCZmzgoP3yozViqXOec1qGQ/jeULeqMabavd02DMBJg0Y9R4GudyO5bhIR8715dSjv6aKUp
jycU6GP5VO3gpNKs0xnvYaEhQujdgE3koNJIIYUUnME5fE44DF5bTHhqCjEUEBwwOEmIW6ouYZsC
fdt28+g0c50oBlkjsca7tjPzuMNywwVc/jLGHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VoftPBv7EpJFt2U5z5K4hxs32um0Q4MrslB3vZsiVqamQjCxxa/nlNTU78+EXwws7LJqHDgWBoo6
hfDFyR+HgM7X8zdOqICSCVw/r80UZ+kAj9NQy3zZ47i6KkKpvZWvCnE9XSUrlEO6eJdHpbbUqvOQ
sXC1yHo65g2ydA44saETXJ8zrBDOAS8Y4zic0uMC3QnlU0MA/sZxzdQ2fnRlr+5HAL3HPT4Jea9M
Figr+SBd6ay49NpYbasgJDUa/I3FvPLfz++IqQMshN6k1fMtuaXy3K+w+fu7J9ksZuJ7WiaJ9F07
srNfw6vrw4dRgEP38dgEgWADDigHJiMPmKu6TA==

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
