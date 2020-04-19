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
m36RKGnK7/E=
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
