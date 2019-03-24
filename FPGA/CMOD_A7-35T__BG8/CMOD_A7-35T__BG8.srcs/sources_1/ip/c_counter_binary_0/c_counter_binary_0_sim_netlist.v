// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 23 16:47:53 2019
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
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [25:0]Q;

  wire CLK;
  wire [25:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10110111000110101111111111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "10110111000110101111111111" *) (* C_FB_LATENCY = "2" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "26" *) 
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
  input [25:0]L;
  output THRESH0;
  output [25:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [25:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10110111000110101111111111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
KE+5+TLMhr3PXJCb+VxUQ09y+0/hZEqOX6+DqB+tA/B2T8C+iCM2PEXAZV3R7HDDpGusgDeEc1gg
to+1fuONae7SePsY/4k30EibZG3MNO46kVfS8GfP5khUDjSYm4edg3Y8VmWBjq6pIp+awLYiWShN
eNnfJ8zVNLfaxkxNkFRZDB+xANoNJ0vRuyxTLnIrn31HKdKZVm0+Y02riivTKm5o2q6Fx0AeThyQ
68cw1A2elLaVP7qxZCgwS32yjppZQ+jMZm/7bnVfshYW58++y2mc9jQoEAcwHDIofmdqr4O8O6kO
HZwsFCtKhgaXgoSr6EGgxRTi9A/tdhc5YqhOyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cumocN3efXz5uUz6HlSULJadQyFBj6JUUMh6DcPywKbIHDzEn9h3gZGf921lVVJ/vjbkfwhY16kI
LQuVqRTbzcvlMf6+5SMma9ubYDfFVpyJFtb4oagEZgDAdUoaCFkaJuTA9lGlw8NEOBz1K8IhVydy
ACrc6yBvRWtJto593qj4zZtVOlvFyEC2hUvAwcXi6f9KmysCCu2rltXCDyqC8YQjynb8oWM9cIPY
O73QcXvGEl6dieautaUpsK+DmBeM2MZTiMhfUFkY24d6LTCNWRXS33n2ulxIUvh4RNaxyJeGyyUP
G7fIbNlROuYhh1VMERJJVZyywmQCU4dDgwuQxA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35472)
`pragma protect data_block
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
zcCCyQYEVdEtQLSZSHGrog==
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
