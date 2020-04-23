// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_red_c_addsub_0_0 -prefix
//               msys_RGB_red_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_red_c_addsub_0_0
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
fFGWURriLotj+HX6FVdzy0yZ6lJf
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
