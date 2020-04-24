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
IQAjqwPY7c51TiDnigMRzWN0e+cc
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
