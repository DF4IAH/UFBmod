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
s57d3S/zHC1lI/+JBnRmferiita3
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
