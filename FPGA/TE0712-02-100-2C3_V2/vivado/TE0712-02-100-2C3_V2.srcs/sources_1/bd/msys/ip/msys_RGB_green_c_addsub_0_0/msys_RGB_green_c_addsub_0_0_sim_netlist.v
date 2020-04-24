// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_green_c_addsub_0_0 -prefix
//               msys_RGB_green_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_green_c_addsub_0_0
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
  msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
