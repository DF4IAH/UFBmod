// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 23:15:08 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_0 -prefix
//               mcu_clk_32mhz_locked_sr_0_ mcu_clk_32mhz_locked_sr_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
ebXMce4hOz8Wn1ovlj4LMSqSqyFMX3+PKnWuC86LrG6+Y1crd8ZosRB6p32JwFkqqub8DGEb1o3w
tLIM4p1pG4Kw/qM6zd6Xkx652FS/x8YkeKFXd31+z2L9a486ucAk9DxlJkOEdEccxIxKEhooa5db
QwTxRavaRfyOh+69yIea4lWPUC7nY8oDiOvBGZ0JijwCxhdc8x/NoCxt6SPeOPbJHRX/nGrds3XQ
QnLQl8vRMWpA+6d0Yo2ndHDqu6bO6VBOeujB6bUmiIDzHvN503BQnXQGw3lKNNidS1i6iaJHPwos
sirQKo67QU22ZP6jUnvc4QXw+1FcPizF1D4xdQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jAw6FT/EW5O9zZy9YiJCQCMk+iyiza/r+VVR148mH2UGa98TZIwHveYdj+1TKxxPfN8Pemlo0FJV
hWueXj3NtlcCz8eVdg6e+PsWTrYqetOStxzU2mMelonYCHxgTm4fbwBwJec1IS2qy3db+ECEm5Yy
jN6WHvnkHB9f2nt3XO36JSPnTDzYkpURDBOIthm4qEoLsDzxiHnad/G5NiBAFZ/sRb8fvdWaUkf5
lleAsLV7Gthgk1MOf/f9wdm+w4/DeQO31VLgNsfDRK/qzNe+QzVvQ4BtsQcNQATP4tfZrEzkBc9S
Q6+MhNCIFCtSb71+eJxCehi6EXGi8YojGecheg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5440)
`pragma protect data_block
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
fUQ=
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
