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
