// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Apr 24 17:52:44 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_3 -prefix
//               msys_c_counter_binary_0_3_ msys_c_counter_binary_0_3_sim_netlist.v
// Design      : msys_c_counter_binary_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_3,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_3
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef, PortType data, PortType.PROP_SRC false" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 7}" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_3_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111111" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_3_c_counter_binary_v12_0_14
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
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_3_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
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
IuaP8qdIs1xv50JJ0sEesz52QQ3l11MuOkv82xgKek6CvX+FhDuTiRmTOEEmg5zJK9JKnCZrI93S
dI1HbW5AZwJBeAedUYGVJpnXiW3pJYPkiFdwXrOp9PRVz02cR8EWX0jON+QA70SeznM9CPdgxzql
GkXu318dlgK6RkrzYN6uJH6DWjPipOo/tR7BFb0366dpFQvuIsmI5C/pFU4XuIfq+9uEvHd39VYv
b+k+4Mc/QnTA/shXPlvsUPMgLETdcUA5cfdkwm0G4IEqXI7K5i+RTxh1UJR7ZSxAuZBL3WOSWmUB
JKagzrdrQzjfI9AOeipm71GQRyYg3OXaUoEaHg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TZzilU5d4KU8lyJjreJPQaUBkvqH5F45HZ9+ard2lGTGxitLowAKDW5Mly5szGX8FnWibYs6YIAw
4fJtTW2cNy+C4J8VD1I2bZ2c9EqjWI7zzFXE0NAEhcIsDXGKO2ntZp/e7irKUuMZNwMew0mC8ewY
7n0du/FSSIbAk90rydmMU36fjCzhtoy/AKOon6ywDVep4oxFH8X2kN7uYj8bQqyQ4T87SIR0qAYN
7QtAGYQQnFTxatp+sXbUtrQOJLJRRnltbsUOhm09fJtj6qkMna8fHI9vTMxi0/WUCJzJoJB4t+lw
uM9X3tS5ohktFPBhWiRulpVj9ts75//15eXfhg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7056)
`pragma protect data_block
bTV5lGxaBiFn5K75ZtBpy3yNye360dNOWZBc1PaeTJWRgJqNEVicnoQ8Pbe8JsLzlHC1sjmpi6ej
dk8VPt8kSC2U45fasPRmMUzbilt4ofUaaTpiwizJ3Yz44EMMQqsHSPcGFhfDZl2sXt9IflkAq4t9
WLtn9cERM/h7R5QVCNwfQmiTPUT2Uy2HmV1990EyvWA7QwqcWgq0HttQa0iw6oB18BnLJVVjDnl6
0tJWBhJUdtush74vg2YpViwkjCyzKeg+s3KlBne1U3YoC/UtneGa/gLul8H/aTSBME6vGQj4zdOO
/lmfOuNTXlwDN0BxJGxWQIf2Ct1CGaon6WJ0ycuY0OhUULeC60Zgn5mYydKWsPuGInAZTjYPusEY
pK22yWVmqwzsVNVJ+MCEkTwi5T1dLXmjd0QKbdbShNpozYv4CBry3tg+sCJB0+LE4B87vrBV6Nw5
W9p9gmIBhXjxUz4oEpLX4to8/FY06/14sW/eHGjPwpJ0HhFG+AKZwiOLZscXE7qzOTwmoePBCfSl
9Zynwan0BeOHa3sYU5asaav1gUG0yeHvrTB5KX/xVHnqL6VSNBO0MVsmUPcuYX2YH4WX5FoeIgBp
ZFWMzdGEpRYcFBBNj83gkKjhmK6ZQdItl7pHA26Km/WU2w0BjDYFgqhekhHf7oUiYM786o6IE0Yt
7T+cuQP/2iIf1r/59ZVCaa0L+ORa3V4jixuUUD+ALGOXqfpW/fc8W5k+b7K4O2vyfH72sdfbZOEc
CkBpqun3/FRgYZgEMqhANGWoIaPNPWmYLhGQ47O1Xxz8LeH84+mf1do4xo1hFMzz1KGIE8GC8cs0
6/bJpgDy/NAP/cpaeNcsiJUSSySYMoaDrQuGp+mztRCODtUvt3LliuTqch5Mvb78srix9yMrvK77
cCtFgwLUGSmBDDzLB7uwewhtPXMvDadKQ4cRLCFgfJxcuIJlVaJwcdUrnDAO4z7uZnocm13I4FyA
8gBIeyiDNzufXx/pz4GBKow95fwFg5UA6aTG8xkK4UJG64zJbhPFQYzddHutnBdsK1cJvmNMRDpX
6RLNmMTQBNNbBHcDLqoQs5UyyhiqoReF3mEMymVYaklmQe3mcbrRpRsUqvaZkzzMO3pGYdQc01st
KyrTB6a52cmXqiW6KJ8vGzhIeSZCwRw/7mYCwrgBuKboYlL1IBqW/y6MJ5zD6lznsQALhjrvrSHH
cIidfWsALVduZITqBJnxOeoRymmXb5ZjAAHZhTvCgJ8vOQjARkOi57vewlj4XVmz2Yq8z6rTcV0r
ywh/ODmNRzgfigtiJyDzgy5KjHZhEv6huxWknRLmWp+jPj87ZHo+TgEpc2h2r8HvtceVVtlX/AB9
l3cB3hL9NUbkjUgGgLh7a+8Fd9L2/xPl4+/Q67Ojqxh6PrL7bW0KtLO2H8pf75aCM7E2OPTDPEdp
KxVIXCMOiLJogRDCY5k9PaBrwl8NbzQmMqkqmwuekAeZdlOwPvefN+x+BN0OZhUtrK6VHpCni7Py
ilIKwArXhMvd8HnJZAppSHhuDF4lIvyKFUvDR+u2cuSzI8i4FIhNq5yuR3JM0Yp3lgyS/W3hSBKE
IUJ20RflXDCHsJWwYO4n4oBW1LJ+udmaOfPrnIULXQfCa3YdcJ2SMpy7/ZMvpB+iNneV1fY2fsxK
x+QT1orfRfeqET2yYkEHte5kp7tIdGwltPi2nanT1D3GAUmXDcoyq0U9sZoD2eGZIVkG3aS1YRkj
Zxw9NCig6d6/ispwqoC7Q3L0sph/TaQLyfNNVH/rQqAFJZuPfVT5UgXnXeFlC+HBQREKsz2lnQGH
0CCLI3XDhh79F474AIfkgc3wX85Srgd9ynRVyew/OpkRfbjABOKQaRoeZiY7nlkI2viCwf7b7JoF
m4dFC0gMxAHGhIr1FzBXKJacJL13BFBnEUsXWM73d/uCKbD8N3tASUUpTpNZvZHoBg4z15mXD9Ve
YHp4lW1/ywtmb9zeq8+GE+D6uW/1/jk59JAxo4w9IfS6VqIrBH/AywN9rIT78yDK6BKGxd520oQt
dKvSV3EhaSuhrFbKuGT7/o30rtxNJX/N+V4g2oTqk1UbobFJlsjGT11iL12q0VRCeA/qfNvnkwxP
2P/6xOzBeQ9qGI+0aAiptUOQukUgt6CdKnVGHJZMt4x/ygApgULk7cPUfRK+5V/guii36gD8zT/p
9ewNXCnnBakPfO23omc2MmCoP4DYPyOjstxCuQilLsnfXkxW7U9Q9Osp3WHp4pU9OLJ8xBm7JQxR
H3e1NoyW6YpL9Ihf9e9Gn5WLdChK7bQZtMPmGn20UUNP4SYr6zjHfCLwM7d6DF++BAVUCR3nNA5h
BTIGarajMx4q4mwgnXMwRtAgbjKF9ibUf3sq5mgQt/C2V1gTC2FqmtZP3DmRxBsmg5JpfxOL4zb5
632Fg56KmJmw9sYFVvq3aOdGSZ0PFhWf62lEjxoASpQYD/f7DGKlH+QaVNn0bsmRWX8MaFyx+91A
vlmbBBfefrfd33fyn1nYgBD5G20NeVlxkfNfPSGTvnRD0GVL+P+wX1mbnsbAK21ISwHnYIWvAzuP
Ebu9+6NQdQBxAMOf9uSwdLDCuwRM3NooZ+uQQzC1x1Xxz1ypcDAzmO+I6v39sMV/RFDeQxhYRxVW
cr7OV3/9CWvN1ihz0VyXetsbbcQo3lN3uT7WY0q4UrqTK759SXBkScunkZ9N2AYrpndmX6DLI7qD
KZZQuUANQgqTnDpKRGqXsKsaO5IhpM6leNUcC/Jn45Z/qBAjmJy2R1rSFDnN6xKfVLHYlqFtTTY+
oebYBmYFwAkfrU4m4niNVIWo1P7wqC9ZVAOlndErTswsY4XpK08J08JUfcDtzZMYQ7D0aXe7hdpj
vA8OEHQR0tmwR4CYZpbASwYSH+HWbsZRbr72f2aPygOarTq97gd4ekdIuRO7mhx+swP0NslxEtzE
F1K/Jna+gH99SEdlrKjBgZXaYGR6FYIE02ZWtdILUYpSoTpJpzhJ0zpXIMDK1Dtj618BNhD8BML/
48qPbzWC2uoBCvSJtbYPGM1e6GWZbBS/mvx5/HTPRrmOs6FpY6bY6t87+EVuKSYsVOrN+zrVK3Z0
W03G0/crtDKZ1aF1YesYDdVwUI75ItC+ww1wyS5EKxC9LmAllFrTko56wK1X58zw1QuatDGzDUnF
R3D4T7CuiT8rEn8Y78X6p7nlFhMJyxH68Vxr3Wz2DudCtt2LxoY97fWEEtSG3vFVuMbwhk6trQzp
+rHj0pN2DWj4yS+7GD4i2Q0lvzVE2sdKVwhc9vODyU3/G3S6PiIXWTOAktQU3M5wd8l/TorHAPhI
b8TefOLToZnLQrBZ6vtJFxd6n+3j2vC2hKUy0WqjwSRln+bZh9u2dVheUSQjJqSnTCS2jpXl0qxl
P0NhVYPFtnLE2TUOiGfMztc8MZpC8Y6XHhwoB9bwPEHXLrd1NxvYGHA4BRnI3/fYbCBMe6K1uXns
aczbxDfy5omcuxyFUlg/zALwpme9zFxHJSI4pNe0Yy/J1WTw9mIxTS9iyV5ad/EjUWqBiwgPhWbZ
IeV1nssRp7DQ+Kk7BagKyBqTpYemIZDV+VCZJWliPuGj7uifmeGH7dtmd2LF1ntRj7iDDZW9Ufyn
Yee72c2KrLI8hgqe695QmVx/2SlXaJTrA5WhbBKk80AJkh53L+mY2YUVlprIQx/k163DXIgd1R09
0e3Kjits5FverWM6TlLrZkNfRVPOnZgL79ZtRIYFTa/oZMH6KZK1Xfpxz+Eagk5DSMJKTAj5nazZ
kzptLetnJcSDJUwyNr0T5pbtGqPMAsPnVVB2pQ8LZUCnhEE+mgzLQONvaUGNNYo0Fn9btY2aMvOL
my8iF0/79EMW2xXSusbaew1TtOF1ozWMk/9t/BwqKK0aNv9JsN6mu9JKVPetwCzD3Owyu71qVJ8P
tducTAe5JK+Ioha0RaGfNzoq3fW4IvbcOBI+z8Q7IreW3Ml/gAjDApJQLxf54eq5XYlrp2tua27x
8VTRNCTycWcXI2oTO54AAJwZzVEEDpPbQyjoGAESs0nYyOqjjNcH/8Ip3x5GvH7xN15CXpeIKwUQ
XdKfKUbAb1aNvz7Q0PtkCZFlVInqFwPcxQ3wWDJZY6QPApteJz7GGUIXtRkh2xM4+JHmgEpkFYx2
eGraqbN3jjBRJ9jtZrdIHB+yqN1PiB5Cu3r4VSYAfMhjUzacV6tkd0bc/fYcKul6FbSneAfK8HY/
B55XN7zAtSfaXmiJ69uGm9Zgeh7PWplSrgzTVC+h7ohmv5GknAPwsaDF8Cvr0yqxXrUL1iPfB8Qr
WEE5pIpW5XQWVprkzEDE8v0W7hCtZYG6FyIcGClAF3tNTnp8KCO2BlXPQwTBpKXaJxTp26gfwwNb
UV65XDJjoHqxwlw/1Bl8kXNpb+q+kxuwwBO369AhvxilMN2whHX1ZJoTPqkNo4Njui8UvFgBf23B
kRU1SfTEoBeftIwbBSbZ/DHzO4NMdEbP5II81IfM8Oy9zVgnkFtgIkn7TsOdQkFX4SHA0ejfjI+j
BOgNetSSgP1EfPUIxMHLq12qj0LdIP4gxjR3DHU/4QcObmnW4PmStUXSZeYsvbdPn7txaUdCTRSi
pgapms1iVcKi5SR0CFxAXdGBnf+wPjZROo+IvTNgJxn4jG00LU6BYxqrQLB967xubU20k8lGBr7U
W09zEgV7quZ3dkHKrfhin5IP+VwAt9zOaBBtXWy8oSvCtKoGTl/6Y6Od5FWJnBlccmv/edsXP/f+
jx07AS7KLWX1z2/tkD7BhjnL7kc2o9eET4NVJpRxA4a97+nSP2/aRcxoggDL16K/KnfLCQ9weutL
5VN7DKNoXCaxYhOgxHFc85VJ2uu1xq8kYEhCzXy4RlpPfSuWWAlDBydvDFEBGK4ji8jW3bcXVgbX
6SwzZQ6SIi3mwPb2q/9Eq6hz3VY/5yNPVbkpdjWEWlxoJE1WiaN9mhUw55NnimY/4PsEgwzNrr/u
E6awmStS7fKdhERgk+m7UyVjMmiu+shSzXYokbWBpGWaP3kBMOqLNp8Vmacdp/Yom54Iguo1E7Zt
Pvb4kSTd5z3Zd2i6PvLlhPuH8olv9/pJJaaXIXNH8AKEgPYOL2Of9I785zwf/LZt1voegJNIr2Vv
govOho0bN/n6ymdzk8jCoDhC1eg9CG7eNn9sBbBJlEYtpBX3VS2+i9iCGc+rdQklVBRUeBorCF1j
6HxgpAsKAMerVeVx4g6KzfnbImLoLY65wtCFwtXc8jMARvU5ekeSS1/RFa9rnCLfCYUkflqMOTrr
bLCeSW0OAc+pQj6tUMqA9VCzAhpxXe8EzikXpMEOyUXukNP+WlnphL3O/4Cws6huKtfItdbAWliH
Menweqc8W43m/cwGyOHpi8PUQM5TFPBxO5bgwcSKEK8OuWOAuJ3emnW4Q0imFMuy3yGiookQ76OE
NrGMUgW2GfUBRj6H0anxcW39peXjlYYDK08Wn+sXBVUFzAr1cerQl8IKrqFSLA5KEEEoVTTh+L/o
QR3O4HJagxLMA8cWIctHltpgnhIUnEJ4lktMYtJF94pcW2Z/MdR7Tsf0w+2K/UWOEXKfmF0a4wNi
/W9/o0X0bVWpIMdAUtYwfSaudBBiKCuFc7LmnHFV2U04KEJqvtetUb5hnBe4xZeRyvsvhJCSty5u
GPGdMqELPIf2UTmG2OVffgYz0EybVqvlpR4ws5St7vnY/J7lPd8d+Rj7HfsArs171uVCrwxHcUzG
mm8KUcQi0oPATLPNOWJFObLA3pslBPUSDlh3xIdS6lwJ7jtfmEmYNls0gwYShGS5mp9UVNfxK1nR
T4u/Mn4Tgln0WdL79RuIguzCJNLQ9sT3tco+hBp8HiDbfy54NzJFxY8rM/gIpAe4SrYQpINoNm4J
LOokifezRhtOX98jwcRJkeSALKUHxZj387bmr4Ul+62kX19xeiNQspu1pmMY2wiv8ekYjgq7xjRI
6n2YPYS1V1ODL8exNFj9n7BrJfwj2wWQ/qfFffv2WCFAMEJdlbI5zo3kBPqvdNWFr+VmjGdx3JJG
3TVL2BtgVpkgEpbdwy7f3GNZsxToTQoxuuAV8mS7xC6Gc409cp3L19tesfWuhSnDX5Qjb+//upkp
ynW82l1/ofMUsfQ1yZIrz7JbtSXBWzmsxtuZg7wTK8AWWQeFLfET3imIBgHy8/RCeWcDOdwfIiQf
CkjN39oXOt6kDOS5aIuJe1BQQXBG+j45r9IselzgnLqA8Ah73Rp83+X6rH8oNgq0GLxGMxfiD0Dg
Ob53ymcGiRYQ5Sj+E/h8HgZH2eMOjRzlq5lb5KNkeGa8XockRJgPyJOxm/nUNhPHNpF3ow6VUD3Z
GDkCIIyHSzCBbOmiZh4MQIgUax11mx06v8EONCbxB8l3ik8UdSZqNTObNmoEMjsZv6YEgmP4Yqrg
y9HKA4JGvNPBcNuUjqlpi6J+4DF1CRFw6HAM2SE8uK7/gm+6FtXgwTZZwVIkZe32s6yr2mNbpAuX
Mh1LbZumH0HKllApiu0Kgym+T/U0iitMLzc60PtOQmLUNSjOGB4pf+b938xm5fSy0R5TYnuOxg2B
Z34sNP+4/+KwzjODPSFcUGBbAoNXJvpXNZhbc68ghIHd9h/Z4DHgGJjh6CRCopMDl4VaHBFUN6+y
o9I/X+4x1O/HP9m2GPBQwsV1DZRF57k20tvCLjBJX/BQ1wtT1EApKgooFXCPWqW9twZ+1yHie9UL
h4DE6b5qGORIAGgRmQPs9vYNfqyGlCgwDpvtJ6eN4AHWPwkiXC/2MRpTBzu573KZbOfKaCtq0wW6
yjPmW81w0xPL97S/c0CC6cZxJjaF5tzyQa/elX0uKR1ghUh//CCPsFcYQxKGse5MS1AsprC5giZC
wuR4q46X0bhoolHTBkjCcrGpayzcLGTNCb9I1ECDENK2b95q3CDP250SxGGACsTaPfF4IVz6gFRB
51nL2u02w6Ozx5lUvZ1sXp3f5wqNhvalEGqW5lIOiG4RHkhU49eR0UT9tmeh90n9+M68/VfZbgSn
FOHWbA9Sk2F8E+DhFyvdo4IuyzbzHJsL6lz4uv/yC99z1X+c48mn699Dt29jPJTeFde3ADwZyJ4N
wdI69qSruCsidKAKu2AxQoJIqrUwDhnEc0cIVj/ZaXRJVRZiHc1UoS7wS2rSCHwCJqiJyda5fmug
gfArqlXDT/RORxQ1uWCDGehUCnZnZfmmINeOfibQLaBVRY/b9NJyiNol5T3SzJNMP8z7Oi3iqqcp
T9io2ZTp2ZKFX3ypKvuglDpc4SEj6w6c5cf+wu2OgOAAgo40RehjQPRwojeQ3BUYxL+9ODwimY4g
TRpyWduF/zKIlWpc+n6bww8zW93aLThwDSGibmO3ZIUmYeqozIB1ODwffutYtmPuXPOBtmhtU5hM
ChUaZUnkV7UhzYOnDXoblQ74skMMYiElmhJk1u0clKv+X20RHV+JGX2/gY2qk5jIXv6ba6N8/Cnv
TxSH7txK8o88h6KG03fLc8Yq+YucsEhxsBn9SLpoJFdv+MuSnrA1FQHDTZSKEOYNwgRFP+XCvkWw
3X2szcmeqJ79qyJPfTnMvKIPmAQpGTVvjV/XZTftSbjrX8LGikZKN0wNvcC/QwwEIJ7p4q90sHoe
93F0dwMqrpsKwYIbGjSxVTg3eaVdPv9g2So5RSDe2I6GRTjv7+FW3UmCFSh0d1V2BHxKbNElRQts
uxNWNuifxpq5RBKMvWswglDm6vCpoI64G4zpJAc2YdFMBQI4Gggy1QWwz60zldIxF3I6BIYCqF+S
xOgFC2llTVvne1/JJrCDRp6ZMZCVlMzU79Y77v6UXMzPOpM6OEXwQMo+RrkfqQ36XJC09Z9azVPr
zgGEQhY+nHen9Ts6FYfMhCicrnP1PF3ljpxRlg17JAfyb/hQd2nBT9DoKl7lTIR3EulenPDBAnJD
CBXuxYBOwIkTvDHmqVKft1gceIT50X4ic4zB3MQYNNmfm3RKJyNRgTXEROm+DatvaZoFaglA4xvb
4+d2GZv4vpVe704QlryU89vnKG5i1TqTK0l8Gg/FLm1F5rjIKiBNUwtR9qLdwoIT3A4cfkoVGKve
XojS+eCMhszHUI6T59gE0zATUyKMDM1/YzDWbnT4fmgaO3hHBkws9suaS78skDIKp9LgVdXYYjzu
VT5alMPNA30H6k3PboxVTVm/ZRFVqq3A2fpjI3ZBV1UG5CJoN+1xxaEJwKBwwA7nIeQTYYO7ybwk
H/pdNtPGAGZWQQaWqXkKgQABLTO+7HSgFRjeBthqcz8DPmFaepXBzCzuP1rc6YnnV4fM3OmDLai+
iM0II1XSiLwwgVZskx3v0rA9xKVKq4Yjokm8R63NNEQCWdgEt3ZETwsY0KgtAKatjETUfcUmXQJl
a1inYEWmKEW8uBzhPPCoSiSYjSqjaNY8+jdvQVW8NcbNXzg4g7KXuTjKLLt2ir/C0Cztc6GFkC0N
/DNDyjYUcBhtx//R9y6SgO+zHQYl2VnhugWTOuacprwKD2s4cuukJyBVc5Kc9Eu+x9xbo9z1x1q3
DvraQj1tBLl2H+Ux2QM/AKqRN6e1Oef+0sMSjx1wYcmxOHM6kVlK5cu8+kj/nyWaeNegPdGKeR06
+0vmZicF36W0Rv1sMjacxf+z17sYTdKU+rokIZQdHmbjMdClVZ8JY+/yx/MMM10Fiv6J36SEBSHQ
4XGeuX/1urDsFzxYNXDEaOkSrsRR9WPcSkCa7GXEZp8XJA2kNoNVe9sxfgc4SqG7kb6rngBfQTxp
t1JOxeiekDQcET2FnTvUI5Oh5D8aPl3M69Y5e7T9sR9MA1ntz5HWmCEyY5H85aRHSkGBKDl+Ny6E
xuFG43MNqaeoWBE4DTI6miQzGp48Gh5HU3taaKxLH3s4XfCmsJRYpewLrYOUCF8traJCvNO/ZvsE
CpYs22nQOZ9tbtjXOTPjDyEhbxtfC0hZjl9Oq7FTnpeb928J931zj7BHMC4aHykr8LiJGyy4n/Oe
XhWll0lv6UDFGV8C0BEjc+LymjEcgikc0H6kAqBtPOIiHMevC2vSG3zLYd9u5MxIfkaTqf6xsds/
tjBlrVcvXBN4ZSNT88Lnkgs4XmttkG0PZZe7mO/Hhzbb8W3OXHRoEQ==
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
