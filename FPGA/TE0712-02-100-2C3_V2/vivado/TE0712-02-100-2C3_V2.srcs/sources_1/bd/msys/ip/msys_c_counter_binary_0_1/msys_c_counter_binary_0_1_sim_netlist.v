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
RctntczSC/4=
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
