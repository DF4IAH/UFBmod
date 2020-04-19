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
