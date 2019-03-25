// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 11:25:40 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_0 -prefix
//               c_counter_binary_0_ c_counter_binary_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [26:0]Q;

  wire CLK;
  wire [26:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "101111101011110000011111111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101111101011110000011111111" *) (* C_FB_LATENCY = "2" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  input [26:0]L;
  output THRESH0;
  output [26:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [26:0]Q;
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
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
KT8H1Dxc/nBY1OJImnZzTw7H2AUv1sGs8HROXINRkLcc95a5TwAKx6E2hM5sEKOC0az4XPgmLH7J
EmnqKwnnAF9XHUpCa9M2nbaJqLQRpQoyUxR9m1hh6F2Ab3GRP4i52deDt7I8QSZ8qZipy8+j5Knu
elIBrVv2ISbCe8ZTPU9Y81uWVcwUVH1nvUB2g2XvSEtNKkA7ZJy/e6pG3xPDD9dhIgZnVILgKiRs
tBOUWgUEshQ1vMGcU7YJnzuAYCuWCWcvjk1PG/0jIxQ3G0Atd4NDys35Y7JeJmSdy98vVGXTlnmq
9vMyKlDLB2KU7cbFhDS7A9KjIAvjcb+mXsFxMQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jmGQAIHl1zheWodQET0P5MT2I6AHgBxdNCE8Fi/dCKnAv8WCm2fufft4KYUKk6TH5L8hAc89JVSN
DaU1nQrBppzy6J8S8Wjn7i97DBrBpGKzW7FnKTD7WAsAOghVPTd86sBlKd0uo/1Xu2uMPc+5ovu1
/Ru1nY4rW+rDitBJ43HCURLV9Phq4aqpALPZ6ES+ES002lRWwOCguCZHjcz2VjVHRTQud1cpXVdV
1L+OQw0uAH5b5UU9DDPZPiJMvTpB0Kk0Fk8qxrxNLSx5FdzC2wR2sXS2zC9ew7a10sdj6Ch2W5+4
spNxPguNg+gXPtvwTz6ysTc35/Vlpfg9Oso8uQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34208)
`pragma protect data_block
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
RDRYEh7F
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
