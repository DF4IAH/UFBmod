// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_blue_compare_0_0 -prefix
//               msys_RGB_blue_compare_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_blue_compare_0_0
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
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_blue_compare_0_0_c_addsub_v12_0_14
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
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14_viv xst_addsub
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
+dVTr+R24KSfSTBOgEhxfBbaxDSwiIrXNLCpsIw2h1HOD/DINDNJceVRRF/VDtLTjKafVidON8lV
qLrPKSfw7XSz5ibOJ3odJDkF6ZN0PZKBFVNtumzgm5Sp26XW86V90yP9kr+2opcFv+bLHq87wXSv
Kqkvi1dM0KD07yDwSlvfW9IPOHImXgFpYsmc5dtXqeg61LFnnDTGN3NHjkASw6cPH4az02XMcMol
eQLpg8MUfkZKDkADXyUkfk+CRvArUZ9kAoFkO96rGevSVpsoeA3DClOMIAUCxyYuqnOg240QTAc9
PcyRR7k0gXqb3q9FrufTCgPMyAO7xKUKF6XzTjJnUWGPYQlK2hPJou1AwcoYj6DbgrGhFFdzFWUI
3UFNZNxvvMmruru4AFlM+1ATcmiZhDuq+aRAGVGftUuhs9VJF9L4DLkz+MzJAv3rwCObwHoptMLx
45Tx0wa5qbbwctgFt9JcAZYpvnq1apoEObcXzQMkbBJd2CP5A+Q791XoeRAxmz7m8u1M7jKgG23P
ggK0x55y1dYCH8X9uUENRdRTgtNhvs6Tqk+P5gkN9jSrCueWirMMnmjYr/WHcm7BMviSedG/fA6Z
edeX/QiPdZt5CLRHMtT9c3fwqIanZVsmPCEDLBRVj8cD/AhisnL5HHODjmP/B2z/IgK87SryGj0y
ITrNshGFd32Cwq+0tg57YnKFqfz8ShJ760pnbg5R6wuQm0kD8vEoSwDqRf8guaq0a9+GiImUpKJx
KZTIM+HsCIoPBvoTNwhJrqbPhGtaGZyjp7K9/qv5c5Zm3BX8uWVIprkZiKefNyXMSWxZA2nC+5Fx
QF7F4WAzYuJ5Yz+mSevGjkwy6HKDE8GiM46VZtqfIk4WTL7t26g3zjs7DYecs8JD1tfPNMor9S7/
A5TYSGs2xUV/YGoxsuoyMnINMHq6uDkFOsUDb+4RyvS32J/RuMbAJL/n7j9bOZcbJ19IFzJ8OBPc
bkR9z56uJDOvupDcxlIaAMqqs++ZdLPPHCHqeJ0ms6DLkegmbHAtovjvTDySoXDgSInvWxmyl3GM
xIABxYIy0n0urWagGTO0Ef09orY6gIap+yCcXHo0z1oUSKtXSi9MFX/wip06jWm5QV6I5ozsOeFl
mlnzudiZC7P/yHsRrxBxSq2KCXERqRG0TaJM+DJoMn9l3aQl1Yu+5O6cUy94Fr53qIOFSszUJC8w
PTPwMUP/SGAoIxR1TDYehuOgDgvnMARJFAQiAXLzYHXTjwfW0ZLq6CGtECBWJpktFg3EHufprXKO
YkM+PKy7JmFs1utu/e9Czm79JI+yR05qduRc+1eAPKXf+39INYJTg9u3VhNS4R3KtLauZ1Ib5eyF
PJOw7vIC9tfrw5AvXAVjBuru/F2ck/aI0qrDMwvJVGks+ysQqcbgPWLlJovyF4/BTCq/yC8LP4i2
3X0l6sJzi8wQa/adD5A5tE7iEglGgttfbpOmNvI9pB9fKDMp0rw4zC8KQI/E+5Eb8FbI0GQ+HTHC
8JqxwN0XTrhg0Uvi4be0EFViPQwLynldqN4mkEoLfkTtHIgtrXb/rjB6xj4jS/zjZ8S5iDxVYg0S
yJj/1sIKRJUaTXLX6S2H+Y2+g2Z9IGPfqA6uaX4SJ5j4ewROLybb/CkI8eaKwPKrpan0ffBUE+Kh
YyEswLRL8tgfgoUt3f2SrVsKoNjy0USjO4SbAnX99GmvV0W1SaB15FefMuSREQdfHhUThJXN0To1
XL35Y1F+SoFSKZG1g+T+hpD7v0ep5E7FkIyeMFgOm/hGyGt/eYL+WWxFoLqKZW8rrWuZLstbjPTb
yz1pbyosRpIzHCini8WxFNCSA6vGh5uGdPU3E+U9/rJva/8hDQuWyIWcrwpoC9WPz7pqJkvJ+qYG
gQ0mKV9F/37D7Mdz9c0HRmrmLvgSY/98uhJ5G8pP88OhZFZ2YrnZtj81R5t40mPLvLgtncTdweBL
hy5yDDoSZX17BavL0AbodXTGv0G9PgZ0fJ3m1cwc9clEz5D5FI0slc1kCC9rQuzKPjEFSuy9a3Gd
VHVOp1y5k9pnS893axpZKIxtCP0NfINGfr90Zh5wO4cS4jiFppWhyq6bbUEvFF9MyHe9cPkyVpZT
VB5ojmSKNjnTk9M3mqOgEOOwy5Us4qHA6n0ue4nugXQk74gHIk2KQk3Sj3TdoNuTJWMexDNcZ4F7
gT4K78l31VDW4jBtCLRpOPcLb97wlj2g5nZx5bB9Ttv/laACwJ/A9sQVeyA8w1e3v1/Gh3aWVeCp
sZgkhpBEJJJnNbQMeArznNpAjNE/S/KNGWkO6bVrLGpHOBqYbi1aRwb2Q7M6gukxXlKvdH3HHchG
ijTibbiFyxPJ0R6wuK6YCsiAh9ns1wJkM77P21woA+3QFHnmq6jaiO3Zuz/b65cikGP1KqGzarm4
xFx7RqL9Fi0AySvgCB2wQLsm/0A2CixDjnS5AzRyyfm7TvpE8RSKnFSaLUKA6ygKZgCG22Uy04Xi
+6AIWgn/qgWcToHRL6Zlf3q2MkBeFFaU3+4H/SQ0TW6J2riy3Bdd9h/HX3OnHiRsi+YH8BvZvMJX
O8KJJWgTu6IYFHISUq3qMAQC8kKQpNZEo+BgY1aJozXyXuPI4/IDX1Ly3jH78b2yZMOXj7AUerVs
ylDU2j6+rB0gVSpgIsvBZGkE+Ducm70eO/zLz8B++D7xvK5C+oly1dp4zK6DkrkY55ZrpwUKnaL+
sw9uqhPDGntCw729dpoba70eBHudWYgiQf8qSF9QWw8r2StIOvI9qQyxNvS1Ze0Od1keuTLoCr1C
RyKYvPH9/wS/M/jfNiAuyr/rJoLXdwRsqmivkpOe/Buy+oJcdZPWSwBXG75wzvtpN0tJMcWgJ2/2
QqEaPzLlzvheFC+I3+3wedrBlqfqWkZQG8MU/YJq+iDDRsWe8z5/rXhbySGGrng6JMXEHaNvEzhl
h63km9nNhuLL5XbqedWwI25exKS0weedF9ktn1GC+GYDiw73Gk/qsfySO/yC+IHg5gidcATGRTMu
4e9NItBgnQ5mX6vx2A17FwOaJq2WqV9pBO2SOS9nvB+bKI0rbHflYNx3amXxFiQAhZx0bvqOL4vB
cOQtrxzj+KK4zed4smV+Tdpy2OM/ZK4lg7elhdLkTfUKhQjtOezApXtGITVdtQdfTOPPq85NUQc+
ZkR0XUhzyH037Mgmkxh4bF1jP5gpbCOSVeXwkmb8kow0GDhk/L12hVkuUjqiqHJ4zmeLowP/lbTy
rGI3PLwnv7MomRZVn4ZOWB4btZju+fsCRbcEglm27Gj3JBuVhdud6pbsDswZM9GDIq+1tT2B9cld
ECoDtGGRzV+j0H13KXs9huyWsN87+OAAnjGPRCKdaQaEL3OglFlantTNlXbQMPbQyShxm68l5+GU
eawOuiOpOXH64WNMo1RGJZr0JS+oFLP1zNrgDDHk//yQ5PUz0jVrSLIr9LzJzuiMrWpVsouoMKRW
lfGX4JGbpz7+JtvqArztOLWjy3Wqehqe/76t+fAoR3duOIWDEVXAV3FrmNMZh52TKaA8wLdq4G6w
xKrZ5AK1EKyqFbTkZThzk0cM/0Eg9pOPvHZ4ARxQh8oTn5w6Hq/+wh1Z3WtErX9IXw9gOdWbbx9Y
cSbvWiYzzoVGl0xVzD5QH3ZsIUMwu8XcjaDw6B7VZ5Wcf16sA3Fd7KVjQT42Mdb9PEaRsxu4Vzo1
wZmuPOgIjo+s9eJna2ri9bcFWo1xDMYhkXS/vqTR1WoJc3LMTGh33yr/3sHG0btAPk4XetSqsPGj
J9n6gUUfb0LbyWMHUhWDZy8Sx3GPUTivkoQ6bqWqM/DrshtS06R7rfwiTR4PAiitDPcsVmeMResx
7gn8APo//fqJA22XxnWy15WJlM9BPLqL9qlNKhaDg4GzXD4/QYyieDo82ZDUqupZVtf9zlPP/PT3
6FFMvf6a95KD52FAVb/5xrLvLT7xGIhUsUm4IyMb+Is4NrCQd39DXzu0RpIu4jZLKPJGNWhTU+6J
eVxg3xhrCzVSbeDvmHuSG/Qzs/dXayQGL8E66p32Ahg6hG41eGbwGnz2V2vtecI1zuZxBWIHVcxw
gRmyyKYyQwcYW59QOzSNbUKZ1qcusvjhPQE+JWRlfdY10di9Pm2hH4GYbiKOrAsM85hd8HqM+dEx
CFREPB2LXmxOvBEUC2f9IjrEZyPsHFrvuAU5LazXz6qPhwfNjOywtzi+RD1GS1Ra8wRY446yFtiT
lbDIvhWwEmkwoKm4UdXDPWwUgaqaaPncN2ZeuzSYDcL041mjE2/Ku+Tes4dajFMhRW1dX57hRC0w
d9C6RYN2JNYv1Xy7uRVboRaKXfBoQXnpETq9WDEqjNGd99q9N6zfYKe5Gv+utJXhq3F67lXGF1lH
50CjucEHtaJ6R286fF03XyML11P3Erh+zxpRvhHDFSDfXpQKW5j0BMKtiLoPXuz6QWOZOFgItZjs
WJTEjASTPZAwMm84Zm+WDx2N/9q1QU3Q5+w7oNSHFmC9wFtsu7XE1fysSA6mvthkq8PEUeEDrb2g
Q4gsBLNvZBirTojTorjaQB6+7FAjM6TTRsXTHTlriJ+PljToQ7YddoA5eMm7YDxsYGm6vjb3COua
jdGdN94LhksuZfij4lgRBfV8xJOALDxr8XI11Ghx8lFDcyTaAm7VyE5lHCEDv4ket+JuzHaaWXUT
AV2Txqjx6077bSXMSYIxlWKVDwU8La8NMwGasQoD6m382w1+nPtqIKSUx7ZhUzNPP05POQIQOJx6
5vjSvNCwCQ0Kt+kakzI1vCHIKkDXoKs9Z4hTI/j7Hy1r4h87nD++GQ9FmNQbZXiPGGOEOa3s26KS
7pLqHhAP0wDHieGNQfbGZ6qPAU9R1te2FKzTVOaTuL5cYZfX/8NR98LV++4+rvQkpgmjs+qjGl+O
xXyQocoeEekNwxlIBPJpDdV8SdMINWUllvzW+vovu7u3RQrKtdyphowwjTUGfKAmcXo+TaHomOSj
aOR7f/GhM3Ub7IYwhci+bVcrqiLUn2D6gjsbIwaCw4E/qNE6CpEJ34Gw6GVnHpHPPke+9sp/ABWG
Rvcc6pVIm05WoYDSc5BS0iRYko+OvcXylakYYBQ9XWYTJyz85JOLjbk8qkG4CQxZfgtY11KYHWMb
/27NlR/8pFpa7ICAneVOodU9y9zMz+sapwUPEiXSLMX5pcH/cRMIB+YN1H/w64uFfv30Asq/DPLY
bl0Ma0uMfKsLnD1Pjzq51o6fdqBbIfY+mbBzMhYmIuLZiUvccAyPH8GFghntJ8jbwREkCnVF9cJF
Un71Q6p2D5q5X5MwS+91z/SVb3X0DfU7SAGvGdEIFEWoUQoHWY5zKxLm3v7Xd0IYhmkSLEg7taFq
zyVLt97HEgVYdkAhdmJx5ByoMP/0ELdZqo1eahf2FH1UvW0GT2/OPxsgWU6Y4IWffi3J8JEKBI1V
++OXjLrqHLSVMPBKdg6fHWVmZSO+UhKnU47hD8bgN4oNF71Zz6LCfaYN9aieP27tzhv77Ks/+ldB
QKaRjZl+W4l9KPbB5q8ADfFT+sVuBpkuHV7Oh05YsFSCUDNegem89Y6vmujIv74dRkhXfF2+Ogiv
oTRY8ocOIHyjSYXbdePRFl985K1YtvnnMOo6BnSWYDpaegRnk4ez7p9ivc8ODKnFMQ3KMuvHt3Dm
M81pW4qIR6WlNbScW5xlqoO0nBPKRRoEABQR4pFk1zocRq42bYePOwCNZf9wqjere86zAzCz0NVL
t+LInex6FiFCJ116rkJMFC3w32S0VyRn8uh17HgnBMnXaCaK4t2WLyRyg1VtUTh/ey7hWV4NskYO
EISAtDwjyQQ12926wJWopUFnZEJ4/nREOKauUwSPSK5yyVgNPEXaNw0gvuAid/Mr0Wy9VTzzX7li
Q0sKF1zLx7xSMWwB8eWXPlVFEr+E7uz7TFb07LoNz2B5Mt1A3bZYXkzTfDUFX7DYSzqwbVu2Y2QP
qly467yXxcQHop7RBuh81dw/ijMSi0ySrCmDT+3t5RgDu7TqiZq+ap8GOK9hwrozCJ64mHSallMs
4uvXrkkWxXiZ2ijK/KXN31euxbWHipZiFio75PLdfFXNpuu78Vvp/1LpIQJY8ZZ5jSJlNDzYQYya
nKwB8fS0me9tk9H9icfSzmGX8th3+W73ZomhobWQQuEghZU2EhLQ202WcBhAMx5s5XZHWlB5Qtsc
wT4fEtI711+VHuP6Xv5ghHGmA9MfNm4dqQyPHhKQAqpN1plCyMhdvOffLSO4v+PRijm8+PU4+KiT
k7/yNB2xgAjnlb1eUh/1ToRjSsEcEepamapn3VD7iPHYx0EDjMEom0KeRiHv8gt3N04gdi4b94tw
f2pQq+DjbNROUpynZ5CH/N+hPGUNyB/4P7T18XN3K34eM2dfFC16nkSqvHyj9QbRFR33MROSTgth
Z6t4yW8Ulcs1ZRXDtqNPBQ1ibX7ZXQJRwdkWM0sT4d+GoEQKJTpCQQOTH9uHoZd9HHU56RfGp4DN
vyOFQ+eHLobBkS8aA7mYvycKsYis3gVfg8XiHHVA8T/JSv4CmAOL4NS9rM4FGvcJZTOwjhRegm17
gn/mGDhAx/P/xh/z/M5mZT8yUGLCIB7t6+PjBII49dDVMYcQNSw6MjjTO3kJIUVx6qWRhXljnDmt
d4OKtegBRwLUTrL0QyYdBMIIUxfm+SoA/A2SmFpAnKdY9uVRe4sCftxk4tXgpK4rfGNFbf1Uny3x
fHdcIfp/7zl9x/iXE2R4YXGvfqpFHs4SeIMoZvSz10hbEZHIXymS1LsVEp2BZfDuD4fpaj3lj/rd
nVPUg9QvgWynx4X7QCzlHXfKZk0Vd6TL/IwkzKxoRGLrTEjYMlHgtYPGihsCWrT9xswN+94GJL3F
TvbiNX7nk8ZYhTLdDswfXJAJPmFozE1y8t25oskM2hzTZjROasUJH8Kg8uGJrUR+RghtuxBz1jrl
zNEtKlelZQOuIbDdBJeIBPDOnErFwJe27s8T6u7l71sHu0AS5xk2lxhQRIABfZf8FWyNQgQ0GISF
H04n/5KBNL58LaYi2hkJFlma4bORD2y6lHgpfLAy3lbGh1Iy7DaactAGIrl+1kx3gQCJh1BNGWgo
xJPS457ExcCgyYWIaYwpevlzmmU0C/M23DY5MW1k2zmjnyRSFvxn19sNlrRhgBYWd7morsC8Zk4a
vZ567MBoW7p9C8E7SRaAoKXCA8purTJAX6kFG2RMU9u5bWHismPWpbNNrbXoW+U/cmz4lo8I/r0o
9anl+eUYkBthu8HLns64v9WQEedrMxhJ7KmNRULeZLzbsW6b7bqA3sraUDL+dGgBcUuMvRuVy2Vl
zuT77v8ZbePqhiKwi+eBKtXlAzGJG166ZXCJq/tbe/xkJ4S6ITKdWDZ0HgTPj53lbkLYGe7XuNMw
EXzAoeR22kPbJGBKWGMjrdk9kKs+dtVnu5m4cLYU+TQWHiFBDpaxphYn9vHm8s7/3/yA7mg/EXhU
fwdo7nBDvHCZtYq6GFFLQFDFxt7cmnfZ3m3PslDymxcWKhQP6f9b4XigPxOUr/QVicD9Et5I9vJi
/cBopu+UvMgpc/lZKAgwzvFduDDD/aRkVt+ly8C9yM2Ri296w2cVG1rdBKBeOrjzMkHPl6XTI+hI
dPQgS7rJM4jDxkcLiAq1gKcKvn9mvKslJomhlnU6rck1PsHCx1FlVcXyoZi1kN5UrZwh0P3YYcvj
lDQqT19eApPQvRtWaeoQx87pMdW4Pr4OU4eJjZR/HuQ+jmhhKZz32OVxy6QoqnFPbY8mRSbBehFG
I3koKAN/DLLyioLQwGSsqzyXa/S5jQ1YQ6RidonSJ4lQgYMN8cgXM/7bg4cFfxZdOB8R3q4/InG4
rWlHinC9cWBiyLr8KttNmyU3Q9SRYzDA6ma84TwToJUpFJvfFxqSlFqsJhvuPYTGMpgofgtssgKA
VtnxoK9Ycq20dJJl1NkfTo8m2J4JCgY4vjkCe/VeP8FtfndparuLwUbkS9kvhnaSnte9YyT6BQ7F
rpzFYpyo36f8kDtNaicAmTSeDjrIE14OaifrP1I1Dq2/GpvrrCLMIGCQ5RCz7Gcv3RBtg4MIlOKW
GuKui+up28TZGa/REPVGlvGVGD3H+wA3i0tN9B7IZU96MJexREM9A29OC0MVXGsYNJX9FIyVWQh4
hsc8Wn13ckZ8LDiWpStdPs5r7TDorzs3gQeR5uiyw77h4Zrzie8vjzGWUQK+YS2GKWfiI/Thzo09
94OuItFIvxO2jr/AIlurpCLUjmSD7bKw+WKEJ7PqBSoRlZ9msA8NbgGqxmRixbz6ZJVyKo1zsF/B
eiK/OtYL/+WT9MMyAkm7EfXfONfXHOMEDffGXAts9jJb8Y7RXkdDGFYsyU1MVUIlGTgEIZXRzqZ5
+429jpl00ncRvsdh3s4c87BdV9wMIeSoZmy2t5YgJsmjqxT1u/T9GMfVEgD2KEMzvIkg7/yReM4P
4vNJaW8DYdH7c79KhTIdaf+PVg1Ir8lEPLDPWqBtYd3LUgthHdvkeQpVl7svC/fyUu4iUhPSZqER
OEtM+MReyvpz6HydZwDVDNlwovXkqmVTLQD/JUjw60NI371nMHFfAUXI81L06CP2MxSuTMaP8/S7
gEwCCCICnQmcRU4Rpu4LRzpNc7URaR9rfMRj18SjncXBlF251/cWRTi8trwxQyAYncNUo9D3QNQL
asWuwE48cesFQ6r81JE/+G8mzJMotMGCONazXrxK0WCKezHTxM9aihAmrz/YZQ1DsWspurUNjQV7
Fo2fJzdnLV4RyvOvqlGAfoKJACenACUOugTnXps3E1QUCAQzWjXe5Pl8T0d6Hv27TfTA0oflSdzy
SFrwoVQmR0pnA4u02dYTcrEqCHkkHO8U/FOqjvh1u0YcM5Od8huy25eo6R1YBP2X6BJ2L0oNICOO
7iKTbI2pnjsi4yIgB+Rvb5flx8zwYXdZ9x6GSKAKepXTGtDXslnBzXQzj4BhueoPZNJyLz6p/4q1
z5bHxRY0bT35WzQsjt1+kiyPI/deRh8FB8cZfFkRX05qGcgI8CPt+M7U0i3j2it1t8ZEmypAS8jx
h+WnDlZypaWQwxJhA0r50MqMPHv4+VFMZ4gdpdLHqeJQbAVMKAC14BmhCKSSR37pBme86fh9YJf2
QDzohmHKOeRCNYMQOHTTrW1i93E+sPWdQqt3VlfHBNBbIQ/HY04JCQ80T9waydBkBtR/KFm8etGs
4MCy2Yt2Sv2rGaO6+tA/ABxuPFRyTXDLQ9Rq4SiKnb2XBJWImBFXCmQtG0cB+H9h7kmvGtcBH80Z
8tSgl61Y6kgG+RqD/SbZP6nqUfHKXkhP440ED3lWHXIbMcm/heTAcscYRf6+HK/t/ChrhFnZ4ZUw
Ro0TGT7bwFekgrwqodknmBRvDGbmmhcwKyUxqRPOAVfCx6JmTxQac90tD5g9X6V0P7DvBrPUITjE
iUZUSgO4HIY3RAM4KcvKmhc0BN8wfm812A+1P3OuQVuavFTpLRfnS7txQoYiYsg1qg853mG9iW/h
06KQCAJrjx0SEtzcsSryxdPgqN8FeT05RoIer0lcEPHbZiulg+rg5AJHqGqGhR93an7zmYnusijD
2Tt8biio5s/ddrm8+UlZHNhKccNEZ6ECia+l7UJ8cXVThgHO5Kh1+lbrt3YPHotfbw2CfgSq9OMA
99VvIrmWVr19vrbc/9DjEO7wfz3y4T0A3cUDMnYBq2QnsrGoz0NggIADc3mDDkKKzGkHPWjQ7qE0
fuILFOrky4Wu2oxEeIAMyRDqsUYZhjtVkn1B8mzoRmjYhkCvw4QYpiAyq7jRrQI2EH949IeUL6OC
eWSi5GeF2IvcoxNBskV0us+r6OCU21T+r3ELtVTWXk9cq296vr18d8L0sjq59t4hZ3ytwai3WndN
yw7nAQ8kjLaVsqagFoxqzWBzS1M9gsvxYBHsmznf3G5RRmzFGnwucux1/EtCr+qcxnf1YlZQL136
QpOA5bmN2FKfly8+cmZ88q3XtF/8XAFWxMFRDjXop/i9KJJZBSr48bUaH69tooQcOQZXZceDjXIQ
FvHqmEOWvqz381oWkJ9xTGPj3pUshFjOjPHdcggTX8PP06rY3mKddmkFHGSXtuJNKbpfwXeN485k
HQPK+61X2jwAj2jtRGZLL0bsN2BtW322dw3xkBjW1TiB6LujRrRbXk2bZNoZg0EA2fZYezvz+Dj8
K2RuOVOpDhpYBc6g4jGU/XUOuomTdb/awy2gP16BOJ4JBqSpQTooJXiAnhC8AXclmAcCD3FFIzoj
jUdnznuCwez/R97IfAD8fIkWpoQ+aUTgRE4IcHpYBdAqdshASkmH7XBIYg7qq6WxUjzFgrlgfwv4
MZazec1LdWr3hn4vrYVo6nE/uMWExFwelyF/nIordD76NyQki3TtTD6jRM+t0ur0nywDjhYG1FIw
7AU3X0CB0NWDdlV4Xv4J5cgOlpcrOk682hhQUtJpOPQFdQDcYH7HT+SNnEmEZM3s88Y2CVRX2vT1
VtebcZToGrnjONlzo9OSavc67EHbkngDrsk2HQkg7//kXaAZrbfehZKEjV84xc5yb8yyNuisIWwc
QBMmEsh/QSHi/McunA2ikhNMZTDKkXYQlFuvbQzN2K/n6oQmv/7V9JbjopJdDFczmvDklzFN9N2n
X0cDPzu6qTZJvXbr2QKQejDhaCAYnCJ5nLk6vSEwPEXIqawv8Z3Omx66twU1W5C0BePftaCR3NYO
oMiFbJ2wYj1nJoFP3hussCZLMT0aTrdjebGwPtWyHb7RMbUSVDpAu8FphMCmPI6GTQ93WZsMDWGh
hZByo2yI5a7wdA+YsnlMVQKGi9WKm8d0C+pbM9rdela7vhMScpcQujEEqqkWGyiQPOOXiP68LxxP
nGA0HtMGSn9BzktOhUF8rsu8ChTbR65+z7sZh6iv37rWdqrnhQdxjy2n959gnDi55hN1vpvQwsd7
fpKHhLBuMMLmbNZpV9+SXQWmgSx6OHHqpnaZhswr1wsx47e0ynaw+ZFaTUyJsTYCxepEY0clYMvu
xlujL6oska5nza8QLzTTRzAXwVGT+SfzVBWDO8DBxd+aJXPd1O5BxLKXxq8NlGqndhCeIIFyNyH9
e4TTA6SpjldpFwAajvTvqSNnKZdq
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
