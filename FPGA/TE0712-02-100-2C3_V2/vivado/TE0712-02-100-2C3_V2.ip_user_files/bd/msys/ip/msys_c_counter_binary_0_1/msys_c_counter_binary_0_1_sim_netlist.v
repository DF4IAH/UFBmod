// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 21:09:06 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_1 -prefix
//               msys_c_counter_binary_0_1_ msys_c_counter_binary_0_1_sim_netlist.v
// Design      : msys_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_1
   (CLK,
    CE,
    SINIT,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef, POLARITY ACTIVE_HIGH" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SINIT;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_1_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "1" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_1_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SINIT;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_1_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
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
n64XeAE+hkadrpwh6Eu6FEHYhjivkwezwzzz4NRSKx0LWLhDRYrXBzoqOtb6JIwd5kiQsUknkV/W
msrD7+3icgODPUITPtdTKfq8tOh7Vl8IuQ94nsLddUNfiCyjhzbIiSV6zkFibOEs13QFyPTApEox
iIzBqRoEtoWaD/pWobHpgja/8GVoc6/ln6bJ5zbLrNr+pt/x+jGVYFmQmi3BfgRDocDeJLfbEkCY
dcQVjHXNS80ZzlEa1vHDRDWosXX60v2HHq6Urs9iVCcyTfYwYTVhci5d0gwQ6arqjlQ6PdQ11m4p
mEJoKyY7QcoWjMtdxnbfKta5/JaoIKsEBQoMrA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KozLAOT4FysdSFti9xLmzYJuGRMMMI2OcCHGhnkPxlfcx+prbLZVJbFqdAyC0yUUYlU3QbizU7T5
kJ5byIk7yzuSxMTLl3UXcqRMSkGrr/N+/lJU5olTpL+UMw91nlttJt7COVhyoVV1e9AKtHX+i3TK
Ca3/fVtpM50wq3JlH+8ELu0OAXQyxptSmdqzk2IE5rX/gqhDFxhrTTXv6IC7JNhA+swfmGURZcCO
r4BHXLD62kX64Yb3KsjaCYjohsQ0CuGnWlqglvFM58+8eCXxZIyRpgsR7H4GJiE+2YSrgjtzuFYV
XEYPbo4z6vhfXf6DYWO6ti5CuOdPThBcWtPncg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
yf22KI+XbnE=
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
