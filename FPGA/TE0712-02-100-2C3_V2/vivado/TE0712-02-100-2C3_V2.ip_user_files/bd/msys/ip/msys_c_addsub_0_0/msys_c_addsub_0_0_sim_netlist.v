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
