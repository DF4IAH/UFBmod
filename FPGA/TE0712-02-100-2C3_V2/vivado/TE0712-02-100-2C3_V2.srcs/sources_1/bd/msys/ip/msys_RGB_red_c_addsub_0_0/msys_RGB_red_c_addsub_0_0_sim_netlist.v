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
1LNfPUzZmXMqe8FQV/ZEytOANhdU
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
