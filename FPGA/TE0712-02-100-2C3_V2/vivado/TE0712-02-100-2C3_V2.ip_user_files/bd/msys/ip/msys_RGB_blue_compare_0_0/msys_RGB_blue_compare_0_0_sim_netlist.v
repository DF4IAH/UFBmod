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
hhMWVKQ4akVsWui/FLxVbQVA/4JG
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
