// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Wed Aug  7 01:48:27 2019
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
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef, PortWidth 32" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
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
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
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
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
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
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
DPLfuI9/cVyv8X/oSfrkmwtIPpr5pc368+JEI/5WG1GOTHRhrRoVmjnvZfdGPxo3olHSbGO2M6+Z
t2FMbLbRN1DUrcPuRZlu4Ytl3MC1DRvfM8aZ89b+3bwQvLbizqiUseoh/pL9C4ibTfn2LL453S1v
ueeLy2Ml5gb6W3sgWQxOkfc9p+6nOSvtCr+gbWtqy4GwRQzYTjZ6ih9hl6OC+a6h5Nsz9wJEy273
WD+fy17VXKbKUZx6cQi05pqPxQaAW3J9ynDfRwW0d1sOPLFeYWqdxOs8NP3TKSx0nQFonSCKHNil
o5xnS84BpaW2th6rH0uHRs5ZQkMMiw1565CZ7A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4Yw3o+ke25G+zRTzH2EysufyEOUEGrEkmGETUOb9HOQmXpZChkvLKXpmzt7lbnYQwGs5lFuX4G4
08dkfkJrKx228/DGGIWXbTTfbxe9OGosooZZoHj4aP281yO3PzkmgMqhT0jysEpCnuzrmmrtZCj/
l3CQobFSRYda2NPhc7rINfYJuh0Wy5mAUBcBzfhPsQcXKIin0lzfnDiO+1SeByrbfS5JrWJOVkGN
0NX0boVWhID8cpWJ1AYC/RXCaXgmj3oYbN47pE0WnqYA+lf5QWsKTq95KKCxut/QhHC88ozxrvlR
pwCWZuxHuSBy1gPtNTFatW8DRlgkVu+JMK7xpg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
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
