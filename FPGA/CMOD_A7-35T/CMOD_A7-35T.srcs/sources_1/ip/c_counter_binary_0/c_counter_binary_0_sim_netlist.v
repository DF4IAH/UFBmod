// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 25 21:34:40 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/CMOD_A7-35T/CMOD_A7-35T.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [27:0]Q;

  wire CLK;
  wire [27:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "101111101011110000011111111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "28" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101111101011110000011111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "28" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
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
  input [27:0]L;
  output THRESH0;
  output [27:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [27:0]L;
  wire [27:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "101111101011110000011111111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "28" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
AAo3ESxz5/yQ2geXzdkhb1umAIn/N7Lu4lMLFHSi9dwl96lzRFYIwyEU4dB9ZzQLdceWB6WggLZP
lhcA9dyApXCc7M9FaFTYchs/WkpYGofHQoezwc1YcYB9EiO7qqYMtS5MZNuFRRr8/Yzhf/8GDyle
d3DNZPyb5NQKQyuI+ja7OOaLxqtpRCBt/ID9Vbf1/9meHGba92lfUFKLe97k6gr4SFHun+tGY9kl
CtjxaoeyuZhQwa2hocDeaODuN+wQBTf3BzyGiB3AB4sA/+a73Dr9TuqIqBBnyOZX5URCgeYKzT+v
SVUtKi5aKd/uv2EdVSZIGWhT+0jxRxn2RjXw+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w0d/mxmsdJWmSSUztfsSDSE1WvDemxZOtEUq4zO2A2jZ2yPcA9JJSmngZ7rqMCkMxnyrdSw8kV+X
x2ttAiEAIMmLeRprihKeSpIciK1wruJ9sM7lxwa3PvU/5rr/Nnjy3i56Fng6qGaw/nAtBo9QcJAB
7sTdkoTJY2Sml4HWjEWkLnSpukbgLm7TOvdIJhsny8Llg3HtCzq+4fvdmZoduT5z/mqE48JZ/gLg
zHsnx09e1CYQrJuyI3phqZaMgJlM3p8rzQNelb+Qad05g/6tcH4UOtUwlPVV0cZgV861RdGZvHXH
VeFnt+QxIkkIhtNl7f/fSLw3ptIP3aorYDshpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10832)
`pragma protect data_block
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
ZC0=
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
