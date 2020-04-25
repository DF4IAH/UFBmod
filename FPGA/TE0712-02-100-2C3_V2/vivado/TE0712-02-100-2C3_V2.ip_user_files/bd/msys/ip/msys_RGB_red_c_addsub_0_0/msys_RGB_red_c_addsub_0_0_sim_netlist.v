// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_red_c_addsub_0_0 -prefix
//               msys_RGB_red_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_red_c_addsub_0_0
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
sGol4vBCc6rP5c0+oMmUAyV/3hA9
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
