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
