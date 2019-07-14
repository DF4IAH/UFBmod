// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 13 22:00:39 2019
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
    CE,
    UP,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [31:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [31:0]Q;

  wire CE;
  wire CLK;
  wire [31:0]L;
  wire LOAD;
  wire [31:0]Q;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "10000000000000000000000000000000" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
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
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [31:0]L;
  wire LOAD;
  wire [31:0]Q;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
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
SLMd03PPdmc0ByGDJsxTxe6sAHPgcH4MkJSX3h/dyWbp4RJCW+QupRpPd0B+/3ed6i61zG8bUEyh
uWH45Ed70BOp6AgLZggG+9vGHPQaSy+8stSeZ86wUc/m+WDkr5KZHjJcfEOuznftQbZ14vBG3mfr
hWuaA3+c9kz6bT6owUg+nEv4cesC75BzEhNpi+nB9yQQH8HkfXi3LHEEuQAttecMfG78G+5if9cL
6OpPy+SHM4rmFGlXX7UUZ25L03tK8XP6BaKytg7hjeKXxL067TAVs5HfoPsz1v+WzfTqrNd3TH2x
shQjOhUk+Tn9xFCDZflPVsqsm2KQo+12q/1beg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uZ+ym0LmSETdwOrqCWH+ph1up7JJv6ZzArLLHsjLvW6toJFp5VT4UnzDA51PtG7p4sm5SUsu8AeS
T4uNVCNJCSxULYuU7d9OsfqeryMnZNcObbPD9hVoRoyOqUw1QZjFn1G1MPOz99wmlZyrBTYA28ZL
MPymfNc7JQPSHrAB7e58xI6yeY7jpvsOh0qiNNTCAffD9kd6JFlbwVs6Jc5986owLn4yqdqRdGXY
/2MeVJ9kfyG1PPXFFL+SenhRAqU6YEkDngX+x4zcjHEVVs9Ftt7y4oQp+nEZMP1If0WXWBAntBJb
wEJi2+DFarJV+oOWiSKg1D1IgXjsGEPC3caxPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11184)
`pragma protect data_block
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
stm6hSzEdjp0SU7/
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
