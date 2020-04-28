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
