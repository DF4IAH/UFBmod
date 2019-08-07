// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Tue Aug  6 23:33:56 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_accum_0_0/mcu_c_accum_0_0_sim_netlist.v
// Design      : mcu_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_accum_0_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1.1" *) 
(* NotValidForBitStream *)
module mcu_c_accum_0_0
   (B,
    CLK,
    ADD,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]Q;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_accum_0_0_c_accum_v12_0_13 U0
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_OUT_WIDTH = "32" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_accum_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_accum_0_0_c_accum_v12_0_13
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]Q;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_accum_0_0_c_accum_v12_0_13_viv i_synth
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
OWRMX0MWjboH7WE412Ye//psbaROG+7eZy67cP64UtaCHwXoFYFBrZ/hbuikTiepljUP9gRbj1/F
rWo+lFF5ag==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fC3v8I1NbS/2g837XNESzlejHsl4iqMle0O7q5/N49Cg1xkkY0EPeH9/YcnhkuhmeLAbQjRslbbs
yOh7zbXu2PJqabbHXoNgiiboli+ifOcf6hKIsd1OYGRk0JzU4Mu5T0DBNwv/BsViKBLauEhfjnMn
YE6ue8zMnuvuJcPgpiQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
coTP8wldNKEUk2nCoU78HR7oIY+qxBOpmXo8c4hjVVsni4qmA93p/7AcEXHUHIpjuKmWakGx6Axt
kKsNi7hvAxjrOaGzMfkcFoZii5iDidnQ5iUe2zZ0Zt8gAnBd6KEJnJoe58tcblY7lQooNs8siTY2
7dJey4Fn0FxaCxo5KyB8YHRNdGMpJUCOUHAeroqBHh+NhGQaVjyHClUvZqNYbaUUQSOe39aHTzjs
DyPT4htE2X8PqgYigU5fPg+l+pk97J6rrTlAEbIPF+CJHmQqARMdO351Nqfv7zKgCz4za8MqvGw8
+fw8vlZUI1aU09V9CXM0QDyoiWqINdV6gHwJUg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qh2yqtZDwc6KK90bhdqXIWnfigLYx20wG+M2oWG+GzM+FHxN5lHsBm1V432jlCxO0KjLEqvW7niO
kMPeyBBKQzNGX6GpT+cOlenhd6iroTCIVDllrwITyn7rCYD9xx/sGuiNQMR0Px0usIvaV2jsPA4X
BzrB96Ak4kyZCGq39yP6Pj6k/Zev7Lhg9vaS/WlR2JfasGU4bXT9yVw+wh3fx3l/lwbIbF2z/94B
6bgF+OasxflBbzODBQCB6XEy3vw1OrdAqT/fTbCnLze2t9UAikZJKdmUmh3iNuFDpe9eeI3r6ScD
q56F5dsyAeoEiFfVksLnG/3HcyXZrwm9FYr40Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iTGxy87qTl1N/o0Pu8UbseCOceyUPxKQderuS/ojZ4DVV9wcJyyEp9cqv06UF5RI0NBL64sc1wh3
7lGkm4Su4BShFgt3mEK5wkC+Xsmg4zFLmeu9nI2rajoURs9y5X1+VXbfz0Bhl5ZexxMzTByTjpug
IYNhq4yyPUnjlmNW/fygHMePt5/Fze602dbbYEzn1xwOL7g2BLe84huDGWPra0NhnCQNqaNdmSHj
ya6Oe+HL7ljZJ11Ol20ce98IQemsqPWORNP4MwOE5HoEEAa5f49a9fKxXG+NQYuvhi8Ncxd8yeOq
RjWPj9OYqK7Os5OcdpGpcxKVIQB4Jy09A12OWQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
HhOZP4c2c9mDIgTlI2dmSq6gSdSqSxCy5gx61rJVHShS/a5K5inzbTmdwri+Vk6a4WvGm8e806Mo
j427s9jxBMTL1UnVVwVafobgv/mJ1EM9ByrmCCZ2w5oKmMUR9U24Tm+VX58Cr5fHwg6BMCWPkbAP
UnMnPPLg44zl0TmEMdM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
niLhbaukgcA5plvZEK8KkZGdzUYMXCA6kOKNb2jH0mlqkMd4SVlVUynrmDJd7nI3AFEY/tp8IeMS
cj26njvgqUy2uhsjgYSnXQkJkpUBf2k980MOLrXuHCt5shIaxDRBGzay4lpvGOqyyM2yOqMeFro4
J1bonUgQLThzudkq+ZIQP5Ek6CQHzS6jxe+BVj88TlQiqeIjjWCvqhhprhGDrBSGuQUDNyKY2vkY
Tzh0bUcb3f2cqLahKIUGRY195Q97EF3Z85w+lgAPukODG8BFzrGLCb+RO0ab14TyMErTLo7QjY73
mUnDO/M77dacobCa3XqLZ/XHT3vALPVIfu/zyQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HH/IPlvzUbtPEHwxoPCW0+HefV6hFaBum40pfhilz4VCYZ/YwH9wh3LJgEIlohLIgqviKaQ/JUhy
SCU39XIwIdmouBmr9u/DWFKaoYqoOHUYiqASY9TCSHDoV8JZ4ctoShPgu0b2P0Sgew0b9zBhP2Ff
OFctFrQJpIYDIVzQDEN8tZgW1vjr5/oW94cnoFpr9bMUcbctlQnCmQSxrwy57YjlEcKpLFUYcsoI
EMxcCkD364H32nHxzn8Mzb1o4ytqmA53BJYGHYyYDSKfjmsC8tuf5FPolxMQU5lEA8IRkUbgIeiK
NIU7f2M+UrWMQ6RE0IXFvbuxvEEzWNbMNE4sSw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Dqq6EweXt5kSvwtJrDBlB7m8fyR8r+zJ3E69lpsGh83EGaNOfXFC212h3BrtN1eSMxLH6aJcqvaf
MufCrhxPHMQRSb+Y43feCU7nYnt8tkUiluU5x5m1Qt907oho2jGbneVo/Zer2vw9XDIZ+CXxdGxN
c/bf/+wZyfebtF/wuJg2cYgC1cbrzVyYI9gp3h6NO2goeHhkeT/DYdSlhG9WFxQO0/jzTgrpmS/a
FQd5m8HNewMxhx8Jc8zmvVoW1h4BN4b+gskn4go+C26U2OAjeNZs6JBAm/oiSuv4nfkbY+xxHTte
UMwDF9/peiLgsbTnm5tl5afDdjrV3kvmNRrySQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11056)
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
