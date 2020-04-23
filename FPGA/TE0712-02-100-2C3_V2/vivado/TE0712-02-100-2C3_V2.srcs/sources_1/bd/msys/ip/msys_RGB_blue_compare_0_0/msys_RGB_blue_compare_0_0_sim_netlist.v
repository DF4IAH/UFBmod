// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_blue_compare_0_0 -prefix
//               msys_RGB_blue_compare_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_blue_compare_0_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 9}" *) output [8:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_RGB_blue_compare_0_0_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [8:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
ZeWaI1V646o3lfZMjPhfRiqH8yrcBHqB4Jp7GgWhFHtbq2FZEb45lF2y+4Z7Bo3p/Fon7Fuwxi+G
pfvZm/J78Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
U278GGzuHpvR71v2lk6OfCq3UHPLemHH7G5nzQnoPxdKrkBUaO2E2nmWqUhjw/5RQf4sL7AgK0YU
DTyR1Zy31V08/arF1j8tyQmnhukfOHqr8ZKmmlkjtKowN6K59DPDDYpttGbqfNTx6uO7nzk6l1lS
Rsl6q24TQbBd1uaLrws=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pi7LeG6/F+tmgR2mSEDwUOPg9J3vRSMXNe0HxNeRq8mOvIHmaT6ypbEm7FgHQuSGN5PoQE3fMyP5
X1YruG3K+v9yk+bGce8/ZGbvghS7lU1h4isgDJ3niH+ALesIsr+TgonGh0Ol+XSo12YtX94alzmU
tkyr2R4bVkkpBHvg01MOuYc7cUQmHMBcy0p73aiGohZR42Sd4JJE4Dpnes8bCg9WMANMmBRrKs71
iPhWfZ8+p+ZM8j87IIQBV3IkpuHOArxJWcVZ6gR2w03ClBv6IOrJWD/WF8NZt0cfVRUoDc2P1DKB
ipFw8lJbMCDmw0VV517a0HsUZBxeyn0muuNqAA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bbIwBeNnHf2J5T3ZQluXrXgPlj6m4gdwenpJz3huRnilAqUbGa1gu2UEyWxzy2E3PV89zzGxuQ4X
5cvz29rO4f7FEbO07WMfFUcpIbFvYSPlSxQYuI7XvOEQ9QYMYsv5GaPrTyG09kYnpcmfHVScrGq4
pn30wsMt3ZIgV3s27Use9okvsfsLsQIc5o/DZfpI1ylOLXmgQEMl8FjUBSUNK0n4n7Ejtg4spgqf
a2jc9hq8hDzC7ukBc+mK0rNoXxALIE8Vm25bBWNVfkuOFKYtQFBlk40sbLvePUn/8g5ycOo4+tvj
nxb/oaG7tMKbswgJQIf9YUQoBcX3nQbsQPYmNg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h2TYH1lUjXbalHf8TK5hkjlQ30ZvEXKbnsTIUDUriXGbkyZM7BifousSvZesivmr3O0Li1KtytUe
X8B6e5QJLh288DLxi2Feje/jBR9xUdfb7uRl0Zqc/mkhMhc6PlTYP8kRpJlFPVYiyLOb5/mR9bKC
hI8t1lTdQmI8JQS+ncVrVb2xNCZ/nSnUK+AOD+nS8AFXCCJ8fs7X4HdDlmZnjcvSJNzc2pceLJ7x
8ADHhzA7/Csf6km2ypCu6k1ULmaRXaMQJXIpn1haQW+TNmCz/vj0i4/KoiStAn8OMidEPBEyG4CA
KCJ7cbm42dK7pSPjFEJ2zxPizwmR86ozsi1aAQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QlIHhNRjpFN4gXrZLn4iWrP6DODrKGhkK8sIm8VdwlCCNZhI6sNcceCfypEpeR1jiHjUiA5WpTiI
j4iJiEYtjpCbETgn9WkO3nceO2LgCE3RyuOgDABhkrAvDiNFeNUzgKquAEgEOo19rmp5ea/jLvYf
vE2VK8ql8jfwPNBfh90=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF6UgWS1K/8tgAYNZd7orM2VWyBHqwif3OcunBF4fsKaVq8/BzcJgW0FVVikxOFOEP9MXjduR2kU
ECsJ8vPQoVz118Q5BfR27i/hgHlUKqw8/t2t9CZLbTAokB95982h3WFvO4mhHfqTwne/mCGbOVCF
VULMF7F3+LpRfYHMeplTyu6wSV+Tocz0+ohE9L2wTxo28h77pdziM4ECJnzlK0fdV02EbPj5Y3Cq
rAJHz3xHysVTuB5OFgs74lCJ10XKGk9d4jXBCMT9BJu03xDIgdbml/2DDg33uFpPPEWvO4ox+xim
HSGSORi0muLp9RWOGFqi6FFl6nW7A2EPETDA+g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KCmYBToXpkjbWHaI5FWDbAXmGo+FM7e0dkhJ+0ARnR9H6w2VEVRm4XH/krsJ7Z0ReGvxHW+eYCz4
fV+TxB5V0xo/1ByEcAJCqDietScNUOXBdb1CvV2rS/kgV3wF7gh806t8Dc1GLpw0uCax4AvMI/Ai
KbGWKs0b6XrAU9/d7z/MahC8ZFEDS3fr+P87oy1Z9dRlKEb1TzaGE1XcxtVoRbZ3e/4v9lnz82TY
r/f3iSMoRNf7X1S1UJWJJjOoMWxojPIesZ3Y6lYMgw5j+wBIfS4M19hlYakoPRXHEiJZVvyra2or
G/OIjuk6GNexumwfk+2MOEZ5ZooKFMxgjRxUbw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lMREvIFjwKSr1t7evGb4Kb+5+7em5WyyaSCiX6FVaD/XbsS9AZFc6U7mFEl2YFxZuOMwHcBncBBb
YrJTFEii4Q1Pci7sjCeNcTRIZMVklWzaQQEXFdYUJONo85pE4DPB0olBRUR+oiAcUKTf4esDY+v7
0md5flfqsF6w1Y6qN2pa+2mDi00OcGjp1j4pJSqLjJxRtVCVdbKTL+nIKestQ4MfnDJAyh10YHMo
EjDo9AC+KLveYRGF/Lr1Y5dCGRjS5mrkFBmrGFTnpeJBW4FUuVTqBxyD6+czfAgmyOvP1pJqhdSh
SoU4/kB9hVWAyzvnOQlQUIqK7MO/npryuPl5UQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l2mB+Qh9DCCfp9qsGsljHNmwzWLDQtsSP1yUeMZ//ldSksFVpnWMvAWLf3LhMbIVv/cKL8EwzV1k
SRSCSZBWfTqOJC409/BKczLcPka0ucr1Nhy/dB1jaG4pl1Gb0/8F1bi5TyeF7W6l+ZNoiLg9rxV4
8VqdvTaf30OcUVtOyg5mGriOsw4Cb68tPtIGFwiBx+sW8kEe5jzVRMQ210dnleMam3OlSlFIe8AS
PdnYM8hdAPg5MYG+YzDu+hJzNSnCTI9Uha3/LK7VOcxDYezrE3ezIb7oApQBlypfXmdvPPbexA0+
DxROYKpANJI8iDJdnfzR+Tyc4QnkrgXecqv9gA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
`pragma protect data_block
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
Yc1aKs6yk5OT0R3E2RNCk8JklXbA
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
