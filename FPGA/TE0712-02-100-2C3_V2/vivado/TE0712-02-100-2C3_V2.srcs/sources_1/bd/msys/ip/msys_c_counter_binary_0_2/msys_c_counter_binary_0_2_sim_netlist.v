// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Apr 23 18:58:54 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_2 -prefix
//               msys_c_counter_binary_0_2_ msys_c_counter_binary_0_2_sim_netlist.v
// Design      : msys_c_counter_binary_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_2,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_2
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 7}" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* c_count_to = "1000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_2_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_2_c_counter_binary_v12_0_14
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

  wire \<const1> ;
  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* c_count_to = "1000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_2_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
VgeFPSVDLR+jX6LXVIO8WFA6Wnlj0DXJW0bZrirBwW2k3U10UwkBZePTcKzZJkTmS/n/S00Z6EzC
s9xja+E4hgoLbZhFUX6FpsuPKwSXUr36k8lMcetn0rbeQnT8oiDY2AbfvWR4zYZWF9RXN9eP23oG
aE1fHamHFeowAz1f3w+WBej3hdHsyigY1ER4uGvAkcJiihlohTLcenR8h4Kmljz0TWd7ssGj3w5f
+It2FlIlCj2bOg+QTf0cgVUjBPl/lucLrR/5J7YZwwO1Fmqx7KkU9NNYQRgYvQVcb/15ZStjTVKH
gMjWy56vM1qwE3dKP0cl9WBoPLC/HvjVFC4h4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
usD3UpcPuf6dzon2UJlGGBCxTw8yu34DRZk3EB7mC56M5lfi5f6WfYnvb/AiNQ/mwEpjQxibBddQ
L92ew9zNPkwSVtf1spo197MBdx1qIWyzG6GMI7/11y3kvKPOTquo2VCx/6XG/RWytiy++KHVGXWl
/9eHk2HcvbO1Q7B8vvD/Hhg9Voxl/8xPmSnBZJscdj58t2fzp2MN9kJTImIjFzPTCbEwTS2tdfMT
Joss5PtwHAfPVpZGJH1NgOfWLy/VmpKE5s8syKRSc7pEoiAKr+t28WAwNZKY80XV5SIDw9EOI6tG
FUvcE50nIM3zFjR5XPHV3cRxcGwtD0L86BheFw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6992)
`pragma protect data_block
ceM4XHmfq8D82lGDnk7ugu0FMtblUI4FGygMi90LhEpo8vp5JjXCp0PxTCgo1Ux7qz44kwNg8EDt
DL/4AlfDAeSLocsVwdW7SCcikb1Fll8VmPlNLs0jTDmCK005iMW48z3OqqZWwbu+NRR6uGOZcdqc
7fhRKpIw1GtBha6yODCGnHsbIFdI8JFjjjimUKkZlcJP2tEudc0sX9jjvXNUf+L39D9lS2BJIeJX
hec8ZnGUrwB96Aew41oTPNjMfcKjxapeLZ02LE2OJjKnlW5mRqNlwQLd8E5cy+1XfAQr8jp1fvJw
UsDPCgdx21HhrOHn7p8KsBVqIIdgDMvbhtRIBoWeemxpg0P1iFvKy4NslKVVbA3ZOBl/72OtWBuZ
VfwjBc7IN+A6p6okeEqO0k2LayAQS+Ywo2nFMeehLJ0BvzPprg9L4A8IdIkOXMjgI6SGYATx8CvT
wFrU/93LKhuCSnIdufTAZlB+rqTohUWcYVkTZT73eDIqzIKkRvALIpfT4IBVzLa8nuCHdkG2SFfx
KAZUGpp8xihQnQbJ6+R3K041w4YUxUt4sbEb2FuHyJMLipZOr5xwby9suQi1gDO4B4TtrrTveRH7
jwkoWAOhEPtG771jRKIp5DpAkikOTdMiNrJ3OUmq/NXPdku5gN4EqImyYRRGQuj5snsVtK62KqjW
FQe++k79wrvuCPbfslJ8/2v3B5HGnOYHMuYe0KcLk+pcZL70bfmCr5o+Pt70Xk7VTmq9bGdEy93b
G4TP3ThHcRaaEvivgLGHEEuHJwobfxZ/27lzrJ1o9MMwMQK2uJomdN7Sbsn84yRKMfix9zGR4wKY
+qJkCwSNBMhTBPZUsvJPgPTxWDThJgPsnQt2KnQGrOGkd1Xmx7f0QAEFK5mmIdcJKJKtQRYchSpd
idR0PpPG17z1hPTqqeru5XL7PDVOm/2ER6EM2A0dL81IZN1pTNHyYQhUnnffTHAVcdrOFLnubcuE
WkFPEmnAte+pSj9H8OEalNnJ4Ur2ZtYUGY2aetRU7UQ0h13dW188GkV48ax4B9sFyUPmsSFB/ta8
J4N2DLlANd1nU0icTwbfEVX6l0yWqPiXqDOFUUKzazcNlq/lgxtA+OZc44LtyVx8RctP1CyHgNWA
zVJwTrzFEiQd9PxtGDHiyO4M2m2kbPZaixW/xFemQcfTQy3AvMHBDwEVM93X47VKF3AtmYQZgc6O
9kHs3yn9tbKJeTC2e7x9XSAGDImEE3yelAblhZMtuosbK6VVkN1Vyjsa38hywerLdEDuSnpNh7ib
ktx6XpQNICJeRzIyIMe0pc3z62T0DaBfwctLnVC7JONr1ApigvoPVPv9r3/QeF9rNAgTbgloPWf1
tYVMGAHA7TWsRI4ubtrxznLue9SEUm9/dudwAuDpB4TmPCNszuOvacf5D21vBZ24FtkhLInMm6iO
hBPMFCvesJay5PRDPR7RRxJFSIUAIMrtI55S7ylXhiEqmi6aC7MFKMkfZPhrmfN4DglchYkDfz8+
DcQAfMuII436xDi3U9MD9q+R/stJzYrI1PI1o0uap2VbMsCAEgJlYISDcyrsBCyr6AjHfhFTY1Cu
KJjMDvrr3R4ddB/uTRhgQPyyOkQxE1boCyNvoBqTIzu/lhThB4TwSl/T7oIvdEbjCy2yXNQzU2fi
Z3SCmdg6X/a1eVWAVJN94wrdcgRcl2xxbsF4GHDGeQGLLuly9EwPuhz9OYnrrVoz9BRNy4u/ozIE
tNvOn6LaGI2traHP7mMqFQVwrWE5IfGuxjxh7xQe+5JEBKBX/0IggUj8i/HRaJI2DjlzKFMvgxbL
addRNDLVMtyI6NYb+sKgqZMtMSCqPU+UXGOALAB9izT5ZkckJBlPzAC6oddbilUA7fe2Q6tMHMRd
gFG0dcCOXtEZNGQtNPzdjz/FIXnjiFkroG9HI1M1C503tLVmYLyCbfCWs38IEtJy2Lt61AKxYEgp
BN+g3OFB4XX+29Vuco8zl2TU8LjWGZ/cQXOfknZkj45Wpe3RUwjqzOZqOUSpMLK8KR9hpMLeis+E
60WYR3mHVRQTvj1BIjSvA66hGKmVJuNRpr3DeEl+jwGWLVVThXjwIrRbZPQ8jddbK+PePVSsTRFV
2dP6D+q5suvOw6GzqBwiOEyLKOMlQxNQINpDoejeyBzojPw6phvTKExbl+22SJLZC0WndhEBbJai
J0pkFI8pH+XJ1MxnxxAGoKFjuf94g0G3AVN/SlqivTnTjqwLUerFWtCvG+eXOhZG4vk4zahlNQbq
nYm3nxOfSa+CXLhm2KuUk7zZs5Cu9OiqLJFdiDa8bg9Ybj17lR5fR9WMjASLUi5EagfIvOoJMn8T
ererUjCxb2Ek9AfbUG+7Tzqp1PYRd+TuYrHQDM95lZxVwr5LFeoBAA4zXEFkZubRAciYL0bEzOyg
fc08RIw78uyin1sucV1FPECMhGJFDMwgP2Plv83SS8W6HmqRwrV35lnB3GUSyZWEK1X2Db8iCiOB
k7tqNjrQD/BjNAET1FNdyxUxenClRPbD/wLILU+IAYxA7TKDemj7iJQUuC893LSyzaqHqw/tsCrC
BGLNxpcvURzbDYsmXw5dlutO5YDxYAEJ+Wgk+TaUxfV/1J3HWlfvCIfLOUUSvxAHtsUuCzy5uY0y
6krQWMxVGJ4+e5Y7gJT4aAI2c7KJ818dYdXtqp8YvKLwP3hfV7BmlVD1IBHEF7tHHzZkxdjgOad9
6CVky88QblIkqFvLC/6nQk1seEBgHgv+5nAs4YFiWxtB5ELCx/9JvXcsgj0MnVzyMt57EeAh3sJU
oBuoycigrplIq1gPRJzjBPhBdnl4H2S01P6i4z3fxahpUH9+EOcmB/x9kOX5HtjMWsS+XnQXMqVX
wSSANZp8ZG/bE/WDyDl42JnNsiQRa09KWL0XGy2V6b1+HPlhiTT95SINQFpXlz+chp9R5YItKlae
PtURktLZjxhtR464fcuBoTsTKrD5yyh2MZJsOKcKtyKXzWvi9qKMf+13uPT4DMR2WGMLqI/+HFuv
o7ZljPIKh3w0AV0ialb13mIc4AlW3n/EcIm5yhIOO7f4UuAMwNt0DkQtcReKBEo5PbXHG/yaIe0K
UIhsmRAERD4MjVjfudgsUKCqpQcsTmWlkuu8r6+f5GGvNVz++WsbM+4Q8i3Xthn0pZcBhrtZHf6g
6qU4oicI3Out3xhN43AJsc2IUXDvFlBWc7N9tPg9xtwPnYbILY1ozu2RdzqbpWQYkz4J1qIA+mS5
RKGFpIjEPj9igF0GzuxF/pRqukaBbHSX1hVH4/brZcRK7dFM8Q0Rh+ZrZvmwYG2DNxkYu+cd32qP
oq2EMVe4bkOUXo6iPReiVrJhn2lPefB2VJ0ioHzgZ7MOGrNj9t3rk2kPDnB5eV4F9reyGcCq+6b3
qIzfVM7QsKfmfewnIc3j+f25CkNstqYlWuakvx0KN1EAKbX+sTAtcVVPUnveotTlWiaX2Iy1G+8p
6yKuR0SlG+FyHUASYR+FDpn6PvXlWIsvH3dgE8FJaYHugtQkmm3Kgm+ICLq9/QLjVkVCrgaM2IMj
2r7z3pI9cmoYUc6ZoqLzGTHz4vrDSitB5PirofFu6XnBkeAQsBmrUHVcmi+5V5Vcw0h4CGdstIWO
bYCwGprwh5mr5xWlEo2zWOh6gmRAbFGj5ahmuQKXWiMdW6OmWt0GhXJFbsh0o9uBPDmeW6XzgnaC
7oLz8MFxzK91LVRDtCBJSpnPivgfBMreb6KaGekhoUkfWx/ckffGNgOkMXjPkqNto1SbEx1Z2acZ
ypimzm/4XXtfaxkHDpFB6eUFD7nXmmCXy73sVL+L3PV7vDBTpbHXkwWNKtHd40/qG62DsjG73K/Q
ZRxuAoFo1D3yYzg9Hn+SfVa1RNgMLv7rJCHqIpABpO1AikMkH1cVpP5u+cIf8dwzWioNiog6zf+z
vQgpfqVyVikH1ESuu6Bl2xYlRYIOl8ykeNBsbzQnVIBpJxYoHpMDCL4+3iwYjQLkLvWIhW+N4Ozh
B+2/k0ZaT/i1lGRj18dwUB9mTqez7wGycdxHPMNmvZl1Fma6JmDV0XWBkweZngG3MzUQN92+7FGV
O4eLxkcBNlY53RmiLQa/63t2qFPi/R61I0/5LbEMUJZMsaBIlJPtmRaBVi8hzhHNNwubwmksO3W2
Vq8mhfAO3vcNT9qVjDIPTt3iL7wXODWVXLeZq/UcnyqLO04W8j8tGCCep3fQ/DskzqAdAnvKSR3J
mj8mE22eGIgGLsZaKN5LpBjTC60UJGXCQtXm7CnUp1kxM+p4CPGQHmo2M1LU/q/W9VfffvDhrfo8
kewTNYaE0zQdaHYZMhHuDbYiwumlUQsWWeIxZI6ovZPAJeaHxFxN0YqtNyXvGSF52VQFRsuy5fpn
wfCUHZZyFSBteLemeQUxbs6mw4Gp52uu5EwMYMc7ZcUnLXntLS8D6eiFQt6Z6NgFDLHZsjRS8HAm
oPHFmSnzjIq9WC1VVFb1x7y+RaKz/lPkY/NpNN9Fye23r4guAbG83TepfhWCApLdJhBwASdFA05w
ITuE9Z44C/d3cWbRZ6Yy16lcBHUpTZqNLQJ4dAFTyA1QK65ySU9Iev6vFIR3uGw/9L2lQkffkcR0
EDrlBpqSoxPy1tQI6yhogoHo+tDaVO/D9Q+LgXo1Lnc2L8XRbeatowKvw+X8ymM56vtiMLRR1Uik
Uym25XByFPtOMiiTt0ahkGcNZj8rbba741L/FT8wysBzttcySnHWvsjCe0gp7vgirX5oT9hia1/1
5efAI5K1FrXtaSPlgPIOdZR/1LZ2TGdseBEtuSaHrPjBsm7m0Ua63LM9bSLG7l0dhaixLG0cgG3d
jsMeCNePrpVfSctsDweHyQ0IzNAOsnW/2fsgCN2Z9ovUOpYB6cIOFNaxaYoQFMgS1mxdSz44t7JK
hYVsp1L61o9PfSCUBX8JciktKgLRyvEIv/+qK62Xhb+IarKLh736rsKPlP1sPW4bYCXtn3yWycHJ
vaihNYAoCVlXTHl07Yap+QsqrpFEBlKRVbE7e6MB8jiVNbtBr9XhfJB9jH/w6Y8tTpAVJElmEPk/
1IpqLWMYH8cyJNlKFkSVo8DvE2vnJj75k1QkI/jNSNa3MMThpDKd8BK09rUP29vRBy0QYIcn4VS4
murIc0m/P9CUPrnXfzFNN8VlEjNPcY7ZxDEIzBCZqOtOy/aVVRcUjtMXi4O1jaDHXSqvPPrZK+1C
vSxkd3Y24bmbgXANoJReK2y09WFWMrf4ZluWqBN+OJtvYwgeTtK3Lnmv9TwBf+HhTqEchNeJhGr6
fpUgZWn6TNRZwXkfj9/HjOgryMWwv8+T8fy3c35fcXACBjWGFU7ZHz2DvwPKYmzQrdpOZZ11RBrU
1tiCOLrFt6mR9t+g/bnZU+HDW7pxzdCX3v51N03adk9LCnwbH/Au2tTHkuWVE2uD7gX3cz/b3khA
MMNQb+mFb+SYV3p4jj4/mlRZQYwo0jZoY0wSO0QecCKLoN5FQfaMJ9p8CadS87jo7Iopv2C6zfBN
8LNpoqb+ZNjCSFyiazcNJGqzWMmY/c1SLxDMg5IK/IXSza/lOQgZ/8PHK2CE15wJHK01Znr3/Q0n
2M8MvPV2hjUHNg9x37q+Wjk9pDzryJyvzFm6Oz9Nrxh9225sQ7jdzKHdmfCAju39Tu23x1wzKn5R
h7hpSh6NdUrqNBQT5WarZaJTq6PJCW+CbjyKAhQ9d6YGcJfKZKoELddZgg42bjEpaxuaC1mb9sct
hcEeAJLa067pOQH1xXOjWWWZu6nSSs4mARMeV8OA/UqeOSSuTS3tkXs24lp77XmohKnJz6Fx34aO
huDkShOzHT1ZEQZt2t0QM5yAjDKCZTmB4vQ2+iY1AXGJ1snMEOMKEiJ11JgRfW1F+BEOgdxGTuYE
6VOBW/GOu/Vklf6iB68gINMPjPx87SL3gmKjUc4Akfe7bxsYX4n7OSGlM2SrBCSkYtMfgUn8s3GS
8Wb2JDTnPJK5nZpfZMnf4vSGlt59ovDfD1+VITjsy1MQzH359fz3eMzFlbfXQPxQxbTroFZ0Nwi5
IKTOZK/7SWZwzcvw/3v771K/hIEsAqCuYtAKQGfQuecxfZ4DGEDEXEyoEG+s4UcV9pRBXgKamK1w
GpDmLfxnl7g8cC+dAuGm8NftXMs0lJgPKfxq/m7L46fbn+RjYyvhCksXKWOJoEuJ+ETf3YP4wQOX
JkH/ycy37WrgcfS0kqZlr9JidJzlgEOmsCF6V/cE0+dGHZataW8/9JA1vEXcRIpcS6zBRf94/8ED
pDns7O7DqRwM3zzz2Pu19zYs45hUDalgQKIOWOAg5BASwNxdXxeWhcwMd/U8UTSwJKY1OGx21jNA
w75VkkQ5VOL64phc7FQm+1E1InxXd1qTBJH3QDa0I8XdLLcTM65sRXGbtC6+J4ITmPrHpEQMQhDl
5Y2ptbFm8BxverC/JT21Sh5nigE6RW0vAeqw9B30UqASOfjfkQa5kZaERYaRI4HiPggdR/+Oz99C
W8Rxn1jpZdcebbzHcMgJiVuIIFA2Sjhp8YvlJ0yH2BxxTRbinBm6A8y6oEmyg6tKVCWc5E2ZwrOK
JrvgF6/7pqqol4IgarUR7Iq8SPp6I2S+cxIe7mnSGw3KkKsnfv6cFzPIekkLMggVRYnOTQBCIHHE
kPCeJvnnmftGVtIudSq4WOiyCT7+aoB66BmnEYlL27SksgpJezx5YydHkF/vfHrpRCa5Od2O66I3
lMMhNewiXMH645+/1j+ZPia1l85CXDOVvV/X9gZO4FxkjdXOUuqJBekA2feLZWRaP7o8lTZb47q3
4u/hr1OC78frxGyG/tE+2W1/zqQFcYi8/JGfnr0B6me02GR74Kb1+UCUO7nAZGJ5UN0BcsuBDbUM
2mYSmbTcApqsR2gDyhINDEnD7ky7tza8iZcDYxyMck8E3myDK/k7WbagUruLLaf8p4h6LmpO5+DE
BjCqJuqU/2Lf+oWK5RryCI2eyLxGLTbNbJH2flWEp8jVzEazkt6ZDv2AlIotKb4VFXelsox/gqE7
gSsF7JAQJG5u22u//zIomidJ4ztJoDNFa6ZRBGqSg45vGxCn9Ye8LATKWy3O6Z6rZgXB1bZGhQo2
4CDXoUT0VdVF7ztV0F5HvUsK2dl04THD43MIsNmAdCd2Fw68eT5qn6YRF6W7nWugRKimjbFECP68
opUF/vtmMC78IZHmbKCVRBG7XzJYC8wtmHnvri+lzE9wWv/fGtBoptWiSCiiEFe6fYGeaKyOxD0u
Gr91BZJo7XBJ2BbyGLkKXR6E+bXxptPO0Io2ueg/SLvd6lQlZqLyGcfuXufa2RnDP84RkHmHxKtC
haJWZrJO1D6jOA3k+mBvshwtScwzlsfPBHzTrk3X87x1rP9IBSyX0QkPxGUqG0eYGKnsk4YpvVZs
6hIVYjiYB8+bBeskyBx6wXH1mgSXH05p4nXH/2qnGiQMZopEO9qIg1a06lgBsOlDPWvpfa7fT9cw
GYUMJenSLrcA6pUhP2Wt0xtoZuHlemZXjW9/LpCWxUBTuXieUuyZOyND2LifY8xqmHT6bpSJBkcB
wXWqCD8WP6iyp4w+jvhPFg0RnvVI43KQRsfagZ1HhU6Avc9KlwiqZhtqDccwyH+4RYY8t7Nn9Be9
DMz4E33Zm3jiGcPLMZjm5qaHOTDAzgYhm2iheq9olTG4l5iVOvSE1gbvciA8gukmRakkIBbF65vA
I6eRXbIAUvi5K2iLe/dR8oIdXyO7e8KCVl748+66mWVrf+I4wJKX5Z6i2zJvk9Z1n04vF52M3Vrq
vAj60xuZaxVkwMh/0IXYicbGwlW64cGemLrtN/SyHWtJeNpYzXJj0jcGsG5zpnqZpq+1aG4idJTB
INHDYhlYrvEdFBrVBV46Swnf38EE0MkeLLESwAqr8WF/AR0tciLH1TgfD41qkToVa7kIEwPE89Da
g1NipyFY9Nf4w/iWe6TNa3ivSygs1p5+Kf2Hr7/Mwo5k7pRxGTu/skU6oA0gInM1yFX38u639U4i
hUDLRbukO18vF01Pt6HO10eCQjWWL3iCVyEgqAeXi9P3I7RyDM8XOFtJHqU8JPtoqNM/ondihAFs
nZtxAeCiZmx+wUsxosavLtFQoyjqtJnpzlyGX3WBT3ftze8n+RR3rF/UW57fKKrrYpXXaQAp4dQ6
R/FGoOwxJg6Jc84xT2lI/05tv5uIsneSZiO95JpItaFhKP13rVmBVStEXrwCq3NHLR5ePV17buXb
I0iN3C3VEafxOIMJFLQ5cvpL5xwoE33lpAc55gKwF9HkSrLKx0xy1XLsPd113PbU+mK9nzn07mFI
rI8q5EaLz621w3P/02PKohCO7Hg05emxAUHOrrI1ne/1tj2372isyLDQ9oEk/lGaT3KOZsPy7tnl
2IP6hGb5v/Q+qK07HPLMSPs9zm4XXvzZqw2VlLYMaEYRko5EaJpk+fA8gdZxO5qaBDpNHSoXVw3z
qIw1YKKgXQs+CA7PDlnB4mFEnA/m1o1vif7SsmXvE3SyvcylnKq1HelXZonX0NgayAYWak1O5oPr
lzaiM1MdXI/iyyBN0g4S84HNGdukPePaf3IPMG0TsERQ4C51UfU9M7wSvzfbZsTIDvM2nxojMWHx
cm/4pULeOIqXwqUTLeU5eRpIefySxSMrqFqcjKDL63mMh7wDkgZOlRyAF2HnXRyFLmDgwHsXm+xO
IVR3320JqH5WeE/lH2kHcw/2IUzeMBs+E8cdBfhS92r2dIqNB1uctOvHmw8AjaiDR917bPXGCCip
UrsOOa6MGcOKJmmDsdaNmak4pboilAJ9ErSw89KHq+75bVyc3zrJJ4BuZM1G6Ons5NPPayKuxucP
8pk69/1yRWWwYMHYLBkii0vtUmXhJHsXGthyzkgLQ6htI44aUck5WLdAr37cfPX/ABN7InhQJGP+
gOMOWaMYlQJ3IFFVFq/ijpGVfMdsEYt7Cm7iEPfJJUSeonqHpUO8qsuFphICN+0OwOIf3W8dB9l8
Xjucy84Ui6cPq1Pi3pr9QoCeGOgatwrBvedbhTt8MpBN
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
