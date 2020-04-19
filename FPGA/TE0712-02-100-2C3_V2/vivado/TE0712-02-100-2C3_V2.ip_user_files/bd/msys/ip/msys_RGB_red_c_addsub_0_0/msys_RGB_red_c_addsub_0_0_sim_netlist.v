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
YpFaA/bQsvNxwtNXcskCXaNHWigv
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
