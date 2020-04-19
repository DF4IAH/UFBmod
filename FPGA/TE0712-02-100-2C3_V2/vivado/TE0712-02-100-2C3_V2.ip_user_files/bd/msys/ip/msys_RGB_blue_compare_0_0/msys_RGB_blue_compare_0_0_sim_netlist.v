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
6aNR6tYWuXdsSSKDhUNZmuP2vTKKBDGq+IalcZEWat3kSrAi97KcCyCdBRGh4v3KMIlLsjznJUUF
+KI1Obkn28u8JS0wQlimD3gfQIsBTp9N7hAcjtPlWJjrBqwy+G/nO4bH7zt/eydXRIodv98NrH7O
f8qsSCLSbAQR7BvG0PjORUpUQU4antUDScuWzxMBow9qP1qNhcBxsrDIgFWyKAwacZoFwlLJ+RsG
18cTS53BUiEjsxY74nrRucC2RY1NicLSg1fNLXdbVFkIlhNBq2M4YdamKPzYxThH1CxHpcTjGSR2
agY1CM97ITILLeJSD8E61Kke8ShgcGppLQCEYHFz1FvsdPuBnf964YF2XtOBWtas6TbJMK8qUuEL
0p49Gy52+fyXpdJM0+fFan18pwidquUVbagCM/WgxRFrbT1a0KOh0sgIYA4TtfKUR9P9kWG9EJem
j7SBpH4LkSbWVLqFA6vcwV7WBfgX4wz9Y8LCFmYZ1+UeGoMI4w/RC5jYXOHRW6/MI8RCYtGygEBH
ybFooUBQpWqhkD7NGt0wKEabxJLGrPL+FZF2J+O4uv3703krKXWJAahEZczWnMFDvNP4JxyOOgiT
ielEM7UgzX8UiB3SDI2QWkwrBNv7jZcQPYLjfY+bhd82X1oC5a6tkQ9tz6wost5OdrqLEzZwuByd
+iqB/7eQmhIdlKsaGUSlIvWeEgeD18dEeBsniJRdXLFTpKgGIZ54OW5lGxaQ7BrOaDGpZ5igPF34
nMCwBA6nsxgkyXKvYrBdvu8Cmeh45wdgPJ5h9NTL4J5pBgi/cl7xqEsDj1a84rhZ2lLhZVd2nHZ6
wNKTO9VF8dY7CeTY4se9TNqs7rNsLteaMRLKSTVxYnEYXbMQd1vqfsshP6WUg5lBOx67MccyVtnR
UkFex/qCzwrao9W5kx2SlF5fhdefC2RL/fW3UocOQW3HJC1Si/rY57nlQOSvycdkG7/LJn/GGral
zT+AHBMtLrJkI2y1eY7VqcHoBLHRXpmUCM5x0sqQHTx3CI7VUBG83uaCR4Ps9zpG1i2PWctjVxFN
+t8YPl3nAAq9tiYXFFpcndQqg/OqhbliZJRwtNV4qwLMGjRkPus3x8kZmMzaC4MTTquhkbxT1eQE
R263tSXne6XskGsruzEdo0ZH+EgGRg1zUFO/zDn+MG3nZ4Jt84OcGsWSXErkdSlCDjlLwLEWkiuA
AtRWsUA7UURUnT1UGsuVEYNU6hWKt/DoTegnpw+eVtK4FC5Oc0thNlYiacNSYqRY+NHZFryH1WsQ
KqK3waYy+xOhY4r9AC7NR/G1W84P0zjGZojjRf5m3xY/+0TFA/j48dVgBSgbD51Q10xwNFdo1mOQ
kl73Ntyx7JFzihkhaOPMxnEdJanbcB8EZewt9ShPGIgFEPXmi1s1gtMzO6GCEplvBhy9nxrILC5y
ZlyHQ4ipZCSbLFmbQbLGrlhG7RuMmy5Cu0oW+QJocbzFe/eEt/RFux5Et2oz/S0Yisi9ybWJei8n
5zjpWcHoELSCFFqKD6lBZWS0p1mrnPyEgIpIxIQyNl8cGPfmpscHgyoGLXwd7fU1IaPo4G6ozOJU
M9MqXDhcNCQ6m0gkJjSAW4iMDVCrI7B3PBowzAh++L/rMZJbfqv35qfCEhl9ufAIQmmuZ0NswAFy
pGq97PMWKr2WbSYfgttsVLQ2sivBk4nUb8FhZ00VHbDBLcfUAkKnLwEo0JPc30SYwfl4lI9WUZgG
VTspP4iE8l2DdMxnNMYit3IOKtM/X3Rd5qN+G7q2T28Yl8DBm/E5sHpijsU9q0pbhcm8cPxAygri
IeQtHIXv9xav9Sfl3duIn6dT6d+Z+bU6EgHXPzZEVau4f7rYNONgbDWIUVpxNq57mxbQwxp55zoS
H+7UVSGrzi6bv/yywimxWQLd8Rad6XSwuiFVvlk4gS9YmW66GjKWi00yNL8GB8/JyaxBOeS6CjNp
mHhRGokwmT7kgU6Ht/wNiJzCR0HTyQOzLE1a1Xj0h41OExPxiAgxxPPSzqUCQxo8zOItk9xmVAXM
bgghICnmJD9Byzf47bqqdsNw0t9qDh1GMZfW05BwmKGG2g6FY2OyOR4E1nSNnwtIgVzD30IWmaOl
bMCbifuTMMftHt/BpRuDY0Yjl7FY5WDd9OBVo79B2okvhryQrRW3SiTMeGmMFL+GrXcdQYn7m/9f
MBx6TUSknqoPVskKFz5qS/Zt+9mCvKJFugAmwMCXg4z8Q4+8LrC4HMlWoQ/j3aQVLf2U3CAJbD7s
o2MCmmgRN/YN2cLgnYKmWfiMUNTSMdhfFYzQmVoMSCM+FnK/ZOkkHeRWQ4Lr5pcdFlUrr/1vge21
7dFESECEknq11R1IQM6YypjXg3PY8sS5kg6Q87GfqtGbSVQ/kLd/Tpmw6BT0CCk8z9HIgL2iEI6B
ukvljXz0RhFq7uzZRl57ZO/3Jwf5aZUwTBaGOuUFJwHf/zLpPUXN+0apyuncc/4MJfdefM71aIIP
q6FiPSXHEl/56aUQomKH3SQANaCjgoapOW/nNq5MynsGkPZ9e579HZ9D8JmZa4FhlcqKgxkp+Cce
G5CLV5NKIvx00u0m8ziZHETIXBO9FmLZdcCfNGcInprv17A6ny9k13/AU72MbyJugWwWdIIOkE7I
WUcrFgJ0fOjctNSxv7CEBb3wf0KD/wjhyEjfCL0uSiqvQI4rn68q+t6mwEQdD6rkzY8+cLm0u3eE
ux/Tg/upww63+FxIxliGpFfCCEmrDHClrbOUZ+4gJ541BW+zAZbelo66233AICGjOFuCbV47qeS7
w3PZPNVhGdZ1FanjUoQdjej++i86hn0Qu4gJeCEubxgEesO/TTVFWzsnVm3z9Yo8gcYe+DagipDF
ZaZU/pN3e/TMOvZuDHRdsSjBSD+nKRDKO8My360CM8bGuIOSx+r91rSjdQSCYnxnoxWHfNArFo5k
jPz2eOHTqu60vwqbTXvOlhwR2sJLTVz80N+7n6++VJ0CJWzCE0Rz9It07nBaEutW0GQdWm8Ocv1z
8Je20ND3H+Wx9INKBkghPBYNPlJkCDtu25ShTKdNcgfuFPgCMp0memPenNyqf0pb2pZqzOkkuxjd
OxpVNw2YFHweowGNhfJ7Q2pNkLzWY6IiMlrrBQnkZbpKnq3lIY1y+hb5HwSVwlhFwbnhw/PXMTEv
3Io4jxGfHQsE911OziB2JXElFM56dbNCsVyJV0NpVwiuvoue/MHQCxajxLZSw9+8IiHmDE5azzeB
hFH8u8Mc2TpT5ExGLlDc6kip6YL11PrmzZV9G85mT+XOcAJP7HTYyAULjDkivlkQpIEm0iO/z71b
eypDOAwaBmn/fwMF1kJQDysE2CWijf/VYzNX/hyQEDWIadsM2ALi8CxWCaAk8JeI6nZEfu5sIpQJ
QBArc5ucXsCmUyddIp8k6OFg0ivg73aje/9fMFM5XcCl2EF5BFnqEqw2M3xB9YGSC9OuXn8idqi+
puRYFPIeBZUP5vwy2rMQdbwbPHfoV67i7X4gjAI5yy5nYY5xwzt7rFw6U9twutdcImFiaqU3Coko
c/OKSV6K8Ff2nUHokxpSPma7u0Jp0WDxemgPdVXEIx9Tn2XmmIt12796nHJub+xBq/nwVR+MGEWg
nkeFi0hQSVcihI9Ig8o+mLxB0DWqMYau7sq6E+CbsTZU0w5+9QzdYK35o3Ei77dKOtd48rvSXPQZ
uCfZgN1ahwIvSPonzAwn3h57gMKQuZtlTUqC8lZDEp+RNiZ8o9YU33TdtgJvly3K4vq5AVPGtUdM
fJXlQ+qbCzVZWS+HOVYB1+OKuIfNhWKpE2W96e/7vPYEl9rcYTOPv7mp91EV62V0Pz7K8ia3w8w6
YZIsbASOtC4IYfF4+IejWLzfBrbbca7RMiWyCPwXv2lxvykVs7x+bQf8ls6caa2v1jq7q42l8GFg
aum2fCIRRoaCwKWkUSr8/IRz/Htkdo7N4Tgzgo2i9XBbusiIqCxVYtUcKNz4WXob6UXkpGdpAZ1c
hKQvoA3VEUjvIsuuD+QLUrntKn9Y4L9R3vavKhcJnYzA0WL3+p+M0tw2a9VCIj8Qq6QinvsR5nxN
BavIqbycBqQR/jhtYIrsBhaifJF9pIKvd6t9T4jaj2GrHNKAwn6VcsL0gU+3GkoeHFTZWE3Y1zRH
6Tzv+GjXnlyVp4QHukzYRNMxIWfZ83rsetD0FeMx/N8idiVSmKZOIbYcOV7tbuA/uOm8Fd4Ng7BY
JjJ9eBD5QPLo6JlajkvfhO3A7Ao+4S9mkDMXhcJ0GflhS/vZfW+Sjj/praXCsKVOOTOWRDyBTixJ
YYPJXXhAmyv0Zg0+ymt2AKiP44MO48zBtFRhiGE8gkcUZdkKyfYiVEnWptOmUlG69PUmmtC4JIxO
jc/26z1ZYRL38XlgvYJ9C5tN1mYqyuNMGtmSjxR96ViRLi6JGGs45IbWg67AaabVn8CPLUQUu38u
JOVcqkqZJ8BGLg4vjYE14Fz5bUHes1tJ1Z2YA8ovpSlD7JIQEHKMVLgb06XeFMbT/VaB9d+RgesX
5HVaXQJ/Q40xXtyD6CFEy8wBn3ELJWamgCuUVMmRvFv2cqXsW5dxTNnxVTjR65XpeAyy6rlQFKql
ItPGNKmZp9UXrNP1w64771baV5rudVheZAiwxyIscC676SyGFDxb9kFs6xUgPZ6WWW7NOLeX1Mdb
jTddV8RP5v0nUmXaqdd6vN/YPuzU6loarEu875YQOdjZFwuclxpZfwgY1RToe8bZ4v8DjnekGufZ
1cFFMjRRDd/+EPKEy6M/+Wc45blWQ9Lk6ibRty0zQAtvxyHlrlzMJl8a+EmN6VFSpUuymoZpbO6y
5RU8IbXivlhyJSYG5x8rN3RMgoP+bcMAZGsqHC9kmE7ZfzrtISvCKw/25O4402BslE21gGbZ2f/S
eZvVsZ6asvg7/Cam8uJWiQ47F9R6fQbAhCtNqk6jr+/S9UVL2N5V4IdK9fYYusF3Jl+NGRildU7m
NkpmVV6twHgf5RzRyHGD2UI0QcL1gLmDaAMPGxrKyzbpxy9LpQ5aZFi+vFojpnwHkVjXe+ukl++/
pkGjbQuh99/lxOnilqHlqwh0qMxj2VW9T3PLlaXpPK6dNe0jTAsTkHxuU28czapXh+ABZ8xsIX8o
ThNfxedx4ZOuVLrqgiR0jyhUUJnBSbeVoZKnPSttby0gXeC+nV8el3qUv2O6xm3XJOALmACI0xh2
dHfk4HDmhtaMjtS8mcPmjg8xQCYBgpdh9fcEcQQfRCooLc1oyMW1cfALyKXmDaUfNqZMbvEfIF9W
h5bNpxfm2TCy/GxWDg1I2K2113Is7tYkmcLuci4R7iDdeslfq6Id5HYVrF4ZLVyZkSGvmsAdMxkO
fVv80E5mIkG4hulhvpp0QDFAU+CCFPgxpLMD54I3qLZi3Xkkj6hgfpyHTfjKjsW2VaZiR3LuYSQe
Wy0fsYzmHy2r0q6lmbXmnPlfqAAqq+r1vS10XF/0Qjuhb7fJHzd7X8QD5cuGEMdj/ZiDekBQE9qB
1aN9YX29UELTN2I06tu6tjO5WA1BZXLij+m2usnW2bUov+O+a6Uc/bB8aOo9pHtV9PVNNMlyJxB0
HIGUVyqYWX3/NOvZQfIVBSpTVjhZkbQ4tDwTmtxHiIqOIIOUzUOb5FNfSCT2/Cry4szK4Bb8awtq
S0DyfgcnPxkHTJyaY0XkupZoiJEmyHUkq5dww/OwsBHQRDJCJLi85s5PrI0vIHnYlpy5Ukl4TLvi
10Wba32JufHlu7vBtmDmETPCapCNa+QVbRup592I6113+9xYKVF9sq2g4zSJ6HZff9PCI6tmsgfY
gNWi8HkmOhiKGkesFjWldPTuhOQEnNAFj3NhDkh9nnk4c1O2bRv9wUdH0vzs+53Ul+cn/Ea5oVMt
MKHKot3cmsx+vdrRw0wexpt+lhe78XnuPfZb4GuZUayqGnu7eD5Ieh9SR0lrSdqsNmDorDOukM7b
1KZcdCPA2mrKR2Zpbf84yelYE727U4pwEehrPi2tclnzCqM86RSSCurj94gqSTxNWEPzGcziY34S
8mmW19ahUHezK/VupqPjiWuAnsyJQEXt60vDv6MDEsP1YZRv6dlJ7iISqPUb5Rs1OQD8/2g6mZEO
BgvP9oGoA+BBDjY29CRaDbbfcjTAM36p3IH4sX4cOgoTxU+ZcySDSLCN9pbkhTymdtIfCOTzY2WB
SRk0zP6ttZoq3NKx1yz6icjpKIZXOs2PopUa8AzkTkOCB7TTdt8jYRj9LkiPr70lwwrCToi/YtYE
8qUtc9SBWLwwIQmt8scqRryFxhmPaiknjEWMImbUe/x+FLaSDLuzMCceWfuw5jtWnh4dFKnhxn/0
/NfWcwqCaDuklItgQT8Fh564IDAh33h/cOp5yIM05nn5FZ0V6hF54Dn8ndCj8zyvArqzFOSai9Sj
diUT7z6P7U0eGgX3k/wiwemLMdPWxEO8nEGqngn6PeljSbbd1Ut4+hcM0C8nXAK0Z6wZmAx+Kgzl
lJgUm7jUst8+oE4zmS0sFgpM53Lh3gXZh1ZQ3eeuKD3IxSlbmQNb7s0g7sUFS9rSB6mkDaPvWSX/
sdJ6AfV21/mBM4tqn744OFA4UVNxlnKEn3srC/ORy8Q2o/RVrMNCZ+jCPg+rmZ63nMq9ktK4+37e
g+s3cAKPM3i5TFupbESMgfin48DL3aaac6qsfkA3d7ER4YnngaxXLeHxcU71nSKHcuA6/itiRGtF
HgMXTWhNoGDrj9MMi0TJQzj91nKRsYa1symUDZTmLSKKCKBic1HXi/IUuUp4ehiUySGjoL0Pue1f
sNY9vMyVs711Nl+4vo9y5NEihCHnIekissX0KImgw9tPlxB+2YpoAhX4fGgVeZxsATdpolXjKKjH
0W8N+KySg9Dg5J6pX/vypdwGfO6mGli1ck/PykzW3oqjQ4TPEKQp61pUaaqawrIuya+3O1AzLrQH
Ns0CwV0PHe14YpyqcrtbFI+e8rhkh0/ZNNvCB4xguMeKMAjO8WEPZUlLrxDtFh7z275Ym/s+l7YM
RPnFDLgTgl/QQNwRigRkwtKy+sC3tcIyiusyjlOOC8NL35cgag2OjTR6UwyJpqFFK3tJg8C3C/ln
fCvW28RDaKJWWpQhe7IxATmIitvn2FpfbTTKgiu4RTysSlFWLKY6j/RSKP4GVo9H5+xHF65dUWaT
Zw4BTfTJl+X7XLb9zSnDG4OPu0d77B9wPWVT5kRQwNaU9yXdrI/IOS4KAZ3yykXfPGWIvtXaQZfO
kn04BpE391U0DsbdBTK86LO77ckSXxJtasvSEBDXJwnqapdOoEMIR9ospNNrEck9EZNGnpK6pcjs
KSvuDZtKSJ0vOUK5rKBpO9bKLY91ZFgWECbhHwr7Iqe3x1AM8YZNo64Mefu6K5S5IvgnoaEOYWUE
0UtZudhStKEmlzBRdSqVO358EsVGtAmfQVNklO4n94nwTMT5YiwHG8cuT6xMh1QZhjiyOcqKm2n3
iiUyJ+JNJwSG203BbZFMPKpMby8ZVlFJTET/r+z8gr0OH122+/UrvyswCUGYOf7lol/cm84H6stN
Kt3H7GtB/o6Jo8PZeqEeFiUMOYhTqN24tOOkdMACvu5Xv01Ngkzw2+X793DzuqUlLScrihRFDgse
uu33qh+vJjfO4sXcsFHVev6XfZ7I4IyZ94J2F1A41X6JjDcPsljHs8aWY/FCB7F6e80BZxupQZKg
clKzrsNDdtAh3i1JqHx4dOnqFRJLYahjyM+h+saLzwajg7lP3t9r3xjoVxZvmEoVqEOof+YAPAtM
e8vPpoEqogfoWyrMMoAaK0KOH50KHqgpmqAvJaliRe54GJ2Dx8KnU/agTWE/68hsbPCkhurc/Rgk
r5xAziNvfPOL/cPD+x5AQp7BITdRnm1HlJ9/yfIoD+Dhl8FURgGbJsbAvGp2F43Tl6qlNJ/mS0CY
3oTZHBwhcMDhN11gK2Js4tzL0OHICoGB7Gc+7s/EblAUcBqY04CeshREyk4hKZ42YOOfUlZ9z44g
o9Ckbc3fkQwJWCzctcbPwxwREIbVoyA3JJbnrHT3tL8cw0LRYG++gNiDaRqcDNG7W7QY4asXoujx
F8vAeIINbgs4Onzhn0MlRkQfTbWWfTG0tGhGHFfCxI49K6N1krMvtk6kNXxWtXtKSwdtIjPeY1Wa
32RiGEMIUixXAj7eutehowlwZfo+v04rsqzZopEQ3WS2jWgDUaJIX2dK/FwOIkm8QojsILx44V9J
CofbouAvUJbu+lEZ6O2NEThoxRT2vwa40v4BAv7JyrFJ/x5+obmpWWKYqUrcY9/N+GFiVGWkGI3M
kwhuAbIdPfbXtomsgi5ihZA71/LU2SjTnC+5EkZon+CCQhc9q2xJ1fAEm3kz3Y4l14O1ksXT29BG
q/8GW9ZKezEXZNNwmp7ccVgn4YT1I6S8aeaiqPGcDru9wx8Zpb2UEbwW3e/CErpm2rhnTozFuBtY
jQjQN+bpvqo1CtK/aHSMCzlEwazcohWAr0ng7uH0TnLbZ07b+8FjqIwpZCOcIvCOnBEW3ESvUrxy
h9KUMedBk72XPwODQZH+Ti7fvh9wmTiP9bo/RsmMKGxxvd+Eu8+KEOIUL8/XUmalf1h6UMzvnKCK
brQC5WKvYOCIHuE4U4Sk0LbIQbfmEYLWeW21mrLStwLKSNbo9KfBJZZzaRnHUoPhvpad2Gvo2MXY
h9dsDsCsCKQyP1Ld9ohPPGUU47t4WHFnQSWMHLThbjuw8HVL+TpYk29Do+u3UgiWb/FcDzVVZcXc
L8OIjs/rb9K9sYbI8cJf5Z+9SGi7HLxaiGeJNl9W0SXtw+yBUD/PV0hWN0jnWH2bqRaklnfhf/RE
l2J+xBj0RoLd8c7plzpjRtgG0yusxAE61thu/IY4J9Kn5FQrvpC8PEVP12nZaawZU/C0FW+jwhiw
rPtxnGkom1kNU9bpzvUbI0QEe5SQiej/VaCAKzmYFzYqdHTz/zbx6yQER80PPGYRnqwYUnJoLYOe
cXsLRPAI2U7F/Z7cGwUWwzGhrG2SfAo/8ptkiFUg8dAW5vma/TC5+uzRG6h7fkTv2bhi/EsYtXwN
riiCwqm7Y+TWwa0IsU2Zk92XlB1h3eroYiSCAQLZrIvTdE60GUtoXYGJmc+q42SAMNDylbPjksHi
HLRUq8rOjTEJgLXeGcXQo97PgTw16+Btw4GCvfFbTtgMWlxxsIbJ2tmPwe9wgGOeSjwp45GxB4IS
8qCNQMomllj1jmPee48ahcJ3RIaL2wTBSgggCmxTn5HHxio+KXF6rRxz56mh6MJpRVDIHDvDZQh2
qs/YenJH4kkGzTRQwT3+z8InSwjpu5OzF38PLJupvbButW1WV5CNASX8OgbCqgw9VpukKx4TwvUe
I9sN4Ms1VP897mEYdXyDUoQaaVhmiCTemOTyQjBDs2i/2FcI/s0jfjcnzbvdCWpaxAxRTPgU/knq
XJHEunl+apjckeD2zL3CcoUIKT9Hqui5/+wG8iEG36tfi5eV3tJrp5KvtxC8QC7LL+zLH2JYPdGB
dsbxfh35Y522pIgSMEfJUhrBy2hxeA8dlzjnHajhCLSxMln/xSFuzs0hd1c+OTQThqA/2UFopvEm
VvQ1jB7JxnWRJBNqFhVvEIjLnKWHE0CBFEthMf4WvPdEmTcqYHxZYnY7irjRynPQQjQK6/BD3NBt
AzKsfSYUkAGbou8GNMIVxP4BTnfy1VibgFdVBTkMzSd9VJpgziERfr//3EhJZzZ6ZNVoyDl1Ry2h
uDtFCSCDjZA8O4DYboxfvfW9MFYJk+CBbLprJQqCHqPGS4ugkH0Olho4yNd7MwUhqqGGSIQfPQPl
iO5oKY7+WbBSSNLdkZEMv/osJalb3/eqUzoqPhjIg9+BJ8YtTTggY6rUSdzS326F44spYsP0tOaH
TENWN6/heZTrfTGzEwWDQJ32FKbwJDYXJcrVFer0XHKvcFBuXjh4xlt6DL7/UuSOUJWYe2ymLVpX
xdoGdhN3InG2OuXT7Jy8nQozTfmvAumHd3W0FpNa8ByYnHwC8skuxKyXcLhhGv1qXbcemYHYn/mj
5JzQPOtaypxP1kSmS3MzECZYpr31J7hGsIow9ouRBY69/vKIalfp3xSmVBaqNveeX8vrZB8gEBxU
v9estJeWVTZPqd9PUkVKEKuOF6LkpFRYySimh5Usyr/o6ridaA9gvyu/f27+CKkF52NEfXTTHNuc
MrLW6/zkF3TQ3akq71kM3fmCVWLxAg/OhbdJ0Cz92aHVvNCaP2/NEbzFFEJ9fqnsLbxP8/WRf6U0
1eLTRJ+ZVHKKY8JbTtddfAv6ahH9mHk7EYuZhRv8ipKyRNrPPYOu4CY72Ksct/kJwQvHExEmPWBC
W7u0sYsRdLJ+camsq+zz9s6T4/gMiQmk5Ekj+5V2QyiOaQK+ACljOE7ZnKykn363Y6XgABnn2Y7X
9aUt7bcBG2A4q1TtyK/dHRIHKPkYWrx6Tqc0vbSo2I37Qs7augYoggXpBer40OBSUs4Vl2O4DmV5
8wBBn6bLqoCeXRQX/3H90x+yMNJUEDVfLSPuZcG+iOtoZaoDgVJB9tL9HqytEErakDM3zNzxJ0TY
B/WYgdZjd7YVx5KqNLqqrmsOyl9Z36Nb+CFV+Jw4/iln4RyVCplO5ycjCV9wAbr2lVNA76siZGx9
4eL6QG1yq5gl00QdOhvgNeOLEExhbHFQAU6X/1R4pqHcm4ofhFvqunlU1EnjJj39gAmnfIvGtVxU
MmFel8I+HdPIhrm5yhwbOnkT/xe7vH2GVzTJNS0DeEoJArRSfZuFYbNj4T/WDUY4DWP02KF3pPLV
PVAYhC3fulwT/4mgIf551kT1/Hls82hbVfvWEp0XLJRk/Np0Ue66q3EznC4I4KPntqE+ZVHLGgA0
onLO4g6ku88oDA49WK8xHn3xlW6GCR7//cjWRu5wTeuyhuES7v2Vy9LgmJVeqED0RqaPIR5Lxgr8
dYZ3LyeoXHzj2CSOhc7gyVaVXXyDnPEVElV6nZvyjHQo0Y5rR92YlS8C2ZwBGyWGDzI5NV0/WYaW
ApIGd+D6vu57cUuhPC+U9GQxrwAFVcb86DcPI/nSb3QnFWyFfPi3AIEj1krkPkmUeMvfo8Ggbri3
yev4CfMqdyZxTTftq835wWbsp90D
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
