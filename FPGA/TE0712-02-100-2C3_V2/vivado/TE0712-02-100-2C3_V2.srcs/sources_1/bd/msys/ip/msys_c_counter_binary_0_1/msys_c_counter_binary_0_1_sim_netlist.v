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
FycdP5GPEVMi8zp7OEd3SIThWi6I7AWBfJN25aQhIFnwM6UzMjkOYJBP30lVXSqwB/JwsCMST9P1
Y39xA3JkRwykXEn8KVKd+UYnNPjq8NdSB5zAQbCCH3odayYmBerR/jIG78wxee6p/XEXLAHlJO1j
5V8JbDzhdcmXEM3xY3L6SljHCZFPzT0RoD48R7yChuc8z6wybV6dBHiX2tSYdV/29BqQLEgIErb6
ZJkGtgQZEhVx9zJYt+KuDW2AKxxh1vJCUKL0fLYNx0IsGtwfduvv8MudjS157cSoO/OaBMf+GOIo
KGa8mIEvhuNhDONI3bvo9En+qFWMWsU/umGxj0kLuxcIr3uQ0xWvPRae4Uu0QlS1GmFzO6AfR3E7
AA+LvLfK/j7nfzOpmHKaay7pktXMcXNuIyeTTXIphaz8e3V4ZVLGUtelr0F7a+v668WwBC60mY6l
GxjdsF8at0qNX+VsalCEUjcq94lPdDe1xv+BOKI2BljnWJcYLOWhfpsvyoY5ghhtnRPDF9TH4QqW
+C2bHaOCJrrxE0vryxosMLRewis1NU4Ug+T6wpdzBAqQAALb89L2FoHUNu+OxaGdHll9xxh0Q8Uc
LZKRHxeBpRoBfIhWErdj3KJA7YbbCUWj+T+hgcb5bKVTIm5Z7Wpb9cLu6BRz4a7hBTDISAA2PEj5
CZajuIXsq4yDn9ayRrccnSgycKvbPCkEgIRLaWEKSpKc7isGwIRw6nzeN00jrSgbBzhXbutY6RUc
WcX+O16wb8JNdsSapy186fCAuxNG39VTg3tyTdfhS2rtTHgXXZjR7notMvdwEjLMQCHHJMcgKUcu
d3qX17VLqbN3OQRQaEuqmyFVEjs1rBJfHzXUZvexsKD0A6b0inebNTs4PShLduC1z/sKX7MnA4jg
v2oRPD1vcFcNO+x+JCes6CMW20Vo/bOJIc0z2qgF6O5lh0lWXOmtRaMn25faeFXKPBL3hkVj9Udk
mV8ULWsCe0TdVPdM7E5Jep2Sfrio74XM+jUF8BaIV8hAQogGWZF/DSkto/sr9ImEHTmZbg0xpTLw
t++gYLDA8in/FMIqQ4Er2Yk2we4ih/ZusFFrE8pceN4b55khnY8OT+w4d2mRcp+kC9HsiCtPaP2f
rVJig2m3718K9xYkcqH+F7R+cMo4xaIiHdKauokSMQ3N4eUxCPqU+jefq8qh7TzVTT3YCmrg6IHn
+Y0+Il4+vuJpqK4+b2W3WXi11YPSjep7NKP7rOwuyoteZ9wk4QoN2uo36W0vw4yrIhpOXTRfUCB5
jqTwu9rc//AwLUcW44JP2yMk6XN+c9XZgAAdszZtzyRZyEIOrGeGN/T6Xby41IZU648fDZUjCUlz
lZ6GVP9Mj0/F8VfamsbK3IUZO6sSLRTqwGshu1kyhxonEZW+Han7iw0mfcONz379U2STkmFqdYyg
qSknq8qJh6C6qqYtnDZwG3CtTb136xD09Qd7pbMHFivDA8KioA0maQuZlFnQuc57qJmR3yY05ZBq
SKWCHJ4vY48jrroWgEKTsEzvJMk6U2sNixdAcFbJEcFEoikqNHTdIuijzV8IvFw+1H0FnxmvK29L
+BrluwdoFMXKPq86NuBSIcPsr6A5bIjZNoMjt+itRfC1Y2P64S8LF5qBUhkauID+xWVpGS3yp4qc
rBmZqn7golMvoKJNB7fOSN7WxjOKRCNWAgeHRCQnEa3St6k8/hf9he36SBwXQxR7pAPsomhWHcPg
JB1Xalc7k4Umd5jIoRReSCKzUnbRSbpkwf7omFmPz5an7HAj/Ux9T5T898xP4mqrvCKSIkKyHbIj
FbD2jzBWuRZATdw8oPGsTe6ODEFC9smcq2VI4u4cjZ/d0RYM50zadle0CLDs/8Y0onTHgO1ONYg/
ZoAPt7TbAvFpfpwQ5VyXWKlLukgATB9Vn3NlhxVN3P5G55ibLrjYAhEhmoYgHFvlK6xTuwjSnlE1
9P0Wm+9AjoD4n9yroXWXzFlbbUlq2Ot+rJ4kQYdbIlryNkihJ3LiYRNE6lPtZLV0qS+P1CftZYfc
9CrjiSTrfeZGi6/ijAdQWvQR+B3y0Kziy0L1At1XaSZWCP21yhi1t2Qx5FX//NHMYs310ostgK2h
hS+tmBvwpxUqaBIC9/2yy+1/a/h0KF73/I5KBzegNfzecN8w475qycnQxofFcWNxr/jFTWs+TNcD
AmkxHumBv1k6AVIQTXWf0m5gdCRx/6eLYdhz7ozKBe3TaHUhI3+nNEfcN5ahRPfkhqeTIQNUazXs
a5RBOf77YMYwpqa1AYhbWBmTt1stsYnJR1adBlFlzNMswAFVF3tHIwGF/iEc8NB3xW/CsJzxF13v
3bnaw1VugXJ1LCfuqyK/kaUcxZmkNWC9AO1OQp2XvxKjizuffCcq/ZwvQpRE5i7gI85rE5UfP7rc
nEn5TvNuiRMhQi0K1/8VNM5wK5s+L969YxtHOK0SD1pkybF54s7ROWXlEdHXmKcchaIQph5mU2Ct
XXH6XKdzsMXtm++xo6hRJFg1dBuKsKD6KTZ+tuKZOx5lscfXDHlXNkk7sW2z2QYdlcQw2Fi890R4
RMvuEQiV+mU+NrfqU0M73akG4O68qKzD618NaakqYG/6T5hOSFv+M6dIgORwFaNhSP+6xtLfNSrA
XJUF11HdROUiL+eWwbRm5QopOPihC4LUMfM6ejNz4QhVTgXRP07C+B/HkOGvGZWxDYViBAcRbYaQ
9hA+DEA6dKpYAWMBcvGRoon2p+0pMwXW1sYiYOseM3BTXMx6sxKnJM5UJ3S5jOXL7+gzmflZCXNL
Y2tJytBPkFqAmTKATETmqJX8/EEc2wObfnWXjl4N8yA6BSjBr4O72TOU8iNDWYEroebGLYwv07/w
VKAho76rjTU9dwdU8inKBl7yjfdWGpmFHcF4Hg5JOk/qQWPPrG+zlniTEtVyAYifSvSeDDa5ezQg
v1vPwkmYVoF+ZbqYntrTkGbtekWn8+6lbDArt6J6nQ6/aoze7qPCcHqW17Hg0G80LxbbDsMcp7BQ
uCICK6k396hqNFnf/ONe8/ohOn8RSMkc+SAzactS6B0ghIbZy+l/s83TPgq6G501YHaks7xj0Uja
ysLv75GgpHRZtBamnHhMaRA6IQHHrKpEOlE53pIrhiAQX5IjQfXEchhV2RYhCf8SJINrcYIUX/Bf
zc6DPN1a57UAtdSW6Qyk8C/Jn2AaWKr4U2VxGN9uLOPlTIII29J/UyY1z/glinAKZUofw44I0lMK
eX08SS6SaaddV1pY8wMtj50Ji2AouNgfMvtsnAWnKZvV4R5A8hJl0qV7Pct6zWafnYJoUl57CU+o
PmpnXEErqIKtcWS+/CPF3buV7JDRRGSGf+zN1F5CY5s308ZOuT6/ZeUzlUFDjSr1Upl3A7T5ocQU
l0OO717FpFSvz+DasRGexbz1c51tAGfCY0p22zyRJ6K3iWC5fl/QKvOOkeQQKxdwU2eKgaNbmQxY
EefAb3Oe60HUvYbif22US/vplQaZ5/eH+FPxw4hWfg3/Q2UGmyMIG60YvLs96KilT2YmVShwZJGs
++hAhLatnarKQ4kVMw/hzxiLBI1Tm2JdOATggi4nMqgbZKoRZXrqSpCkOsdz0eUovTtDsKIzlWm0
+BB6UnXyau62d9gqSzWEq+cE7RsFcxUfQ9f1DXL7OMTsAdz2phqZ2MLPpQ2nyVKvgCUtPOmEF6T4
K8zomzjbE9YNkPsHUP03ZRtZ8o3omqexvVvtxa7rlzvQhM0kI5KTQ1k22gmmokYrd2qKxFRJo1Hl
w7lapTy7d5ROWuFm5enYEQLx6SlHoBJdd20X9Dpb/35AZFgNPvgjUpzX5vhfJzUBW6uf8smuC4ck
OWDPsurOs1MyeWdMKmD5dE2qU4VRsjCXJVGVvup0kwxwIsCClUI/fVo+H7W9D3f1ay9R0ZEPeQDY
F/xWYdWA1irMo/0d9v8KkT6yGg3f8aE8eXcbQuI82hdDp1YalbLsVZgXo+9+Ww98BADFC6teZtuy
MgoZ7ZtBb6TwU08HDgMEVbTHBmlie0cmnaLAmzUtOPWSAC9yJcyOW0SsKhMC0/4ajk5Z47s0KN91
XMKFhDG+QnNYAJbbn/2f6fsYJNniXfMjbVRZJUl3C5o+GGLejTbOSp9xEW+kDSiXBQLtumIpImn8
hDYIPqmkCf2auLnsRdQHw+6l9qKCQ9/efDavYEQspTtS7ryU1PIrRnzmD0gbbv/DSPsdyz7kecCm
i6tbN/FEStaB3H6z7cO6GMOPE0X2klzJmm3hniumWF0XAVKWXkGPnfyPvX9xofz8MRBfWlRn7BLy
mPmwVWjUyuf2IqrWqkxbVZGYfS0HSWcWteeZp9zNbFKSOgtx9BWYWAOtsiEXjDMinyai3w2eRSrx
Kee8GW6xPi7g6wGBZu63vWsNW1v/syP07SY3L+Pajd2SnnZexMLwWenVpXVXVZ45qwPKS2SYFcAt
Wuy6iFseXEpS/tFGkEBcDIfj+vXH7sS4/cXB78X2zfCAVOUblkbKKRMrHw7eNmpddWC24tv4YKN2
SWbVlh9HYK5zSKkcWjpHcw5XA9ZB6QbLafLXrAEyAazsrSnFCShn+6oQYihCA8RAYY1bPkpvxDCb
MNPx4LXatLkVnY4B4Klfw3AVIAnz3RWY4OmM1ibcVGHaczBGmGbvBzuXrZRQZKWFJ5ZY6ERS1AIX
VaT5st+VvZ+qFEbC4o8pPTXADub4YLLmeT4ZlmxrWJSEv2Xr8+BN828y0+CFfgv6YT7fCvpCxu49
H2QnXjqSND7QrXTzM/x9wmWLRwFJq1hNcyKZPAJxseRUoOKJ9xBVTHd+WOqKBMMPVC5w3jxWGg6w
iXAtPIAU6KOJOhsnhYpAh8dQ5TQh8HW4lPi9mRAZwGLsMR9pYWTj7CKZwojewyCVvu99/LPY5FUy
b8a1d4AVBjDdd5ewXD6J+Lr4h0Szoihdfdv38kmUHvVyAJaTWB+Bh+wEzI4zAD1OqAt1O+LENC3d
YIJtluj8UnhHw4p3aFgspU5T4GBdbgJ1fWMFuf5PPyWj/5ep7pHU/wZa2G1v1dwr3nu8QGQiQsTs
6xEz9vqIj12rWGMHud8zJbqUmS9rD5XG2YBxzj8LztlSFGu0SsaS+ZCYvhBClGDowNycUZezFYpJ
2vcrjL8FwZ0T+TNR9ZiA4tVAc1/8b2jyj4IvtKD5UMJMAPF3hu8kFJi97Ug2w96K96RQVjUWXXqH
gdVfp7a0rFRgelsy/kU5Ufba8jOXW/emBlv4oye1KyVAlCDvmz14aomkb/AbXYQm8uWGIU0tldiQ
mzoSEsQwuAaHYxl8aLtpREue4p2WYm82XAGM7Bvm6uKb8kTPUB8TgdCNZ9sBbXl6ckhvgKBVYQFt
VIfocWDHd6PuwWkcMrfjf43b3XYGx1Wkv1bDm6Nzgx2WhaJvbz6hoy3DaL7zWNbcS9KmhYQxlnLP
3PS1X2Ywn9vRn8UFBcUPUfqyd47C5sOgjO/ds/WB0+bCQI17Q0k5KZDZZIYHHhDgPrX/FUu4q/yy
UeGDbAjVmpxnBq6MhqVyXrvfYPMYL+yLSrhjRcQ2ccQ8HFdEUpR5blw+zJ3KlDJgSAm/8Ntau4c5
9qSILJpvYmFUg8CinEj5ZlYPuYdu5vn9t6Hc0k5QWZx/eiZK5rW5eNdH8mj+uJzWNhnv9ZZLx9lo
wN//NOGnHLFsjiGXqcP2OBgv7SPKBGI/c1jJpIn1bCB/1jCJAcv9RGUgKKan4BYgw0iyB1vXs7XS
rkqxJUkRfVg0XJI7Iko1zsQcGhin3ZeehDhMrkX9HrrRFBfaQbrrEmt3oBg6me4nW23/kQIXAhGM
Y6ck1Z/Fa7ah582BRTbZ5h2QBSU4oNvbsUgDZ5EFWzy7xJ8cvkhADNfCxu7he5pA7zujTzqIX7Tm
YGUHZJDdiaCujdZSGUzknHB3UHnpP13gf03AAeC42nayX214NJr3pyHNqQVD4+dYr98VtH79eTaJ
AS5utJA4rP246CIP3AiygFJQRurRrkcD6AZAPHu6ZBZFRRCU9sumjcB2vDkuSuhMfFjPsh2W2WaT
xr0/5Um92hEayn2UJKbsWyQIOLaosmBQKuZz/hZpHARgc9W0C89bEWp4muQnTuAmL2DDeGWNDvS5
lWKZ0r7VxujgS6yI6UnIAzjJujU8LH2IH+rBQDVdvLLcblr1EMoKdtxgp8xcef9V/Rx/E4Hs78Dw
P8MJ1V+hwRRsEqR1bRYpixJmZUGdWBp/ieYGEZAjbGKRiBk8Z/AjXZycJJj3Bj4JgnhsNaJuc7DH
u8Df2uwsSLUVhaxh6YkjMYR+/Amx53EvE4yxFu5RhX1suV1f91/fUbALAOgeNZkaeTD2NxFRDsK0
V2/JygtVtWANDZgC8WBL69zoN/WzDqSpsp85n1dvsc7j8GP2R7sbUMseuNyz+QWk9Yv0LhJt7fYT
AWdMTtt1nIfAGSBzF6P5iRDsA5C745n6c2/idZMEPvbUoLRUWYlz4IiVaC9Eal7vRrPEQ+rPW0hg
ksp1U7SDw8Vw69CSmk3IboIFZH//fxoAjClmJ0ObPpXiboXrb0w5H8Fgo0kzExsRNhSfDgGcHZ7Q
onUSusdPBuUtYh/V+aNjsN5hGI5xQ81zk1mbT/AlSwVgjsUgm7MU0+JRhNMQNsjdTqMQhggIZov/
eHm2WUn7EosgztjHNHEL7tf4udt52PEH6ItLsz/O9OmIrw3VywUNXUm7Q2chxfteD9J2sn4RsU/T
dJGHXoP+tUxzVFzmc7+3/JrPOvAQkK8UAKPIoQ4k4KuwD/OYDOuNZI8JI0Zcjx8UN4eAEL7CxjFm
sTvlyM+fPRM7mYIOSBza5yJT7Wl4SQ2ZoiczYIo/W4u8V8d+06298BS9WkOryqzcFQ2/+F4xs3k8
TO0h9OwIBsvr7jhBGUhCXbNDV45++QlAedvqkayKD2dQ9NONdvUW8yFzswa+3Y6I2pRXTZRBtnQF
5DHoxF3XuO3cIF1Fh+UsOYESj7qRR3epfZ+EK4HOy0yaC0PEdWjwmzL4XzYUiPdD7qK9aAttXM3V
XXvQjPg32ePVFrRgTdjjamE284bsuxlQOsth8aziMuNgg0xH+XapEtlOLc2lquNArWArgNxcgajY
Chbk3qvK5OdBMKox3oFRRon15RgfPHpEGR+MMRKPlbAZyP8evPekBZLnddDQdrZnu0xZ7qy6rPRi
2Vq5mwnEn4c/rDD4ONHr3IeceYVeEhivbaK9oNTtJvBhrHjOMqCXf+PccH6J9I338cH/Yy0zyi7H
YS+7I0ILyYy42G2PH2tJzEe7+oVRzonNNJ0YQ1KtopQmhk1fj8fgc4YVsS7bqNR46VwQ9R420Yu2
Y3dDQZ1mWKRi0AjXLHdt3gL6+X7yZDJTRVpeCgWXqgWBDHkAsOMooMzDygRhEhZohw2JtRfSHzXd
t5gjh+XuBHaVkh991+/6GKlWK1p/TyjU45jv6VRePdnBVZ+gjW4smVZX2ih/PlMS/cm3yp24zdPn
A1jd0NhJsRZYhQBqSpv56tQFiYS8vRSa+EbWOfLSqmxK5SnMlvd+4MfJ/EymTHPjF/6+Rj3lvav7
15ZvtSpvowMFxtYhAvbUJg8IzsWusWzsxrAt3kEkxxGrykgdOYtBMH5UmBHL1AXwPO6/xOgDmhNX
7rbDxM+cLHkt0gFTo5DnDE3EergmcYceo9hgP3xF8nwRULzzlpzXyqYFGIHITOSRU0qfmdMz3RB2
Mf7qRUo0v8WPPZ+H1D5Lc6ng+bf+VLTb9PzKywJpHF32pOnl/CRlOwwCgesXLYMszyh5O2zdpeow
qBk16xWrr4d3fYPJ5bfOboPWTKQ2iffuqTfulBa/uPbjCSQGXa1bPTn88mxmEotInwmqHzD588t7
5xoLsqL+O5zgmpbdapcdmX4fgELuyI32nOKJ3zU4QGq1nKEX5KwJ/AL75vVfVCUNBDnN7o85YEOA
LhePw020ckuFtNEeqznYI30DMmup4F4JmtB/IR8BasF444fORQpeJznTMnJB8JHnRMTchIJvwVb/
5CdOjWBTymNmZcKnZj1QbaAxnTyD6T1VTO4qvC0TSnRMaObGNt/NczfDTVRIZ0R+Sg6+QKXztV03
pfo7CwwM0YH0NHLxJ5xOC8w4e/4JaqbidJWjwBrh8vt19NwvBwAtS1vqyWcd7qGl8sUB7RXB21Y9
YQoqr45OqzQnwkBO4MkcAZtFl9pLwrK1RfElpsJVTSibqfhNvUTE6sV12ygkzOx0DPCouFhFNEIB
XLmFBGKmUzTemIkSgVrFxNyQL9D1VORSzf4CcGxJWC+ZPbnjr9XsYQojuy3zy7KbWMblKRcV91Kr
EOXBUxJD5085pZTZsNtLP/eb2JbeObl4QNbg3iqMVW1jxMZiogjNRPnQPhwE80e3X82jVBROnxM7
mcS6InVMFz3/nBYrL/zzZkFCujmN1gWHqOIxtwBRYCTCVj/2XtlyBSgIGqYSImxAFnqQqnTd6xiX
vHhGpZqT1ZpUOUZdfTAPBsGnLIC7aq75RUt/Blhzo+U/I4OQx08Q3AwTjJmlgQUdlTShRIk0fONZ
eExa2T6hxi/ujg9jPvS7W6iOB+YlyWCfhmfUaFoB9zuObm8+AeULM5iBf3IqWPUMb8SMNgLzp2i9
5UjKfFIGUnVYF9S3IrErwywKrGG5YZXNvujZA6r2cW8Bze1S2Vs6QwBE+/o3v2H1aj6RxRmszKdn
mGC7ZLpozh83fzI5EYm/GqHAOdNaWDLkKO2SWTfFkgVenmCCU4kYkUkSQ/ciWr9YVaOghWEhQkgI
HiNy/MVNhM1vla1UKakLZpck6n4rDx/9TVVEvCSWI/AXCV8XtCVRDuqsM8otuEiE2wwkb6Xx+ukx
lTL7CQSC5F9XSwPVci565md+eAPHgXecPumiWBeSA36wOIe9P6xpK6Dk4TxjseBn0P83gBDekXsM
o9flnZpOGZq7QBDoEuRFCDeUXb5E6Z1qRG5SLi/vJcIaH+Ufm7Hv+yJYgXGsx+1yv779FgsAZ0sj
OhTNxzzmZq8yuE+0+tzDymdut4EuyEuTrFHUCFEpJfpQ/lL3IqmLo9ET7R6F7f0io8fL85lML1eD
FTHV2x6xBTUma5K33XBY07tbEOt7lpNnGXY1EkVUNJvOWaXkZ6apVVSgX8RkUyr8UdLEHTGLREk/
Nv5HSCwxFSdj5lWacq6jJ7Q7ZyahUtOHsQGbLNn9wAyEayoCVNoyLNqfgI+z6qaj7xBuCYEnOqyu
/pFoE5b9eIUHdBpdm17qkyHv72AKUx2axkgD8498Q8HRmwXyj5TA6TDTgxLoKw4CYUrP7Ei9lQK/
2CvsdasSJ0zU96NvVQCm9ZqA7Hc0Gb0nLpMRsFN7BnSPiKgQb/rhhNb0IWZ44zEpb/69f55+sm7t
KGTTcZel/ZXgx432SobDA+9mC4buKYhEE/fFOL18bnNEkGfhjYtdQoz/CPzi63lMGHs7CwUr7ltx
zY8JqvBI2W+ej3Ok5gYB90eltuxNonvZjvSPX4cdf1VKEKzXAqyu/8p87M4up/pmBMtLi/INi+0v
wKtdg3Kg51ugz/wlyDWTHw5ohJkQDl/mxkVAI9Jqr8qjVcbAsplH54mavqWnFijfhdIrCYbT7a1C
Zf1jByRSeetINsjp0VXQIS3OQdFwcd6O1/Ab02JQ7jnuurIeKGykbw4kSO8zwI0c8afsdmerQE9c
IGQVTR006WBfEAMNfowycW60RbWAKEQad97GO+ORjGfSdomKi6S/4AArLYLmXuBNnQ6wdeB/r+NC
akKfFls+EWOqv/94bYyegRQ/Uk9C4frGt8j83Ox73mswOubQjpENvSQYq8PzgKFCUCosq7cUELAk
0bBu+VpaoWOIkl6E6S3jJvFrZ+puYFbZuJ8RsYDupkwrPCYnYmMEKI83ZhU4p4diuy12vp3LdbB8
AgEElmd7vujA+k+YWG/nWzIgSkDTNJd03ZjkcksJOZNdl8XfKfgBq3hSKRS0JVNEzaH7axu0hWcU
GOa+BPXBhEnK2pi8ZcZteZLVObTUkI11fwEurPIZgWJanMGKS26aSiEaVdGLpBlS4qy6FdwStP5z
hAhVY7Z02MU0u/ha7sxewiV3vJLKoodpzl6tX+u8PXEkN1XenKKzJDKaSvF5yYOsQ2NzPfz5EUMv
NmY0LZhJfCW4u025YyRznpjhtb1RVackwVVnYDXi59lry5GDe4WAV7q9v7x2zBcq3MVN5Gu31YdQ
CMTsCIy9lYisVd49n2GuOU2Rw9g6yoXo6Mibq2vq5zk9l+aeZc6NZ18FTr+9TlFh40GB67o53j2/
5y+EQpRq0xhXFsfJT6QHsUjZ2TxrcfTs1zdwpAjgMt0jJoE335KR/SQGQ/RdlD0HyOErIH+wzdcl
d6jDaalkOAKjc8ZNwrTv1QnHjoEPM3JWS/OBOprC8d01glecp6J6jjfroiCzzFRN83IDS8p3Rl3z
5MhXpGJLIgVSk4FZ6l9WD0nX62gf0dQ2WyYCT31qQCUT7Oz0yYPcShbGLTael2d/lAeMf1n2sL6A
/6OwmnvE2r3p+qVXRWC/MhtM9wQpc21dU3sGcX2omtIkMHbnMCDdfVV2l87yz10hV6cGI3hL+NEG
Av/OHq+vIROl2YwZH5E3b7s+/1D03bx1saJNBkZTfP3Naa7ER04y7lICPq/LMUxWuwUSOeiV0aS3
bEfwrTNEN8mqxRm2ihD3KsQjnVdIi7Hd6YhFqOSq9zNS52fhzGHzgwc4QtZ1VySVq7cInCTegCGP
TIj7oU3B3KvCE5NpJ0U1xB1CLXzjw46zcqX/0uLhrbE5hct9Z+eVdDZTKsW5zOmRcONzignq6Gt7
EKVo9GTb40WpnUViUajnWeElmoVivRoJCRCKPkICchqa+HOtgZzyvbVFs04yFEAHG8Om8c4bintm
qzUOq47IwAEIULel2ofbLsGH1TeBdYfVQWzcNvS3NVPHxLV9xZeILIeEpUoPA6k2UDZ5PgGwVDZ/
OpSn2A/WW9vtzuOg1XpQRscCq9BXEqxlHhONNE0Qd2PMBu/5GoHriRy/2vv2WXfdfnZUfBiYvS0S
5ARjVsw9Z4uLfjhiMjthtcPPQiwanEQb8bqmTnhsExGXRhoplxX9UiCjqlHz/rV4FKxD/hyTpRrn
I47wWy6Ty6vuqpCYzCVN9ynuP3KnWsDoGrCGD7qWGlNYELcvyvUI68wDmnMaPj2J3gOb2lWTkwJZ
fzkZgCZ5DqDwbuOlushEF5IBs0C8R8Q96kmKP7DIcLzRe4zrGMxkr1GKjQPwv7a9n1+umJb0YSR0
DUQO+W2eGUv3CsN/hpOUnGZJgCBI6fsDFf2ZC2PtmjZ7LX0ywQqkIM01EmBwUDoPmtb72HGAeK38
x0+kO5eyzsL2nXQ2bI+mLyPamPiUqkk5JiiwS7EWrWltM1/U3J0TR8P3ABkil6t55IMyGno87tXl
sQW/1kejjg8/8DZDmRqFmD5zoHyOq2UyJrEu4A9DWYesCE17g680EjHCLHdyCrsYrTOHZ8zyxlpI
JVIccKr5DYVOUDucHl13YAK4o7bnLJSdoZTSvEwZDROBJG5D0jnb6OoikA29Boc1nf3jawFwOZJz
unL0V68kjR7pzEjyT90AorxI7Q2nT7Ji4ZHJzFFFGZ/1M3UmvPRdRylJCfKLqDNz0a0Meeg+ngv1
XVUD2KMIChzxShJbGVo5ye/FfF09Gd/KSxlDz7B8A2OxlhBNuiV796VF4hYlJcpdryAqub/p66PT
MPXhWbXTMb2M1KlfRL3mZx1Ybf1Bb7EJvUrvRjSJLnVec4lJrmQ1asK8weDcOiJKkf34ObRSayhH
eT4qeMVTEtdl+JDXUJPnKNKIwgpQRdB/OABJBqfjdHaRyhBrixgzXyYKXHSxgEVNUB8Zzu58J2N0
kgOJlj9lgRzKrN3tjTF1mSof/LvODWO72MHZCDVh9xAYzYTaFkbtFg1AhqrZOaCJX+mWo4gvyNlc
TNNfaWiV3+xmKjbSHCk8XufWYbgt8WgV4s9a7xWdlkqhRXHHiO9vw4/3iorQ350I81juUvwZfeng
xbIVrJG9YnWVpP4Pd0ZTXGczN+B0ELQD1+K7/w1FqdSPRD1k1ZcwjKv/8IVVpO16yaEn9W6Picti
3oi43IewFnX7dlbBsGIRuYN1k+Ssq7GW+Zo27MiN/jbuhhaTSpzVClLEQpyM8zz5ESum4+eREyZI
zSyA7iDldKlieWeNl84Bk80Y8Mv5mYf5yqZgdi6KxaJGpJp3Udmm6iofbkIIoGAjaMLcZV8ZuMBY
XrVn45NP4uplKdpVxxNOlRuIXjiBK6Lw6BNkY2hwVwgfDTjQoNpuPhgMd2sql2/zqIczymFi1/TS
ypPBHxJ5WIzklggsGldODmZFcpIZ2IjRmNMqeIggLegcIGR3TQm8qacLcE7d7gjbCED1sQC6q3dp
e3BlKMCbvQsapRABmltv+6wBx7QbRpn1BJAxE80Af+zq5lmXus5NYadBOuMJVAovX0pTZnZ3uSb7
/9TusMhkG0fTvlGAkJgBUmslwjqdqrLAIVwNoAUMqxSEipzRqwdW+aHOQfBOfrOUZ7yBISke22mf
Nc3jOK/peSagw4iADgNETk++/AL75hV7dEgmtOMRQ5otP6MvKCnmrfWGE+sWbawFYgV6vbDyUWiF
HXksHii3+PikpndbGydXYQdktHZiCTKtvbGriYSF3pBGg3zbXI2NoYSvv79No2Wx4iq8Ox7sR6T8
yV5JbZ5gQ4p180XYyH6opUfxEaiYuID6Rx7iu+SLj5PpQ/kfcH8rPfBquUL5/mbENh1dqWIFhjcM
r09wpKxVY/z9LrJ5EGLqdcg5EzcClLXItlaD4wx2IeEfaVH1N5g2aMTDvwF+/WN99LG3Glu93Wlv
irmpTSZLXkGmldrRMI+E5nLkzTxM76K4J7LHGqH2+o9OjlKJ7h12NMGZK9IILpUNr66GHSylBNNv
TLj/lTNumW1uPwSKXXHkZ9PaRzpIkhGTrGznLF+IxcKemoGqqk57gjFOVEvW4XvHuJO1rOQ5MDFL
4fnIljLHkZn6WBP5uKiVuubz+f2+eLklPFxiCSXEBuOfvWHQDechy8lK5qtPUecpKafXU9V9QfHK
LnPolbTfMX2VxmrORWogJ5obBFE2oKSa6KizFSUDBOsYwmY8Ba5yMsUHFgtCv0qGZ9eUUNobWl6W
05br74NFhvvSBEXVe6C1YUldDRm7PEeieYmaZ3XWOC/LrRXwoTHmDgFu3H1jR7fHqqSOQ9//kaRm
Hj0F93pKt7T36t7FOao7uGyPUzwwr3mNMLPIdeMEqMOwcisX5nNvordemgHFDxpms0nvn2EL6lRh
clWd3f4NYJTAkohxihbK3gNowns8CP4AdvgJ9+7ez3JsIL07esMUfX5pLsnJYAyGU7AMG0bIb5Zp
jDWsjqv6hlw0beAChphWJKnySThDtefVacZRg9hTdzISMg2BTO0PKQPHw6XB3TQRUckCuQkeoyD6
qKoFeIKKscWTPcvjmFWnBASIzi/c7WqQqiBBYrMqa8tHPStjOvNOBOyA6Rzq/yfj9U2k8L1zHtnd
UNdTfTdrOYg+zskQCw0ZdabObUqXhaW3UDwfzcvvp1yu13tnyvpG8VVEQ9btYx8+y2PpB1Y23dWk
DPSXsUuzNbZ0DK05nKjJllFyRbunxRP340vE25sYxryS8GQSKZ03MgvSoAf3nlAW08Me2YXn2XYU
KQJIjcH4tc1q2iE0StzqcIgw9IBjwduTlx5b41lSJpCQah1Z0MpZU05Q37UmJDhTO7Jy2KnQEE0T
MRByQ7JAjCkCFGIyn8Z/ppQ89uVunorZCiI43hSAY6yT1WcEFDdfSfdHhhl3dOG5QBty7VRKhWk1
gW7cAhd5mbjPrw96Jo+lc48J6IX8QufPYnGlJntjeSCeRXZe0ClC4obJNZ8eDu8u9Og0v3Ta3FJ7
HwAkaQ/UZauF+hDugk6Eq8LdV70O2xtIVbtMvY96y5aj82cGXSe+eyq5TCxR1s/QWKkZHBepgvA1
O0eZ9aVAMl49oGD4hS6A35WWMuxK4L5ko3xodLMmmSYwhsI6w9h34hyvyLXNtvZHThHRPZJ4LtIy
BPX+g1c1h2PoUBFpOgACNJjjKLjE55BjJLL+TAC53jh0hdyE0MBbKcBYlAH1xi4YPLt6UMCtLzAU
7K7TpwdcRCpnLtuOB+BhHR0x6L2ortGFNogmDiwCsU/9y9EGupFbRulwDlmrNOHjiagW9OPu69GH
p+9nWxIPDI5/as2Is0aSDs8eVqpfAazCWfT+Xw12CeXIuqcdqgZXwO1wqOrq47W11EDl2b+JtIoj
WcVKpgtoUrk0gtsniHsfLze842ZnEnH0vT9fblgd3j/YIxnpRrn4C9Gcr4dyVAAXlKemmT89VxLi
2EHp+krLO4URALUbFUWjOXlyYv7YUKKwKdjVwcTh4/aVwuaLBetDyQxGN5D770G+H5fkMc5/sVDb
o5sskFTJIDXWdUgfD+swFpK6fumRlPJ80ju7/sfjcfQRQCp3Xi4WpEOsUpOr28+GnAejuIjpAKbt
iyNFR2E8XTAjz1N2v8Bse+uM2XJPVcBhuRxru9jtthT/+DuQCiz0cNSFEzHV/JfhtGiAtDHo1teq
XY+zvanNTljTjw9QBkwRUKBFZrfocY0eR7dr/nroOp8v4JwhpwZDylhxuNnGC+K5w5FxSHa07u6M
tSAv2u9rVXWlG53oWWgbczNB4fpRF4hAUmiNYwD9V8P3K3qZUhAjewwFsC/WnS0BJhPZMpgIAyRc
LW9DdGOeo6cVQK003bb47bIWlpeZ4N7wrhDJstDY8KEjN9kO0G7g9qIHf+L0zQ+VA1F5xEKqXel1
If8ZysuYscg1rybcpVTlGrplR87EfrKj+TIDSNMASk35h6xm5B64cvqKbY2+LxA37E+N6BY2pAn1
GChrwho2yLR/YxHi/NVGRHe/IqdFCLs7djFW1RSh9LBpMNe0SDJe8QDeLBxKd5bE5wr0/D1xa8+y
NspFm7aPBksRttJvYXJkEoFp5XYsnbhMjoK0gUH3LbE3EnDM4U2jfRuVi0usdggiQu2jbZ/ghcXY
zkOeSxZajyYuVVcDTrLB8v7l4tsNRnuX0Gvk+BUga09FRRyBhm91PbtJ2NFha7uArfPn/NDL8uSX
52bDzwVryXesfrsrFUFWmmmVFCkD2IfVnAK2ccfMrUBHxPPyHHqmiaPnv3/n/NDCdd8dkm10KnrV
eEpJsH+ATE52Bt+PXt3iAqwEz7i/K1Z/rRd15dee+c3R2jQTM30I1hMcff5lh/zpqqpvQgTvydPM
sK4E9BOug+K1QqSUyJZpE2rvv4vDPCni3DNJm4PVioavNF4yD4ZXG52JO6sQRwP7Kg9URPmQA3N1
Jd/YNqG7ku9k/Tet8tkvUy7opAYDUvAsFu3Uqw8GT8CSLeAUkj4nkOlKG1vbVLY2dAEyo/ItG/eC
/vcgbyt+HVBpqaU+XR1kYz5zmxDc6md4QwjvEplEJG5PE1e5A+sKzZHxwDdF/L+fy8wW1GGi1gSU
szppWEJxBUTJAYzDFT1p6nsqM5xCuIUKQwhoy6+vRQhqnhd42WSb9Op+sjGpCf1ZJ+3qGbjwt+g4
AgC50yv9+gOoHfXiK1YmCK0t18ApDSBrOSG3J1KnilhxKCsAPslKbdiwLoqj6+ldFnfpvL4ZQNUx
8MB8WaXG5rVVEglmzfRDYVvK2z0n2NuzAFqaot5vK04kmzWQs3ZUU99UY270HfnPv1PC5Pt5OGmj
iFJmGvf3dc+yDz0VaKGv/6IujwDdNHf8I8UHT4BM68laCki9DKd36AftWYzPdHW9wFlLHxvpugp6
SRJzQzVID8qZC++oRyYlaan2hKLEfU3hYrz4gEC7V5HVP0wQzolW9QFY4v3eoeOQd/3ssPJbyrqG
epf7uRY0ARlsg99AISc7Rq4iSthFXOhCGHFH7Ch/DWCVt8QJekB0OmvLWppXGvxikYXgHRFLZUbl
+fdc+fmfWAqkRHDrGLKGl5L7lOShNZOjnfXij5PNvFdeyXTAT/hrigizaY8PoJmHdXO8okaVSWZd
JZuQ2j/FiZg1NBmcLbWoEoPioXH8BJfIxNnY1aE5YmaCORbV/+fBDBmf0XjcteRsj+r+lG/44Opl
N5qR2th+5wqHu9k5eGvnVc+WNcw+J26jzI0g+cEdbuvm+onXdczG8C09A/1FK6PVceYnnLf+qioC
T47i8AkU84fmSzjX9lnLkJc83kvoK8DXIsVMuls3+LBGfOalwqOM8vLmMuIa+8JM8GnpkBsNoeG+
TFLr24yi5yRq/0zInhos2JxWJv3XTE27p+Tzhy7A6cX8Pp/lIKXpvlmwtzx5eRW2FPpsPromvx4B
U67LxVVxKIKQkb179xfLMyaUiKs8gSdLJhrH5YkEE2VPmB11ey5OuXmwpsLTh7Tyz226gD8UVbW+
sUVAIC/j2URKgDehcoxckjbM1oxKGcyqn7XEO+I5mE6Y+JC/hBsY9wHPN5Yw7rFWTl2XtHS28Yzk
nYnyNbl9UwGLrNjzzPbpywcWAlEjn17HENrqBe79vsWvDX/UClrJ5Wj0qai7EbvJMBZL2hrKzwum
cYeV7Rj6AxmnhZbMotSELTIh+sxN6fzD6Si4v9LYP+5OiMfu+3QmT/kLOEskJicxO+MYOhK8RsT0
RIp3NuDOGEewp6G/SVwRg30Q+3uh7pKk6udjdnfzMRKN+xcxLt3ScTqmmc84yR6XraAk4RKWdto0
n4bTAhLh1UtuHE9Z0/AsbOnzBznDZpKvUAcTr9OdC6uR/evhq1Cb0jTPwmOl2bnbQfnFRzD9LLRo
U/wUFMZ1cfuJap78+xEpI5e4AiuniLj2eOI8cwz4YSrC5pPp5MIjsEPriKZbbWa/ZwByoIQBeTn6
lFHuO9n4NqXxKfsJ/zM3cGlHB59x/uN+4Qkjb7XaGk9Agg4P43TUl5+bc9/r16qjJJV5Yfx0Lcbv
Y1pXHYCxHYuXlYoClZyo38mVleQU8bfa4lV+9CL4B813HGb4B6ROXiyuao/V9g85+Rj970+27KRd
T2ynPSCMgFlm7Ze+c5fuYFWBFzGPCkuDRSedfFfn/GHGw9iqNrOmNPzgN2ywtke7VUzYNMk/Q3VH
Muym17KVmHobYRoJ6mXZ3KELRVPaE/T9LahmaiP5f5cb7n2nHe0jSgfDqB3Zm276Fz3eDteBX0lK
piTYVjNbUep8u/O+xZ0u08RSUWIgJXkjFC2VYDqdVG4C3Vu0Slj5sKUEsKiNzT7Ux4Pvg7MfSCcE
xrk3AGXmRtxEHcD19GKmxQD5xwxXqej3yY7gsfXtr+f9b4dOjgXdc91bAO3DSsIvmrKCyDYdrWaN
9aq4dzY7wcVkmujkRetuoh7UACXRxL3fms4ynMnI0xQk1Lp706RtrSehjTV2BYLWS+loHGu3yCxF
5bSUGA0fbfuVz0Nef08a1a2BfDNQd7hymD0QZqt8lX4qmbNIBw632B13YGtcOgOTohBDptTGw/J3
c6j/yJHiahBh8CaMMfoAqeKy8SQTkxI5ABnUQgvjM8oQTJLPrsxZkGojX/Ej+qRGD1EHpM9VHHf7
VAIjJn60yi5gnig/oQqjqtfl1jH7+F/duEy4LY+wuoVolP5FFuYqdMS1z7vtYfHVfBfhWkbh1C8B
pgH2CsfDZQeEEBHnFlQRarmaqiigy5o1SxQp4r96UUKehyTO/CYfSerQuVS0hOLtd5VcpbdiFK4g
1naMc4XO83Y83UVbvPq9TR2kttMZOwNVuL99gM5jp1SnxAUzztU16Gk+8nGMTxoodHvy/Bpx0MQN
Bxo4+0AGqnTgY5+dR8HDSiYzO5Q15OFpDtul6RAD/x5tJdAzpcfqQYo0Rf2NJ09xv5LDk1IvUCMK
WdUylPp83aWgYpUdTAILO8cEYGygkeprXhSjwHT4HhgOF01E04nb07Jkwj1BdcWCtBnW9nAnn/YM
HgP/S+vDu6lPIPeQIrgbtcpar7/0jCYmftkngk9d1q221kVPABaSrX2/XSFgbQfDIi/5NFPLMF9g
u8f5fwEDSK+djKC15FQTpOxftEuzD4/sYnE3i1sdJTbwS5qb7omUBe1qTrewnp+wFhEen3oH6Iri
pnQjToJ8r9NeqCYPNs0XqNcLuw7+eippH+k2Ewn/3eH0dk/G4AV1NkRw+38sSAlhCAo7GA79b6d7
PX4VnJ8S5iIHd0V+wQxVhv9XThD8dYxlLF/qrCD7yrobVtxWBJezx3Mzb5u1uEN91Vjp8lofnKxe
aykHSEm1jccqvrC1bUdisXkf1exTBZ8NjcETIT+lGr6wqySsqsPY9VXw5rjm3X2wmnCi57CEVeYI
zR4nu3HoAADodgJVL0S/o3dKvaL70BKRQF7jPMFBEr4NzZZ9afi7lM8KwlsBR+so1HTpIc8J/UXQ
1ZqXoUAUZ2pSBlewC4EOWTq769wuX9cKi8n2FKxnjutV91EsD81cURdAIlFrwyD8hJ3B4gfrCJL+
dHRW8Ax7uTf9HVD3NrDQi6Fa1HMmTPJ8+04c0vL7B8j2jdKOLq7DYlEpgK/8LypJlD1N/o0x1XL0
VdmBkyWeIhxpRXF/PzRly5f0al+xjqQQS9rELkO4ObKX56eMozf+4ue9934CrKvxxBqmwgdXUAis
riH5fEpLOc4BVHnM+zBLt36RAs/EqcSV+iU4mGUcm3d+FNRvV6zYNIgMlgIefhYiR6ERFsRXxCCL
nJRCxzoHLoY07M/GVvZ4DJ/mi3HixO9qXAN7pideDnKrV4RqlK9/ajOFXRBrjbNmBZqfYD9Qdiax
lCzm/v675uagj7/EniRUKjslTfg8W5FXZpFbGQpuRZlnjFsTXrqeGp+bYZv+UItGh+EalsMQJucK
plf6TNM+FhnuLgoRG/s7wMYffFLkvtvRItgVKuSGBRYggYPRIPx4NE6mH57eSSTiy4doXXHPLnld
TFc7vb/FIfnIpOFSjIuQg+rsFMknSqpGA1RRH640W5g/zr+Cxi+byOAYWFvmGmcIQpsu36mPa5+j
kc+Fqf45ZoK5qjjIARIoYTV2zjx58yJSVQh1GeGk646XOLrHJGHmDLIEZ4BgkWRg/SCy4lTd3IOb
KdR0CsoV2uQbqSOutRLePCj6y052a6dh4/lcZt7XqRoBYCWpELdR3YHULRyddmX5z/SWyFcftoE9
Vts4bhaVRBTb2yG02Why6tVWpAKKXRq5mUsQhb+bKKyWT/MpNUAHY1eAQLEyHT+UaiebBd2ZgTsQ
fuTuQGCjvV7DfqotIutjg9aOd30iXtpMk6GOpGVUjWkIadxU1VZPoeUZYPS5lD7To2nbv9bYTRMm
Ekv6zzj2I3NqKdvm0nLIrzYVw3eIFD+zD6HGeQDPVE1OgbovUwVyQ8RmaKgVg5qwF0kNz15DGqBk
wa7lUhDvnYYEHpzedx4hoL1q5S3dCu5H+AGuU2NcnfY0X6hwHw+OrK76SXgQatnjVAfVI8H1lqMp
r3RfAVAHawkrueGEQpTWIkn+6Me0LzeCtCGt7I+R5NvSL1O1rPa1d6rK+8EpgXV+6NVHy27PO948
kmc4vmYGN8Z+vEB2pWWuTZj0yTx4guE7c5TOizFWL/SkI2qr5zyENQco46m6MfjVoi3GEOiAzccf
vb1/rJpkLDasDJf5Gg2FuQupvogGT+YjOOxKADD1+W6WoYJEsAIXOemvb2sXJuIvlqRfFQV2U5/V
IP+lbm+aB0wYs+8w/U217YIIsWQbYOaMHw7hLEBIb/XuaopV3xEMi45zetsoy58jHLKCzCNgMxk2
dvLLaGs1+lFi8SWOg9LvuD2ikbluJ9n7B+7R8B7FhriTqZAols6/QJf95jd1HyUuTdwlO3P66uPQ
Vvhu8jqBvXcvZfDzDufmag96EXgq1f7Vj7RpxZH29rKO8CK4tVbhJIzEx99cUw/tLBA2sZRL1DFY
gbvCVPuG7BUw4/EYKS6rgFpOy9yp6Fe/eWaI+jkqigolgfqGUvWUjqAlpyWro9lPM+hP6YZ3p2J9
/JhImxH4QxcXtuePJ5VMEtzG08DNAXddWI8LyO8BeuBcbctcOtX3qjfswXyXUJHE/tgFYmrZQGLt
rjRXObFE3cMifVwbNdrnIiF1y2eTohQ/rNcoIPS0dBy/jjm+cqPiOm0tEEG4JrsVksuYAg6gYygY
8luW6rampxf/wl2oahyZnnTsUhbUaW+94qWhOllNH7ZH6tZbMwjoPg/osgJedhx5byDKexKIIA+5
zV9P0X//Uf81lzrzUhYVDhCL1XMwUjs3rShdI+S8D/kSdTx0zCSzh3hCqUxeOvqfFPzVS19wZwHw
/UOSngjJa/sNIaSWLb0CYgUk5wL1QVzjUYpc35ZE2MQ9DLkFG0fPTQ2/P5fuCmMhzlTsEX+n++zH
c521PbgUf4OWJXnxfx6+E8+QYsmTQTBZ0RaSkpluVaQlq/iiwkQ/H+XiLDF5y5jV5J/E5kIQnnN7
bujdQZA/CTDHoJ76bPXQKFyKKG5JyZ/m1bz8PmGnp8YJcg6veLPeDPlTMHEa/uUCSrHUZoRht8e9
A/TU5sNcJ1oQpIqey7al3qh6hUQKsvjwuBmi3T+fabABlMnugkqc3QpAtecni5BkDLjL+0uZT4vr
1QyOh3uY0ahQwaCjTntWlXf1Yde0PfiLvj00h4LTc3c52ITnanrmB7zzbXePemQL8EpuM5EpAu/A
S4J0pCBzkImMJisbqB+2INbBxRpg9lBH+xbE1i5hhdpOM8FwVBRlop8M7V9u7/oVLSpj9u+tLX56
3DqDN1QkFqNxQsnduyYOsHAmUBStIH/PM5pmdbkg/zBqgoIxhItbYJbGvcBxcKc48AMqJLI21fCH
OI6rcDeyBAv6vfc9julQFCG/CP+R/f9iMJzIzl0V1o+mbUZIK1wMPZ6WLXkadW/shPgwFu2DQhG1
mu9IusDRpg7KgX92WgqwFFXpw1n9v1hPAzei3IelVUbMf8konaHsOPKfG8iCosj1SnMGw8fU0nNr
xC0UEgUszUb+yeKSjwSSh115/ojLAqJ9J/Id7xYLoQqoAIW5Vx5qAWEZetI1CtrGLxyheQbmqM6S
boBgM8+PWlWuBmb4wRiktQ8hCx5/rlUjJOYwMHGs5VxKdMGX/5nQL60ulEZ98Lj+S2ygNkBOTyY8
rG+ypdgYp0+jX3D7QMROfNaz//pM7RT4zUj9eA5SKLICP5+KLJR+MgSq8tUCalESxOigcAlfptGs
3pbdek9JFCEoJnRfoIR7VMxRfequDgS51FO+EbxD+3Axcp1vFTTg8QXL0iKN4cQsSSVJcM5xcon0
Doc22d54MqVBwCNJatTFpc4/PCCykFfCE0yxTVt6J+HR+Znqsn9XLCHulEm9CShu1noaffXzgMIi
IDSotAyO/5ye1UPTDwgflmUYpOOmf2RU+XnNcKIkC+chXyIsaimZxftbPJF3DE9L6g9Wo3CmzayH
izXtPlUo6/D4RzurP5kjsTQAetDwrBvmvfo19v9Z2B0kJtmcX+UpuH34w/dD9XIqWgBD3FQUn8r7
DqWu6lKGtBHupb9K5ahLcYrkEEtxIuAEGXgJn8zbXujeezwf5wBlyvh6JYz0Es8HFZN7ukyqeriV
rTGG16WaWbr2wQfu57Vtut9aN2vm68iK/zmfjLx/g1Hx8V4kWK7rivBwsHBa3jBpqz9THz5piI61
KqCnEA1LRGvXVIYj560do0d216QfGHTVov8xvdKEM63G9FZjr6Ov8TOOo9/b5a3nfALRnXzc7MCq
f37Nyw8B/ycvzotB266iOYXtjJyMXXzxbS8oB2eF/hXCWCehIeAJ2zVI221HiYH6uD3Jx3aOAzwh
DuwUM8ikfGuv3r1tfKu/fRpVQyWjLjF7ma6UNE1ITrhxHDfNSGkEFB47V1aXhvNwXQNfzOHzaWFy
NqmnQ8CtQZ7zFDovjKPRIZBs78hfTpLSPscGQcynRLYQKMn9l2Z6Rifcw7L/VpUMy4E7BQjUuUT0
imJTlahVGxC4L5723+lWeDecCvbXzinqy0dLT7Kqx/AHmK1+Ml2V1IJPtKL6YrB5tSXEFKKEGrX6
/CGR2umEQ05XhmC7+cecyoL2LYvdCxQqp47Ny/2qwJ4+jAVSlxhSS33xDlVxm1YJT51x+pqaobAE
uYK8GbWvMqFbkXoiFf0BEDm0DZCmghUKxpfAhqEZ7UHRtWiVJaHxrW7S2Lj/El/YOLw6DnFxGbPA
5G1Nt9p4SIpMg46GdrjVyUfAS8m/N9XNa9GndXFxxHpH8MlnifcdaSgoniyxG48jN4Ls2Cndk7se
/Io5UsQCTzXvaHUDv/6ubOsjXxlWqiiHOr9YDg9lSir+G/gENOxvdglil7SUO6e3RZJYrnRpQS9e
YUSq1Px8nIq3/kT2JrCrzafGmtr79LEp/r1zUn0qGVyBQff5Ssa0ggJQziPOgpn4Kok8u++GL00K
ykeSds1tYImJf4duuGz/Lkg8ERpIq9mKOHrfEKDM2bqxH12PNHKw1VLDQLwVzk8lJU5bdT/GWd59
fWv6An6v6uLl6qAxu2ElL+3gpUMK4uECcra+LHAIreugA1T/OroWDG+8LXdI4qlacjIlwn0UO+V6
XmQrZghpVwCfhigXKDfHRoB56gheg9v1bjQuOjgPqaFdly1JAZXu7kKLT6rAB6nIyWrbhSXpGrUu
mzMvT0cBPh9H5nh3BGV+7BcJAduMVDNEwFXLr56fOjlr9ORVKK78wou9dJOJQDT8GwtGVvIMQPuv
a4R0ZmSHJuXMWWVss7BDWFVLEhgrQiDjtgDRAbmMhKJzvWShBGUhbIgAHDkD6sCmZjXZ/1hJL1eF
fpGc9inATeRzBssBHVQuh8+qGh2eV0L5yoM1JZuW6dYZ8np+Cwc5jCW3YOKFj7hY1Cr8ZVN15eKw
io6RlgnUAk3gFKTWJF1DIawp/ILb01lzkqWJFy5hZ6OTn4XNTk26md2yx762SFT1VlDdRX578ZR8
15nkOXRy+A/1v6Ie7lduHA0hbzJ/iS8IzO/Fbixf0NI/qJSBLEYDLCmmPSxJkV90sNbaFgBAcMb+
qIMPtoVQvxI9AWGp2cbZ9UPmC/Ke6dT9yRXwLckwevWLwesjC+3jz7GpKQtm6VOvC4Zh8+nhHchQ
YfKSL0upoUdUa7x69B89QajfRBn1AWIf4vMUwqhq/HbzEarsxKpEghXkDAXML0CxMoq/nr6wiHIU
6I0WqeSzEp6plW3DIK4xyyTUdH/dXpZrF+WimSs7u4JZFqPfKHM5k7hwkGgSwkLVz5mTme3Aimbm
kEvG5g1NK4gUwZTQ4Vo3J4sIRbvHWBZ5f8VX8PTEraTWMrnP5f2uwM9iVA2NQhLmjGx0GwhZfj3n
I96qSWA+m1trJcchNT/fBftcqoKCsL8R36jUpKmIK9WMBESJSowudThjDkHV7+tiYAivCZ5OPAkF
a3LIBjaE+UT7AsjRXVqye+s1tx4MROSmj042lVdQoUOwkBTYIJWv/h3X1Ra6rd+IXGDfVmWF8a4D
4DsEQnuEOSxpHR84qDbN7CenXgyd556nqwpv2XMBxKOQrJ8D3HbeZ5JFckLyGOAR4UGvziZo4Tvn
Msirq7Qs2RUT3YsFWCO6T7EnJcvETXWBq84GExIqZUf0wiXLEcVAeyJ9MGLXsRIDQuFmfhLCT9vV
5rGod/K/kfzccd5qu8nNokg6/quRRwSGiaqf/FmEpHLeQ+NJ2CXPyKDEL1RVo1rif8+HuWGCzG+q
lMarA4ggnE1nma9O3Xs65E5lV7K+yLDfT127K145Q0wDpUqHPqZAra0qG456JfweYdUho6oHBVjp
xsky2J+hijimq7YiyQMLsfscxEQHZtmoyJDzzRxEbDHvIS6RdjjZ0EwZ+an71WErdUjKlieGCaqR
KKFV3iNe6woU2aA08FuQ4uI/uMeeYeaxzGV5IYb3PnYLHu1SUT9ww0dB4XINBu3JE7S7bB1K/sPl
flMbLBC7EfdTGbj4degL6RNJowC2uHdf9bwok6sKspRclVohdLAh5ssgkry1CZM1pUrQFT2VpzYa
7LKbgB5AwFvvwuwEufVQjgnDipDdYzhp6El/Jq5f7ta53RAHjLPn8sVWtnUs7qRu4Goyv0H/c/Gd
nODvBQign73ielhs62zFE2xuDZP/wt0+iU+wuYloz+Yu4kYn1mGhLWDEucw8cLPke4g4FDiGTwAG
H45PrGmWVmxCBZ0vRIYRBtzDLgRP7jW5IPBfVRIp/bHTdfTLqBeY2CfGFUfeijfiA0j+NsN/VfI4
svMgaSgZdCDtCIVZyRaBPADzyT60h4Ka1WsCkCgZOThhl3CKGsHGQy1rXj1d8zYZEwRaIcYG7N73
lNxmaSiN4nf/CdxCPCMLZv2Hrnq2HXi7cu/580tVSpAsCfBAB9uUuxmHRCjl+J4AgW3d8TyXQic8
I16O5Oamn/E3XnRs8EVXYRqTTFykjirnSv4Uj14TOUKKE3bhVWPU3LYpKPShJ73j4eoGYiVUtAqy
KneddByK90heEN16U9RNSRyWtvHybLKlfnIckQjHppVaPCSU7qFUUTF4m4kZ65vYCEQ4GrVXMqCb
NNk7FtohkAtW3VEg2BFjME5RgfG24FO7d9Oac5HKK6tHT0wBq84VER+W1rEOVBLdXcZbVyIwdlgL
c7FSYEhwS1oweeIl9wftpRb1bMxM5ZcGcpV2bBKorKxgVKpWMRTeKoBc8mncPhfrbwFZHsJje28K
nNKQvdV2bemdGwQpVtUf3WRugfASb5Fi56wa/8EttULO1fIFW1m3RrCQGVzODmQZHOyp9xS/vjyL
ZzHhgJbrZSqNyVAglSbDFBiYTlw5iKjNiUJAfvaGATXN8+WzxvVaqG1LFbp6kj7Ijp4WFG0DT+7i
LWfyQwz2tpccxh44dbr7pY+5wJaozBHkp9p026R6L0l1RrRVg4VN5DUaQ763OZGMezMGwxA8Txh2
rH2JOFE0TAsj9/dlBx1Q/2Zyr97n95NW/OaECnan3W0IAcCGg7Ikn9uvN9RtPc2xcfafjFWBei+d
t98mdK9dAXAc3PzNNiXvK9beo/IZgrPyAJidRNpqgyFUcpK/G6IpjQKxtGtvq1b+K1q6K4c9k5vL
i0CmvtetD4nWUYTcRAOpbmUHrov/eFVLSA+g7b9xUs5AeWuNmHtNc9TwanLeI9n9TmGapuAngDZ1
egdg3fTpzSunAQf69UrtqcOnvYy2RuNAKoBUmBHkIsVNaKOOiBR60QC1Xr5Zugv9+mMxRWp1blOW
chQ5z/PvR9LR5pyrMuVvqTbghSnxdbz6drozIzMjSv6jyL2bZL2gkiVPk8Zv9LqIH1AFiyleVNOo
ZYgOts5s08QiCr9ILX6P8ChBpBpr+fbDLOZReJFK/BKJLTIHK1eDSD1jHingVYnR9eib95BCDgyQ
k5u1yrzbS484cvGGs8EFzqFerElwh4kJyoPTn2KhygrEDT9BBfo9sVM+xYwVhAxdpALcylVUA2nq
N7P4W6dmvm+2WRVM1PbW+IJ8e34mszdjFpU9zlOsBYx9Gu95nXbqF8EQjsX0dpAdo1tbVZlieN83
Qw5zNKDbK1QDxZeUj84M+yzRCRYus+374oAVApl5sW7UI7MREnRIhIkW0KiwubwwbW31lpG/JJq7
4CUDbhnUl7GHbkuBspN97xKx8A+XIH62uNdl+78HB4Q5d4tNbUb0wFLphfeBJyHuGixC79UzQlTX
O7O2GqtvmEGN8O0GHCrRd0bnOQQXJtBBzGEdrnkPPL2ghh1LVIa2QDs7AChb2T9UxbPrgs5JdGC6
UF01Jvwn0WEqnmIYAQVsdrTtwwcqYa0kB3kvtIguenCMoT9zsPgzN+lzDhRmYpIzJ/xDQGJ/7Odm
7N1kHPDFCIrJu70RibYk5DFkjE5KP0aaDZwMnZXjT0Imsi6SAnW/pIvuCtRDOrqXXwlz0MEy8GLX
kAF7k21kiMLntcI6CR86u0kDXWV+EXTgudukWgEM+vq28qfZTqFrSGnISU35cAaw8tc9yP+X7+ql
54LKfYiy4IDC1zCFWM8f4vPqMmF+vspxQpEyrgo/AlVxVEf7rjljvcNdMaFVrDPyvK6wsCFKBZZd
OPqq1gdYVvMTTOcVfiSd7myNUl9//wODozhSaRt/dPYo71ytS/0BFzMQ3yzRfR1oEA5r8fRL2u/8
Ph/YOagqDgm1/7NuXYubew79IQSPpt++wMjB7/jvXE9hfogYR65ZV2Y1kvh4d/PGIk2jxdq2XYqG
PVbwhkN9YZxahcBsD81DUtHNStjM4rw8CR2hBAmfVKOaKI7/x3BxMNrQ2H6UMkf+ovHjmgAvDALW
uY0v9bmzZuaMqGxG4xVvWBr7+2xVlz9blyfKfnX6bM/7cm6xpKKeJ6pl3+mANMdqkeapDv0PCLdw
Vjk1kp5CdT8tUfzjw2+5Nv9uoj3ODPVVdfR9arcCKHsJFjkY37eMUzzFMqM6dG396F2vjuSGXt+h
f1lkFpnpDBFpMU1nLalWwMMFDVIUk6PQS4iOvHzfU1Ja7VSQ2RYdBNFdJzOqcsyVEhP91P/8WjHR
ySM2lh/18OI5hvv/DSrMKnGipKmeRmFvTCoINN/IEUcELC4c7ejuVuvh7Qova2V2ByFUS7gD/1BJ
f027nrLqfEpH7Vi6lmOAo9M43w359N+TfShRWn/xdVWaNyViNoHVwwvMg1Q+X/DDWlGaxh3edJNX
1HhV8NYKmxnBRjPc2FTLNZ9CoDxrSDxBwXbIbxYhh+iiX/olN6G/fID010j5Lw1VMsBakcKleljV
7BPWtiO4cJtdX4Elb3CyDuoNG9RWdA1GrqncnH897SokbgLnsuVpT630gLE73vSN1JirjdRlTWIA
MGNFsOWgJwKo2O0rCdZh4eC/L+1FI9hiwp2jTbO41AYyLXL/bSC19DdUW0ph6SG+rxrDFPlr6DgT
la3k3YEg1h1YZS10dHVAY5WXMppugQU9EdcJcmOpvQ5DEmuFOEWDYRwsYPt6+UMgPsejs/8rDnCv
S5DJnOQhQtSPjHYUV8Sz9SzuJYDHnOiEdyGpM2sit823RgRuw1Q280wisxHSvygrJiw4t7E5d6sU
IFuJAyWxVTHOu88f+XWDorwJsCAK1Zbjp1tVgG8DJCROeo5gsFcop3UWuVG60OT53Q7bLPSMoHTL
TCGiwHQMJ8vctvM4Vk+Sb+mpG427sphELrsE9tpxjkVK6/I4WP1h0UDxZjKdJWuNFKUtzE8rsF2q
rROmNmtL4A7548rFgKcnjtNQqvoA3Dk6tPn7hwlsjke1LVtocXX763XmfpwVGxQbnHUmQC75guPR
yGxtFGgYQGZgBR05HAXsjNOfy9zcQ8xvVt9e6Xy58BV3TYu1pssXksogVzSMHQm/rWBbXw0CGrUE
BqOf2+hqQvZVrFBPh62J75n4JZz18U3aTxtHoGP4FtxmgHyrdXszjV8qdKonaHr6aeWiZ2/DCzX4
r/bpQhsZ0zVTA10OgJInZfG0erwOV4CZeX0IPp54Z7FptI4TwCPQIdJ8USDj/6XrIFMHTr9kGZce
r9pVIaj9c9/b5gYG2GB8dtCsRtcAPEwRxfK6CZqii/mxn9fSMU2T4CDX0t0oxUsuvxJr5BXLQGWH
M8jSYLpEWy/kCvYxIPhzl3Ty7bk90LWaBfCyLQO9aN6ieNnK47zCVmoQhdzKe/JmfGsaq8MJ8mih
BokljUMPWtfolwOviqecDJDxFiDWuB/iH/C6oC/c0vlcKJRO/amyWQ0DaQXoaoyHuZF7KIhTS/r8
e+FHsaL8SQ+sHhYsP56luIuqPbEgNMoFhcDFe8d1umHyneVRKSuC+pSFCic6RZg6bRZ3SPUhk+3W
pSIygEyinYb1Xg7kFieZMmAjVlGaLX2Dd5U3ShEKcpV4gnrZ7oosW1aTaVAGYWQIoXOjCFlco2pY
SC3uAa37/CJ6HpM4ZqOl/RRC/3zW8AWBlKfnU7vvGNd6y6EQosX4Grkc0DpgSlcUzUG19g6OtfHo
Er/l0vKLxC9FzgQqls4L57zDeqKvlicF4NrBRANWfhzWexaVQL9ShzvZrDfHdCxus1Jo7Abq+3PE
Vj0zo86qLeuTRSVhW4UOwxyisSTW7G792CC/eV4ZblgLnJseOeKnbrozmKYaVfVveR8U0IROwETa
/gyAWIZo0TbqOYIoUYomFXR4kwjCa5v3u78Fu+JBM+qDmCdTYGXxFw+ntlwFcJyoUTzFWRJ2nSpu
90FMMEcq2miJpFsi7IhIscRp09lZ9tqQ7lMQfjjl0Jg7QYl99NURvrPnC2Qkr6yjTvNaMYwA5mjl
PLR0J3/QuWFPIH2YeCxZCjfYlagvj7oxRsvkhy9vqh3K3BHXS2tZhV7f6SgefgkCzjh3xklNWCAe
m5U8+EfkTtoR6vQ6jQ5SARQiaEVQSOjsKSoUeN//tj+owU2oUlGCF6QJW/otju1ly+oSbeTXZV8E
R2J5TCurZNEBQhDfSy77zPBSuXzCCSEM5mPHwcFpCOspZ6GSu8zkJOG4o5hHcKRInr6MtTs/sI3N
XS/QrNRDo2zx9ukIBt8a7F2maEBDUE+6R5euS30Xqd259qgltrHLrrNpTjGxust+HetbvQ3ox6Xl
rUh9HpcoLVdYHpLAsausQhpFqsJTC2Ad2VAyW/RNpbF/WS8a59hEHc1gTIyMtgCZKKQUjj5tY7+8
f11PC6CPdDfptHYcRws6h//OXoDpAHnUGjF+yoLBvDzyXBE/d5gJjF6IoKCGXZUeH7Dq13qKGqgI
GIQbalzxFz7n6rN0RPgwQKadNOdSElhgZIbgvf6DfsLvkAAP1f/OkE4uC7xxOKM7EWBRtZmsZWza
fIvtLDkoGZFwy7RMGLnnxoHcpzPd8PdEj3Rl4GboxVBL/ngM16VqHJoDYF7wRnOg2UnAXwor7RfC
3p4c3VmtCz/SmgWx1h3wtW5PBS6b38anELI5dTs0CPPMt2H9FuTnHki2ZugnUPjrhR8CpQLemvAD
dfeHZC4wQagbfoZqHqHmrueJrtJgBI0NERfEXVfLTtpys0nvg+QsblnJkHttZBruC1DGmRdmpGLp
85t4jjuYFEg3ga54plUPd4ely3upKJ78GuC+YNQIVrrZk+fIA3yQnuR6nmsF4MfR2TPBTu0gUgXi
Hgkl0U123V1/nDNxyqLe+Uvd0xfuJ8XkG5De26qBU549rIXWO1silIrGK7FzaY2geV6WezimNf9T
NInyTu/NBPWpLZfe5lMvrMTFaJ3BfYRPvPKwkfWg6lkii63WRhmcf0SC8QJe1DqXBxb1fgNtpyS7
1k1XO8vKrB8fOA224+gelBoo5wBvh2LpDPgXK4JCcXCzL2ciUg0YiY9BwSzT+wWzoNoKdA9DexOJ
HosDOqkAURyXpDswH31qYJsTzog2hzsf4HW/AP+wArwvlByYw8SdZTz+3FzMA2wf0A1jpT0VwMnM
74HZt5zh8sVahzQFgFW56qhuK/Tp7zbPELpfu/10uRcP61zOs6r2Zg7vozJh6TzC+l3PQtKQuu+z
f7SJt7JISWvyfcSUkOEl9PPcMPAqJjm3NtpFGrJGTsf/cCqdYhiKCG4VG3obGEukyOMShOVgo6ZH
Q5LLxYcKcVXu7BjHPBezCVoKPnQEVVz5X0Dx4FeFAzTVO+HODrmrtALtVKFZ5/SrgoX4QuKxfUQs
BpM//e2YG195Sopsodr58OzvaAUg3Knqp5GZyEBeJdYRVux4sYryCVvOneprp2woHZFL6oBVm/Yg
g2ZzUbVoJg1pjKfWB5skOiDx7rXCD0zy6AiIVkLTFnYLtWUICgRqTZ6QpRY98YOvV8Bg18dX3woB
YoLk+rakWrAvjdmc9+eX2RB5CEm1zm2M+HvGpT8C4PoeG14Nffn+fqycYkPzlkvMB2KyT41GVgwP
qndcVzPAXimB7OHXdBxwFb9kZCJN2luFMMIczwYmc6rFWDUvUz07L85McFfcz8MKlptSpJoy7Qyp
7rY8p3VbNgHdRxAv8u2wGxRv9dT9Z8wxLaLwxEHy3Pwcvp1ym/80gosC94EdKCvyjwbagj1eH0u7
WU8H+VBNWmFeN4tVJQUymnfHH3REQPgFRixICcMZ1d1goBGZvOSs/GUo8oiK7DeAOvMFKbVGRJFd
g38+yxIjDpBW4sR9jngl22DVH5c3geuywVdYJiZiwVXRlF6BQAjiHN4isaoNAswgIPxoHMAn/m7a
vq58u5HyOYk9FpwufuNXg0TkUiEqVa5MYjHyjwk4CyjsIYSg2qatervWJpd5BMpJ18dB0QHPvR1A
Bek9OXXxUxZliUzDZ92L5nQOa3I/8EiTI3DQz+oy6MYj4UcAhFhNjynA29CTYeMOFMvPQhIodvvm
iVZLgfcMMlqWxUbdzo1EMzNIKs/ShqmOTIkY9bGGeDCj97mTdZr8FR7yN+Q3hgEZsJZtSDP+mYsW
pSlvmbzYNbGmHRPiB9KPw6Ul6xP5uHGFmIO2kqyQeLp08jCOFU3hYTsuQkRa9WgXgM9DkPeu77VX
fwysNbW4si12ntsr637xNdpxOF4iHfFVIgo1t6b9tUcJrJ/cgHKrrHL7dtpHwV9mTbEZzQGxcDkk
ebqw1Oy+7mvZXczeGRmTrQo97MT1ABGOLpmj6RQP3AC+jgw+mbHtuMt0VBpcOseMYrAwbPQ4QjuO
U30wZ9jtlKc+wkcp6FpNv1CIA3jMxwNfXbCh6S0f+u43Qja0923n/tEzpniFpXvbBfLmIWsr2H+G
cFj93xqIhPt5e8H8QAzfrK5bUi1bEiilq/fkwGHR6IN2uQlNvpWgTtpLxGGttWDX8j0BtUpGypnp
e+C99KSmQVD9peviBF+v5FcKGIFuwP3DZDtwYdKKDQj3//Rrqw8iYVJtYNRTr8yZbQCxHD/Wlrbv
UtBGk9UPCubbOJ9yUrZOwLlhWFlSFIrn9XlkfwJThPPCvJ9IgB59dohPBGoTswcSDO86eQDmAXOa
jcN7k/hfF67o89FBCpLeFiq3G3ewdCD5MC1rwSAcm02ZzXZ7ytlcO8EaQDHvXQ1U1Xj/6336/pEY
RxVVttDmlpamkDLZqWuGYe/JxIodJhPjX1DKdYTOCl9b4nhZ9VHqHkZ+vVHIad/guROSEFXgDv2k
z0l5dCxXj+/+oQnOqLlPV7dVlhjka1PUo6XqevEFakqryW8XcgahEaEm2kp0PBbDi1WwbWnI479c
GjKMFhSGUvsFaR5NnflIz0/ostFsjQPbSCxHRlJeZhBisxqp1JnUL+eL0jTdJGN8EJppTu0ALKVQ
p0ToUWeY3bd5mwVoUogjAc9+3WHgtbLlYuIeNcUuEtCumjLtuRazYKTjG5Z/2z71A+Nq2fFvG/YD
Q6Oqv1IYrJak0d/j5lh0HqUMwEG5UN6crI+mH5Cl4xtXtYBnJnqaOpz4voN2N7MhZsj9pvMiHoSD
cYsl/404OqfRQr0nPqbjo4Fwbbg2pvj+mapdz7gMVCdTvYV8gwNc5iHK8dGrsg4KnzV6tqeRMCmt
r8T1dDfsbYE01LGONiiPEnGtKzmI4dnIbbIv6iNu1RDdkG+UjoPKtVWNBcrGmvq0vZJID5gjeXQB
9Mm8t5+7hQB34Z+13o5lykBoZiiC+ywisf8enwmW6Pf1F0OivSVPudJdIbdKg4+hHaLOQcXQEyZA
AHnyHqo016I84D4AHTmPw8UZ+9mvI/NK27NkgaYKBCJ42FVIrP6QM+M4nNodfTszpuwh7mYGoZ8T
Yq3AhW3EqHu0E0ozjfQQmxJbHqpn5uEGFYXP34zXCFdPEbW5+LrpzA4kw4YECUZb6zuHYXfRQP+R
1WVfGDeVhmbbDl7nsWRCfemOoyl3QQss0843MZSAWT41lY5qfHcw1aU5cxDF2fClRXiW9JpCvvs+
hZT9xkpm0h0egMW0dND6zlvQJVTVjtPVaXsDHi6Rq8G5dQtIHx59R0SocpPAOg0BYgxivvHEkGYO
3SBrI9tW+P2C1TO8TUTVkLOg/7xNyxZovHHYQdHUHgyteU88nO1YZqGvqM2G96ZfA4JYebfdOoU2
5FDb+r1Hf6oPmXDP/hQuqeobHu2DFbIpFCsd9HJVSfPHACHQiLv5os4lZytgMQniZyB5mbjMALq6
6UIM5OMsENGN+42zeFxSwLO+Mtv8eKI2jgCLmW9j2SAREDnmCqLQJ4IHc7DjfUZaSq/RFQV6NAZ5
ts26A9FgxWv7X3mWsR4LQtTGo3H4+aNcXEhS2b27h3hXD6p0jskaUWSV+otsZH17G69DpQF2M1Ht
gI79m4W5vxCiZDMrIqP4cKZB2xWGSlRGfOiCNCSqhPaSyW+Ufi73ZOAjpAvkwOI9dNU9F9OPBbXl
NZpbeYZwURp9IdgK2UNxdmW/lPFcq1YSDk0y2lTfAFxINSJ/eUpqRzCpkDoxHJZOfFSW3L4gr5fJ
D17Gv893vI/rh2vtDJhL49hOKH5pGe5kK3a3SBaR3OwzB4JyNwu+nj+nfq6zrMikPG+Uu52cQQ3P
+lDC8AfxE575psH826XfPvFF0x1wNbF9jk41ZmleCNvJo49JRvoKNgG5xP9GhwJdIsHdD2ghgR4r
yf6gEkNxqOGiG+uDP0MJrPAQ1KG1DYwctn72DB+HGWFB+ryDeXLUVveEseGiLT2MnF/dlh4iyaAL
2FzEvGXmK/Ovww7s96nplTJsxTa5ke6WhBPGjdqvQUFeFs+z15UovqmHijKpiVdE51QxGpdt+F+c
ZoiMxqf5nZvpuKxJqjN7Ks/e7aP58mKQfgVHopHpWrQPVmo7UovkCFvR3zqvY30cgWu+2llQPzab
7xIoXKSdYOdF26NAvJAtd6HAJ4ds9gLvKVtGm8UEAf3wl78J4oQw6WISl2wy5TnmqPoDzrmPEXGh
AzQtqyQo3k5vMipUYMbswDMFhwIi+MKjQUD+PtgcSMx7cB4onTbE+9+vt6Req+ZQ35OlgJy7q1Ml
8ucBSUkK10XM1YLp+kJG2bTP7WwyvGwpVFHq97uR0dFA6b3bWcbELx8MXiMGp/YxOOOmrvWkPjHv
o2Wp7DRIMGhfVZYM9DLmuIxZZ4hPtddr7zEgIfURGYWIHE0BdKQafzyirNnk939kKtMQNnxOXhL8
Sriy97j+hZ5ec1xnY+q/fUI967BgoipGC6K50j4xkH7M6Jbz8jJ0z1YEH1Vl7RawqaT2UYgZqih0
TgPSz58hV80yfsyY8ygAIcqhLa4vs2mpGA0i6lImrQ5VOtkxcWZ5mKKAs02mFhZXloxkVZMxueDb
v8E9X7TYk8GEQox54VRF5Y1LlsnC+g63dXbfUCNE78wzAOyszs654c61jMDAnpy2ce1+F7ANoYKA
CH7iwF3NyRRnVY5lFUhshunSjEKvv1rVCpM5otQ3RSucQEIEguGylMO/XKejN7Ew5HxKSj6YDp8e
GpI6cgGMVVfuTnvNi/ZT1wH4RT/1lBubzT8CnVSPv3h5A9/DqEBHCy9syDlnSh54YdAKHwRQFh3S
SfK0bZ0s3AjmqwPHu84QlPmhZlveGXzw8dZXKrs4mdoVamtR8Qqnni99ch235tFdX9ju37J07Fyh
S6tvp4e8K5gi/M8A7IP9jQJgpx98CWXm+HlD8GxlcrflfucYtuykcqmgF1hQC/djHbq4IK5Cc89J
XZdHv/mDTMs9+yQ6ms7c+pjbJfE6j2Rps7WtrUffjSnIUasGXWirKUTvsRMZddF0RexCakhG7MQs
CCq5YVPo9kVuRNQHgs/iPfITtkYKGGIGBv1fDit+62rgSxsvH9rN9GkSktUd5sMurlZKqJH820xo
UTIhlh7zUUZYpUJ9XyTr2dAQoDw1MWiFygu2xfrxXxYf58NlW9KLPHu+nTiqj7RIQ0Cd/Eqhe7So
iyze0wl0BizMqN04hN+shJLIuJtzX8EytqF4bM1LqFdMBbXyVkVTFbyDNIjAJJ3+I7g2NCa6sSuY
D5d2NQ3+2V5WaQLy+R/YagY6hC+CRBGdplmP8mVtNkUE7OIcPdQS5p9mCiLxY8ljVjO13HZkhraI
VLTuzmoj+q2KkkltMmt+JES/4kmQADBBGerDIteHEDZQw9MYZfh8yR3qJQdj9m614w6l6voOTd1r
9ULKf1dn+b5n6sVueLIhNf0sXkhyQRMOW6/2lCO8YP5udZXhup3B+60Z+a4DzGJe0pUNWmAcjgFM
0el83NwWl1TJBk4QTscq+Vc2+ugQpTM06XAu1RQMRVex8G139Q8HEsCN9cg2mR4H1DZkNUYMR50I
O6H+uzvTanxE0CcbVs7p1L8EYMAWWipqOaW4O0QTFUt9RiZ1i1pVBpax3GQHLQjJLTdXUTZbsK2+
xWSqsu72ARhhC1ItmLByKOF+lSPz4ZHqFut9ufDaVyAYZE4tblXR8j6p9j3CrSv5QY7GmMjXLj7b
TZsuIa3RwHJwhKbWJ7f+I4Ufd3SgqsiXsI4qUkuuZx5oLLbqxYBsJ0Fb/WhU4JqDgTMQTJ7PTNlJ
M3mmgYw8ownbrpAGjlxiG/ldSDBzlqoXskj7m4+PozBm9cBbTUZ+Bs2CQghThkb2TJgq2qV9FUcO
mJCWtdFWQYUkoEj0R8TVj+Ahvzwfk59VLXHt0dQRPvnGPHKutQojhjbxPa2Fu1R41ACkHK3WAUMT
YXdow3oXUTA2uDebpB2v4X0KUAnP5SjPz5KvPFfgWnEyw8DPGX909sql9OYAnSHS5jl5PJPK+CWN
4d25yHelEXXJAfEzoRfU/FqNyS6JQWWx47ZR0t03TeORcAOs2A2bMLRd9F3kPGzzIde/r19otr2s
dQ0ikmy2Q2uXv+5C6uKzGfiXLTxyv4/yWEs+SdbaU+088h98IhGSpQ9iqKQO4an1OMtWvJ16AzNd
lT6onAljPBjxoI9XTg6DGoyEqyjZoIvDop5HKdMwLtZAnCt3KpNqIcx6v6ON6xbUxeeuXPz5tqUf
yUGcyi0hXAcbyVLaCs3PFtBFGRuK8LJO3rNqAp18/c3HNylaa4QMwMUHp/8pI8fkJMg3ZeowTvPp
zivd0IGxXdLZGKHrXK0PBskgrr0sgya3EoGANkCdPo2a4sEFykry1i+8K0lo1OyyPJGNhWLzptTp
VfoCl/+dAO/wT3FTxqzWJon3zfStC+huTpxesoirNeWrVztF38hVT441WY4cvlNsQoUZFh0fqxx0
9fTt3/Mi2Qo2IrJUlhznSFSLY+xXFJtulyetg0fK/opjViYALA9Dh5vRVxgjZ6f3JV1c54AS+O5J
oVGYoHXrFTHHmqXRDjB8+WRvpq7xN6LPY/AgBDP8/PBdtUaRCo3b3TTMdOIvcKx4T+/lIIwrxuhh
0l4AOUghpwKfwZBQDMgrNHYiRIAncwfMv4nmpA4wWsgE14X+Slo6+0pH9FDAr+pXfa1+twRRoqZ6
nWqOh1Hw1YwLmMxpxYY9uyCHeFFRIgWoBV5t3+tX2BlYneLJwrmkuS2k/qdy+2dhoX5FQor8U59l
m0kfDtF6BI8rb245yAuct0uV/ZcX2C8Ku2hQaadlPhuXZgsKY6UK2wvy6sopMFnqjFCGj9AjivY2
vLOa2Ihf2A55tWQ3QjJux/7uM1dWd+A1UR7BEeN9v4skzEjhbT+5LzaLeRBEQ6d2udSIBGdKttxq
hSQwihzrtjqAvvgzJ1PEoTfwUdO4CivC62g8UDTzAzNT7QbtY3SQHxGSCk1w5OyP1ivO3rJFKmu9
Y8YslQsxSLVQzLYVztSOPaMw2IprzulF4vGcehoERqtjCA0slkip+M8ansOPPNh/DoZ41Z3QIER0
6wFRZGbmtzTVyGdJxIoxTZksREMGAAskAoRR7izaRW4LSCR/uTax1uRebA1sOaMWj6OObeA9iCev
3PwcVxfeYHs=
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
