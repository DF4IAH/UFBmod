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
