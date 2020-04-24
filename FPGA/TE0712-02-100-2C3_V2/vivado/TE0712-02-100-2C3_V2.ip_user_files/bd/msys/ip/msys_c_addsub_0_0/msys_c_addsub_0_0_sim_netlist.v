// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_addsub_0_0 -prefix
//               msys_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_addsub_0_0
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
  msys_c_addsub_0_0_c_addsub_v12_0_14 U0
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
module msys_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
