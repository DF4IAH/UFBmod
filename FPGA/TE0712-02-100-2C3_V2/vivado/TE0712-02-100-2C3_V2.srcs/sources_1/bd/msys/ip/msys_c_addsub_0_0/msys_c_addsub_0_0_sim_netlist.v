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
