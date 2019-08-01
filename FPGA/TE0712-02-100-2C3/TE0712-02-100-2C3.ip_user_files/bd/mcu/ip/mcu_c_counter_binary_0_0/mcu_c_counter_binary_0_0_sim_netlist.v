// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug  1 23:45:32 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_counter_binary_0_0/mcu_c_counter_binary_0_0_sim_netlist.v
// Design      : mcu_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_c_counter_binary_0_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 6}" *) output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "111110" *) 
  (* C_FB_LATENCY = "1" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "1" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "1" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "111110" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111110" *) (* C_FB_LATENCY = "1" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "1" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111110" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "6" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [5:0]L;
  output THRESH0;
  output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "111110" *) 
  (* C_FB_LATENCY = "1" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "1" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "1" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "111110" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZBY06y5BSEA3vwLtCYy6nxOZv3rYFFgZv5ABjBaqtaItkwdtQfFvZBIMhBOgu0+1i4DhnUz7pdYr
Y88DaxXmyw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Q91nMYZhjxb8KT0ODrW+miquus8bIV0xJDXXyQLu4mbE2ZGK0HYqPk6xE96lKrNSpNViHea0rEyX
J3Qsb1QJLBM/4rnfg8PNzn8acqAN22JgnqyTntYQVpk0fARej5ldkyKbsCPgkFDFJQnDbUHBIcF2
clV1QCjE7A3SvN91cV0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fpeDNxCbq4trL0iAEhu+gbl4Rix2OTBKp+3DlpwRVRrJB8M79X6xv2dY4g29GTJWY/qcPCM3xauG
RxLbIsN70w9DSrpdJ31jxXSOp/N0b21smrkPYOGR9al1eBkfjYMFWbiVzWEKHK/6z705awwEunRN
qhtuKyDzs9JphrMi08O8ld4FYuGNYbtDOUXkizCIgaOdAfQTq0yCDea9z6uJ5sQUPwqrjRIroSnJ
mW8XvC4+hFTtIH4kcsR/hWe9eHVCVq7yIdgTrHznDz5I4c7+A0ZUoahnR5dHirQC2z7KKzrCldej
93tdxPQksB7VjPElshg8WP1MGrwn+7hvSijdSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
No6agU7QCIBdcP4teTJDlwXV+g3qBzu8V5gqFUsql+qUP2ZRyYvAPscmGZyPnHh9xvIYYFmXqCE7
RRM/BcEtyrJ9GJvahRcE/doL0n1EHIOASw/MZnFHkf6gtqWvN+SIv29/H/UyUfhuDXqJBGjBGBRs
+/RValRovCLF1SU7AdbCQbWKJbpj9JDmu7gpnhPbkiKkLcd0L7j/KcvlPBvHLG2JvHXct9Oyye9y
FJ190Nne/diMvLsfTBKIzRzQiV/kj3aSYxw4yzuKLbdVZ9eZYqFHwhjBXrVIvIAq9zy3Z0JajEGH
8Eg7Z1uVL2BNbnB2qP4/6a3wYkq6RDa/mFw99g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Au9tuW8YCiySVmtwoSZ2LqBsVMwu9uzGBs0i03rtA+ohnDzpS7/saWzSdnxtvJsmHKLPTnuG8etw
O+1iKknogGQAhYN8j4DK0/PmelqEJy8N5vwkQ/o6l1cfVFLfqvAMRbZ7lkPzco2SCT7/KjEJHW7i
5gy7tqPxnW7QwYv2vH65EVqe0p2tQ2kCHVUvvPaAZbeDzA1LHleCahBpWEI3g5wztTT869s7a4yn
1IeWyD5NV38NHHcwqubPZ09C1Vm5NLAHW7sEnM3is9mRkFnCh/x4Fb6Ecuu4bJYFhgmNzCCKgYK9
PEdkW2OgY7EzDM7ocQQuoE0+aHQvw9lRdJm00Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
n8+Js6UruWrTa5ioc59l4AeAloQ6ZDwzPNPXUOknQWFRecrzd2eOQ2KSf6tv5Oxix315yAoI88kJ
L1R7xZeU1dj4QCJCinzjHZXGEfUurXJVEcq84ofioKIpCyBd7YnxOq469vjhUCYiTJvMARwPVvDY
U+jspt29lk+k5/XFur0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HvScITgcbiG4YgkXwlLAPuMki7p9oPIAapsMuPCpK/tVnY9llE0MvUk/POKYiMFRuKgzht1jfNyM
pX8Qwv3/+iDiBgwTwibzi053ET+OglbpoF/MDrRErGx8VRvmBKwxnlefbxg6dCEzjNwYuFpDkHVT
YZySWRuz7hA0uzRJwLLkvg9LoVoAsjHpp+GqlpSqfuVaV3IJzpIboKGmFv2qLj7Z3k2aE4HhZfXc
HclRJsWxw/CA2DK86EGTnPC71xJNT7pgY1DSHCglqFwF35L0FfZes57Wpz5Ka6YR9dKPNCocMfXO
DZKOoy0+Zz/G4HOrhtHGxgzfEtHjRq0ZthhxDQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qwkFsJLoJu7kD513NVqDIuH7QXAtIilkPisCXjzypyVVx9Xronf5gRsTqIEFvvay8QceVnqW1zgT
U5+6TB1mfDHz1Fq7hpI1iFCegfuY4HFW6R+AH3Vhhe/xR7CR8OPQ/lXIHINMz9oUWylCBXy0+bgr
5hHhqly2TTP6yp6KI96XpMtqQr6/WKh89SSEK1i1ipGZqqEZpWwIM5bMNAR1Zr/QLOco4RLWVQvA
ZMv06ykrZqt2ZrfeuKbxANfflJwHr4pQhnZctsd/qOpvTxP0+3qNxsxMqdvYm4ADInGAg7zIJ/zX
cuhd+zwewgqZJ2v6m/r1iDZU6RCpPE3vtenykQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z3Qw/INeHlubxpu7KWQaMHfjd7QQkC6JvSbQ8LRremq1TcSGovA+H25KXM1XO2nuFCB6XK4qYVqy
GxfphJ0RWejnahFl00Tsw+27X/N0aeEWWRlUCQCDhA6xX3WOxdw9VlDSas9Zwn9ZsWnNtqKdy7ds
UxU0qJISPRG5czwrh/oSmuqH+T9oXKokoshOKfxsLvTOIdcWdT3+6+qLqg3P2wKPbAKIXIoBB/yg
e+HUGLMN3x25Q5TnZr6lICo/4iB37oO0gh2jnGXvVGth/6WwIdlwa2Aq6pvwA6GsGtkpmd2CJfwy
RG28DrYhZlt/KUsr9aJpG0vP5GxvPS0sk06K2A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7424)
`pragma protect data_block
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
wTdHALshRcdwnvn2xcQ=
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
