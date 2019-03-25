// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 25 09:40:25 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/habel/git/UFBmod/FPGA/CMOD_A7-35T/CMOD_A7-35T.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [26:0]Q;

  wire CLK;
  wire [26:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "101111101011110000011111111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101111101011110000011111111" *) (* C_FB_LATENCY = "2" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
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
  input [26:0]L;
  output THRESH0;
  output [26:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [26:0]L;
  wire [26:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "101111101011110000011111111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZBY06y5BSEA3vwLtCYy6nxOZv3rYFFgZv5ABjBaqtaItkwdtQfFvZBIMhBOgu0+1i4DhnUz7pdYr
Y88DaxXmyw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Q91nMYZhjxb8KT0ODrW+miquus8bIV0xJDXXyQLu4mbE2ZGK0HYqPk6xE96lKrNSpNViHea0rEyX
J3Qsb1QJLBM/4rnfg8PNzn8acqAN22JgnqyTntYQVpk0fARej5ldkyKbsCPgkFDFJQnDbUHBIcF2
clV1QCjE7A3SvN91cV0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fpeDNxCbq4trL0iAEhu+gbl4Rix2OTBKp+3DlpwRVRrJB8M79X6xv2dY4g29GTJWY/qcPCM3xauG
RxLbIsN70w9DSrpdJ31jxXSOp/N0b21smrkPYOGR9al1eBkfjYMFWbiVzWEKHK/6z705awwEunRN
qhtuKyDzs9JphrMi08O8ld4FYuGNYbtDOUXkizCIgaOdAfQTq0yCDea9z6uJ5sQUPwqrjRIroSnJ
mW8XvC4+hFTtIH4kcsR/hWe9eHVCVq7yIdgTrHznDz5I4c7+A0ZUoahnR5dHirQC2z7KKzrCldej
93tdxPQksB7VjPElshg8WP1MGrwn+7hvSijdSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
No6agU7QCIBdcP4teTJDlwXV+g3qBzu8V5gqFUsql+qUP2ZRyYvAPscmGZyPnHh9xvIYYFmXqCE7
RRM/BcEtyrJ9GJvahRcE/doL0n1EHIOASw/MZnFHkf6gtqWvN+SIv29/H/UyUfhuDXqJBGjBGBRs
+/RValRovCLF1SU7AdbCQbWKJbpj9JDmu7gpnhPbkiKkLcd0L7j/KcvlPBvHLG2JvHXct9Oyye9y
FJ190Nne/diMvLsfTBKIzRzQiV/kj3aSYxw4yzuKLbdVZ9eZYqFHwhjBXrVIvIAq9zy3Z0JajEGH
8Eg7Z1uVL2BNbnB2qP4/6a3wYkq6RDa/mFw99g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Au9tuW8YCiySVmtwoSZ2LqBsVMwu9uzGBs0i03rtA+ohnDzpS7/saWzSdnxtvJsmHKLPTnuG8etw
O+1iKknogGQAhYN8j4DK0/PmelqEJy8N5vwkQ/o6l1cfVFLfqvAMRbZ7lkPzco2SCT7/KjEJHW7i
5gy7tqPxnW7QwYv2vH65EVqe0p2tQ2kCHVUvvPaAZbeDzA1LHleCahBpWEI3g5wztTT869s7a4yn
1IeWyD5NV38NHHcwqubPZ09C1Vm5NLAHW7sEnM3is9mRkFnCh/x4Fb6Ecuu4bJYFhgmNzCCKgYK9
PEdkW2OgY7EzDM7ocQQuoE0+aHQvw9lRdJm00Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
n8+Js6UruWrTa5ioc59l4AeAloQ6ZDwzPNPXUOknQWFRecrzd2eOQ2KSf6tv5Oxix315yAoI88kJ
L1R7xZeU1dj4QCJCinzjHZXGEfUurXJVEcq84ofioKIpCyBd7YnxOq469vjhUCYiTJvMARwPVvDY
U+jspt29lk+k5/XFur0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HvScITgcbiG4YgkXwlLAPuMki7p9oPIAapsMuPCpK/tVnY9llE0MvUk/POKYiMFRuKgzht1jfNyM
pX8Qwv3/+iDiBgwTwibzi053ET+OglbpoF/MDrRErGx8VRvmBKwxnlefbxg6dCEzjNwYuFpDkHVT
YZySWRuz7hA0uzRJwLLkvg9LoVoAsjHpp+GqlpSqfuVaV3IJzpIboKGmFv2qLj7Z3k2aE4HhZfXc
HclRJsWxw/CA2DK86EGTnPC71xJNT7pgY1DSHCglqFwF35L0FfZes57Wpz5Ka6YR9dKPNCocMfXO
DZKOoy0+Zz/G4HOrhtHGxgzfEtHjRq0ZthhxDQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnwO7Y6ZW3msUfka900aJo5jvveZSjcYkkQs246BdVo9o6EJicdhn7P8CfS3Ic3YB34doYwOmm92
cyfef24nS4J5ZPWYcOyeOOhMAY5iIGBcrTKRECXgkVaNVxUClQNlJPpHLWHkkkp1Gj+wqaYuAYOd
B3GCfC5t0cmAY8vRF04DHBtAerpO3WDen2F0jwbgeFHXPWF8CR4qpXdbKMXLiAbbbmVEvoL8ItWX
NiGuMoDK3ZaLiTIyTg1y42Z5pcIrz0P974wz+gLb+8Ywjl7wjkEd74eHy7VW5PcAhicwuwa7F3md
C1q1O4+4D+xh8A7E7q7NKA+paU+P9yf1l35RGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XFeFDemKAVXUZxrHiGfOOSbhQdT3RtGBFAb5W7yajRzlNEQcXIMYPGdQWdhvz07lyjxgJWBV6RV2
oZUQ/I0SitfqMEZnMaSlmpS6b3FBRpO4n3EzT7ligMsgpQtckkMvbgWlK7Jxz189zyzyAy6NfN3n
Z+5fG1A7QAsZtHYyDzE0IujxpwTUtI/kXE+7z8fxOyLaSMfWBFHVVDDAS1mA78NCQHXP3JJcRTOF
5yBd6TyM+nqlO7cndhb++Wvq6AHRfmFTrv6PnNbqh6eK3D497AN0RxV1G5pt20IVYUfIbiI4Hu7n
BPQ1cml829PdgFWsuEGZbPTQVgWTgzYE4z2dww==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20080)
`pragma protect data_block
jSkiwqfso8ciPdcKIQm+6mEaAXaO31pZ3l/ibZeqv1R7nfIE46r5AxsWwL0eqR/yu3C64rb7kijj
0S0NzFNS6/Jffq/iysbDLIesZLdsywWg/iCXQnRHFGgkc2iQSgB5o3UlGmkFWYgYcLj8GLcrG/Pn
4EF4kx/Nigznco0F/OFJZwNE+paVkdVEj/oVEWOFO4kpwuXkHcQwjyMEfoGUxZd6DpaItrkgWGm0
VutzcXX/kMHngdTw/wpqW08XzcjX5VefJU+h5KSCbhuYCiJk9XV7T2YBKqm6DvnQK3CZILT9cBhs
Mjl1AV/Hgs1pS0omhNsKR/Hyy1/emwTsb0IORihT367lkpnY8l1IG/5apJnCqD538KDYwPXd6xvy
fHb1Mq9ek1nUuFtvvJscyV0m15VBOt2pnf1Ca22XbAnek1ZYPIs382CEatJ+X25fWtEulxh+EgIg
DZJ/ljgImbJFV3r3/DFy5zFsdpfuV//JH18u/rXxmelyT8ImoT+Xnty3rmBdth+dY3ILrb1+Ln9D
FcZI8fbygJ/lQQK9gHne+nTlZoL6KXxtG+V5c+R5MgkCobrZfclerxKF3He08JwTB+cUI1rD8Tvr
oU8KRqINg2qAsHDe7kTMzqTU8WYD+cxgVmnZsmQwUbd7ocLKvAj6gQsZ0hbrkI/YH688+ZoQCJPL
LIzrQYGcswLHi1jxyHoMSk3+dWz0U8dyG8qoLJhdK5m+uYOrS6LAfeB/hHT/qSJN3FOWM0Yq4z6B
zUhe0eNZyGSziqm5lCkbSuCDK/3u+SwYinVQ6Xvgwj8ecqhywQ7ykzWvYB8f7h6lKSckWhQOwdoA
hY3YNFIkJUcERE+SmGgNMzG+y43FPgnYzPc1DypgOaegEsoErUw5oMucRH130ePYUSZR5DwpPGzC
ac4Gpev6w3aKRjwvF0pZYksbkwe6vBEGAnaReJiJOu+a/qnPEXErTX/gAmuzrAUTZM22p4H9ovZA
U1tEoRaIyQQRLYkUejC87IggZ0ZKhwLif3gqY8AqCdKD7KtwISPtcM0wmMDbrD53xkd6Pc9Ft6ai
xYlrHLEh0P3D+KWRIHEbZFQgvk0JHnXOEdtKFjwng5iaeIg7Eg/9Dfrz5qtzCg88TTbAhhXWUAp/
UW6Jt1r5wkp7rKuMOyaBY0see4OC1DYID7D45K421PZ6jz0egsRqZ322rmZ0j3q9kLiwxCIZs9iy
qYoQ/bwOPM08pngnCF7AwN5LgPNxX4MWJHuDkb8M9pMd+v3IXD3GpXUtc+iBPFAi3SQCtIyxB37v
cEESrOVq8j/7mwBkv+tuvBdTp7lXuDo6bS2ZF5153HEknxPIkemHggDimOqnJRefRPKzXSucABi3
4IxJgHIfxJVWNx7ATxxj6ue9+3yBZv0A6M0GIYyJPSeIA8usS4VL38iYgeGQeCJ46AYQpA+fBbgk
iSj6ju/tGUE6cr0fvElshREeqKGggDHfbZem7M3NZ/CLVwy56Tg+Rc1rdevV0czykDRlBOIcCKvG
mEOurxa3qYcd/Ogbd/z6JDVVS4ewlAM2QzcL9ygU6a5I/pJOMfkXZnx7i9X4ZeHBu5lpUKGhAJ1f
u+WjJOE0pPtMv7uZWNdxYBGzFW7dMT5ikKUB2Dmfu8XKb+E6y+Z0FOqt2oNIMk014FD23cJx9E/1
S4xTbmk6lvvUUXkKPo57YCOEEd94zPgT966q6hTwzvMRQA2eOML5T+OZ/BdcnALb4svrP6q7VksP
MgEK4yT7Gb+ZzhVwg4wBmvPhQsHve2gzK0RoeRKcRTQt/mJ+2hGxXUpZ4poxJd+FBlXDsX2DBshE
5RYTR4EX0jBB9mArYnbWW+mLHLJ3s4aKqr9HS1PUpDaGeOBtbOK427F+lHt5/PrARRlisxMBQG4/
qtkNs/dW2Dywtffm4fSRpwCzLQP5b55TqAOuL5BOgTOyMZdmUHhto/UW3FSu7m5AttEvoctERaGA
lAWPwSRFQyeHKYZRKOKX+W7NgisVEnvpz2sMHKz/30/JDQaPeDQuCJyxgcuMcjlzX8F438/iBZim
eu1GGbjQmQXxc5tus3glLe3YgxB8LE6WWxdR4eNy3B2NTL21AwNadSelcnFUM70SNVptGqgB3QaA
9Xcs8WeE5YhUaCcbH74e77kAXz5NNggDCJrUH88e4bvezplNYv/udJIgDL5peLDmKoG+UnpDFWR4
ixInZcP9/99kgCiRF50ZNZLcm4cn0g6IsulMKKCU8ORYk7ulg/yvSconN43/M3aLnBszEF3WSgUV
3sijSsq/XYqdiIq0T+ZPrLKprpFF8U4EjyHO4LIBmJLtRtyim/KxizkCykeUOC9J4a962wHrx8am
UqacW06+M+OAAbx87tv1zEWAPRDa0uBwsZXMu2+eU1TxbGFPNDDc04fWgyQjcJG9cUg/zHyrMnZ+
tfCZKfnNo237NA3J6iuiXruMdfMTpxf02NFnKArqNDHrwuFbZ7/M5J7dqnLuGX84J+/WcnneYJXK
ohNswlUB1Am2imTqwUShbl7nyE5A6ZVjhs9XMr05q8HTc/HGXJCvSUDDHHLxZi8/IwtE6zIhYLow
Szgk5TsWZKXYEzFBTne7f5miF6xzhs/RtZJ6j+UmKEFZPkCjrPcMuT2cqOl3avEzkVmZf8xj5uFI
qd0ZQuyBQBT6onsMEc80NwNh6HvGdUczMbRegZhtoeaSPd2r85Lyd73geMYKm0oyZXH6Gv+W2IBN
vkxFhFZugFil11ckQL1QuLKYTwSnzfp3g/cZRKjavQy0eA89zW2Q04cZa/rITPxsbM2fvIJHfNJQ
S8rKGrQlWRRysV0mUP6vCfIUK4lHtP3iKY+72Pjq/H0VMXfHzoObmFF0x3A6y7U0QM09gb10jhSF
8hUt1Bae1bBz199ES3lB/warGaAuAKkO+tNf77mzDyRumsnki7FXIsKhhRuIiDqo9W6jsSIhy0LL
BW6OyuoxAon0c62tagbLk0QmIGHtdnGfvczONBQbb7d86PLJZY3/LiDBzB2+Jn3SHL6ThxvawIte
4utQJPAbzRmwv/QugN5vmEhY7YEiP0vjUlNLNVvEw0sVo52RikDV8WP9P35AQnbkm8aUr1P6y3p4
L+jCIc9qU1fruiClPnRENXc4srSbRyEtJM/DWo09QNxt24aqhHp+KmiQTH4ljvj12TvHckrfoXjj
H2gRsgE0ptzJQbcgHvVvhvyarAISAZw61gQ0Eq2Vmv2OpkhIOFrSmFd2HJOu6TmRznrM3MynBe8w
Jo1MKM0z5xDEIhyuQtfhCvRemDbxfOPKz6RO4cSd9Ss5+zdwn9xgQe4BRmS9BYW5T2/B2t/hWUhM
4DhiZX7hekvVMWXt6r4i52oKoH38KCaLEppoYdLWmhabrUxW3RDbGFlxbhcjjJ+9Ba0BbdyGgNkb
owwguB7CtDloKM56RQqFnfvPDujsu9R6dmTwR3ddXOqt+dnjUEbWzoG99IHnpukyPuW/s/F9a/gM
FkD3chnpzrVYYWuuZJI46AHJTfNEWK7Kn1NF8kXlPBZFm6lnDkyxWhS51tXM0mVfJobuLMq/q4tz
y/P//3sJK1HQdGEOO5bz/1bkdX4e02kF4mMF4xnFqqD9s/3vSeGoh26xsPvZgU047NNS9ZkVo5jF
KxdBgKRNbXNpSebxL7FfFpA87Mo7WP3jHgQnwOwIeKaTY+F+KkcKKRbQ3UQzTQsAF04cuNbSyoxY
PwWEVwG7e5qedj/A/AmK2765oSIArffRNBAhtRMFspF7gJJ3ml/tG1ftMq8fY7OArtP7tva1Sm5v
7vzztbg0HGfwOtKF24ukLuhFvr0JWaliPan2cIfujZezDP6KgAbh79216gV/yPSdafHioVb5+UOy
yi4NthNuGwDOZHn6tKdoMGODbb7tUKGfaoAOarKpZWGnYC+tr2e3aj4IKxPiNf8RZA15RnV6hx72
Q5dtgMCqgxwabWFSY7rguKmO+mGt8nNHZkdxyImEb7VlPs+P1aLXX9iBRucflL8jPXQQ1WJYM+PI
M9G8NWZ0VlIWH/+H7T+w3wrz8P9eBFZGW5MCUrgrad/wgfdw3iBD3vBT0IlTM8jSq+nHnn9Fwroq
ZlKWls3dm7a4a+MFg+yCWXvnKTnXGc/RcWZ7wgatuiPFgfj7lcfAcjWF65lSAWpB+9lbguU0eX0h
C5bC0eNKFjkmjdX/Kn9qAj6QLR9tL0Y/V3cbw3sBQm1qBkMMJ3Q5IMhbb0lY7Pn2OKSR9ewyBNXS
32Z8ehWQXyIne4ZBjf0Aw7iztvlBi5a2b++L/RqZ5hoUgKvNPgSVaOQcw1lb6Z5TNw+28pOLlcr1
GgZtEQ4sAU7Gh6IQKLpajb9UNRuqKdaPpSes1ilDXzSUbusNKULtOhB8Ulo+W7yeP0kTJKnxRo/X
jEiy0Bm3SMmBFIExZjnqAdQhoRB/SGZPfKY465Lpine5WAX09LzHMB7qSKzdqR1rIdknPvu/Z3Kn
i38MIYRbVzSZFZ3lL6k8hRCj5/E7HliML5j2h98VgbhFF/z1UD02ycsuhGf1M4i/EAppxTDKiYFG
JCTHmh5UsLvcoVHPefk9s7FRcRZ4IvAXz7NMYvP7pF2hUBn57xScRlSuP3oB3JiC3xofkwqCrAZV
dKSZqR55ZOprrvTmAdb2hgaWV5ETmi9Y7G2q+6vpcv+CsxcStiL9zecUTxBV8jCNnP22fg9u8NVT
R84Xwpa+KiclQ/4zAg6xc+8+Vk88Fa7f6q9W0Fpb/7oUuvgWZfnp4ZJxNRbbY1mOscJdrTdeiIbj
S/HvTpm/88TlLJKJhYnH21wQCFJw7mU8qM+PEQqCnB1sw80pybhsdZWWSi6cWcIAdfmv1rkM0mwR
LPVOjNdqfV4xFuDIk1Sg3u2ZQxu/xsk9TDFg9Pju8G8PPshT58WrB6n67wByZiySNSSEvSpVgcmt
xKmLEf5u6WgmGHu3sr7AbxI1ru9vTo+zLsZ8fH9Ka4dunC5IbOcGGyQ5r7sIUq56PZxM7iA67TtB
ySarwGiVdgeVRerbmCjhvXwgYgrFsp2rrD2Pxeganq7HJoQ4PPghxQGwnQXKpYNFmqPGBvdGJHxc
rrmSC6+dxAR2MGGiwjNnMWcPMc6fr4V00oOtimy5BN8xypt0WMzr6BI3yRgMpWrYaj5modO41DCR
ye4f5aB0fYQzktN6toV0soLczmP6IYpuMWhYQPiVrzGzsjhQUyVoueXrTK6HbaGOuzgWiL6WJlnJ
2t8Ek17dnMZrJxS0wadXr/n4TQEwJ5dKdYh43mI8gcyNfI0uKukpwE3eXCQ7Ywg5+K/Z+sRNkynp
mfTk4+6/vyRj+8fz1CTnPbxy9RYNbs57KJoyR747QAEbEWN0ULWyTSN2HPakXIx+ECcAh3uhY9Wc
jOoKUp3vn+EZauOQ6zNtLUCEhoMXnCbmEMAWWc974hICciDdeLghZ+1avLygwqxyaIrxCbtpPqPA
KpZ2Y+gYc+gtFKqsXc9paHBGodB4OnvKuRmQ6ZvDFfF+uU+xkhTbRwLV1up6iwGGM3gkyNaoqnPx
DH0DwZyw25xjdlIb4XLop7RNPUbxyHyqSvBvyHcJEvznKnumg98IDrcpa3bwSWjGJNjyqzT5THDv
1cLtRP2ujlLFlFdlnYngCVWBvHldrVXtX9legVu91IDOZbXLu87M4v+TMDzCZWqZ7dI7YNRBUok5
toqudA98bZ/B5VQOaxLIeXC129UZDnfF6nAAyUEQDvoO0T50cbRDs/cnMhK6BAP9WLztjJuKTJ4J
pX7zspK9CWvTENiH2RV1EGCv3HlaXd8u35Ocitec+1+6o3k2sF6tf/6CWUkaUOYvCm6r7ALsfSSk
X/KN0qaOwqxxtb1XzhxgU0i0UoBD1LIEpLKJWme+oJdS87InvHTf7meIHZfQY01STsTs2OMPdqIL
opgRjaPH3+B1pwMayhTXMYjmL8VuVUfZjBrs0BWx1mW93e93rsNqB3fFXGCFJi6SC6mG40jE1ovw
J67B1ElkO0IHKBi3eqxEF5tYY0+mJ0LFPZcUHCj0bPHLmITP4tA80NVVvotJC7AKMeNIW4dsIVZ+
gBVr7GfZGyJEfuATvMBS9z8By3CFQVX3xTQcapgmCXYruG5Sl2HOWgAoOm8Fl730nHXwLhF/F/W3
u96UdS4CEr4UodUIlJRbskhdiaPiDfHBDr80Ut+oMIVovjWyJB4YDY08SaQ2aXerwF+O4ZiE9j3i
KMvifh9YPg8BnvDkLjKdKb0GDHL346kS3fDTnY3D4+yrk6405A8trfqVbBKIX+TNdw+nJTWWItXl
CRpXaGFOfl07Dz96Xxcu2aqNSzO83rrpYsaT/qdP++puVpDfTVV1PF6AwTHWQFQzpwxbhcCrBDcf
oZdIkG/21hXDNHYETEQq+l5YQBmy4osV+to8FPOBUwLs+F+Ps/g+c30QypfTTdS/p8n6tGQur6+N
6RQ4G5Sf758LZV7b/IrgsSnTz3No+8pZdQ5tj6bpCv5zwuDjPYwGIkwTHu5UpoGQ6ffFgjvA+fSP
Oq3kw9qpNdQ+jYIwhaDV2MRBTs928wRgeP3UBMe9yciP3gngiaQ6oqh7fLeotifcnUJ41DBUFtLh
hQdtl8QyDd33vJCFyPk18zpsoSl+pOboeELTvduJ6s8d3rWt1JYiwZWsM3h3YmvDwoikt8d0xVbc
dJA6BILEOPLSywLRENuUYK5+3AiZtDLBdMpVc9dMUikiRA9m0qqOyndymYI0e7tOiq2IksltKbau
yt1VoYO0eoTkeayaPt/YT/SmBcqC1oryLKdMEqRrGPlZMJD1j+OsbYa3fGPm95nvIuDH2O0pDecP
hnRbTeMSRvbsIClmlIunPGtJ2L4x2zTkf6tE+aL7YSHa6T1pOQSt8BuENSMUVqa0YO4ld0FirAXs
t5rxgC9gxZAWMY+z+fKAcmZ9HjTgwb4jbcJXHeEkhcWHrqa0ibZ6oaTE1j50AJwhe85GRvrCBP//
s9bxgk4FUY0Ulp70n/uBeMNss01BVBtNL/FhCa9+gl0kQd3nWNVc8CCM/kJiItHtj4B6h0psbdfm
I4T0m3AfmH/ukRv6RAIsYXh9//+TcHjss7TUuWJmkn6bEOsW1mRzZ/+FO7OGbYlqN76OtuXk5pyP
MB5JJQytL3D8zr/pjGvYShdNXQT8dywAqgPCI9Xv+B4ppjypHfAFyQKkiUcvuTXXSDkdjgRKxa8K
eVZ3fK+vmC24YU5JWapLXwJgP5zLiLi4lx9P48X3Gsh7YBNz3Rs9/1wpz0tv/Nc0ShpGyxPAnYX9
WWTnDslyI7DpZPd2xmsf6l2HZUYLlzST4F6O+OIqJex2bB8gz2hH/qaH8t1dtJKwVwd1yYwHYjiG
GqiX4qaWciVmlrrjfgLvOaur4gMdp0S9MW+t7uAdiieLbMCr4SvCmwPF5tkQyhuzuxva3MLDwTvn
svbBJcoRw0WGqJauSMTQE0Df1h5VX9IF7YKApljy17NSbIIjoLQv68GWts808LacTtLxEggMBlVo
NbgcETkODqVOnc5oV1ZiJVE3YQLEu/T3fkuyEpnYcoWK9rhJbpaFNH52MB1vrWTxfB8ooshQJaMc
uiMigbtOFUkHkCWIdBmAYksW9TSbTlTv6YcrNxpJu9NNXSbn8biUeDQzDzmoeCkDuuzxji/XQKkM
p++798IgX4tMKHuy6RCbZyCenwEYCHvBmb3iOGYwVjtJ54difwOGBEhjQX2gp8+zb8LV2fgMMHk/
pvT+1TnY/sVFz8DWeNBL/k7ALxQ+lnq26XMuu/r2c7oM1S2gTpesG9n4Wzl14LITD3BHe000SVmh
EIudXTNJakU6GKViV6Iepii/CwJQVc2MxJ2Dj6lH40fm0S3HN+QsABt72AjeLnAtoEWbZUBkqhIu
jqZOZBdCbJnJjrzKXh6oMrhhsJLabIISeEpABIlaeOZASKRKGkPYVwDcN2lIrafDOyJ3+t+E3xJq
/yI7C8XKplyG/TCrVvXPWdG4z8th7VTHI6r8XLC87m1XXTEnvMC0GS/UOhkcsdxWx6pO3qd28WYm
cG0cGCTl+ZrQHRuPh2yQKfuorb9p9g+irsu/ITDC8fXVmja8CAjrythLclsi1ToC1G7f9+l4G10g
ZZBtNNU+mTeVmTdDUoSzkkCFdamy3mJnwVXjZAouqtfW3dNKwjTpAdFb01waY5/uin+hzPVU8biZ
356ra1maxEEJjAO5rfSmIoBJdqaJacdTcmTS7ldWi5tMtsBZKIY0j1cOrZ6QVFQbD2I0AUImsmp6
YBiBa7B2aSheH18SNoOErWmZ1wCPm5aZnbvZK5oG4VSQ2gEk4DtQX7mPg0uxRm0iH2Srf7Fzqd8s
OZcrZ2MUma8n4Z1k62Q39D1YZQ1SL53EEteI0QDKRvLcU3YRrKn9n4ibdsztQiCeDaEZm9Nj0cbP
EPzbqliAhxW3nInE4qKAw1A8zxrSlbAXXN0a1VzXcpPL2CH280zxls2uImYKx4p00wgJgCwwaL40
RQtyVA/GU8zLjcu7beHXylE0L5GpxPKFUrVPloex/K24AgtdlqW0tnO43fyzoC7FmFlSorEXZW9U
h/OuMrMkhkTTUqBHOXuLYTrsYtiu1eNPEvIgrMsyIkg8hfGt4qp3L19HMh1eCQNCfQhNXLKsk0bV
7Wew9I43WZKQQeBKDba766Gta9vzbQT3ihX5qVwEQ+jA6tE311evmOGQCY+C3biOLS9Bk2mu0VJS
weMVaQqH+Ys5sExzL11ZFG2e+vsPquqlRw7T28I59DBACUI3wskeZQOveWvnrBBsWqtvdS6VCEJO
rc2FOHHfPdVSE7nUHAs8ws4NoB4kVc4JQBI0I8pqASlBtoF1fqqKqTRaYzDXhG6zXfTaBAcGEMXf
MMyjluZHKHjGHM/39XTso0OScoYxYEMXC5tGRhDnTXcEw811TNZYBB5MgSq49PEjiFA9/qiUWnVG
WNmV7isjIxrdY7KV22EJdyXEDS08euqF09PbKCaU2qEr5rx/wC/qzFCr2OLua0gPvvjnTwfcqo7x
twcJfH6B/KsmjPqPtM2/VuHEnj0ZKbO5SAbeNYBwin+oX6Ni3gHK08eXPDPIpg7nnQ989t9aDU+8
4gDsMg001ftWmMY3FigLH8ar8+4ccE6vu5sC14ph9lOD5zanEZao2am/UnDvrn+O9TWszqP7SJFL
H9hrSiP+AGd8aGQQURZZINWnFVd3E7nyvazz+PH469NPExeBrac350oDMvmJt6ICQcFVPrvpMPYV
GBtgpS4rVmTFy/7M3e+HItPQ8DOkb5MhQbBmzcJkGCGksIPiZZ2gr11WYVmUcQU9pFZdjfzqymQN
DkfSe4/R+0N3oCr1yNQMUV9OZa165IKDa0kTswCsK376p9S5HZntWLYAq2abEjlpVsIeKIS5WaRu
vLmZLLtxNhlY0LzprI0oTL81r3xhiELlGGdtRB2pBRAw+3mpeCwTAmmUVjTfVDb9xSk3QF29ePZi
1XHQ41xb52U3K7JhJ6CEsuwguvUSsyYIMG9UUewJj8BTJSMJ13pzNHnXr0N5qwRqSzvMry3ZFpod
kmXerPK9u23xcZSxajKG/jcuPp3ySSbUpyZAo7hQ8MndlOiFmwf6WK8wxqUN4gsOe0cEdVtTfbGL
5isoixY2zdFYdKxuLSVcOO9xBU4yIncYPNvIOgBYHaZr5twaXQvgIHDjFBAV/6V+/Tys0ERGmHrd
29lUbpjQVJdGgYIo1H5yAPGaXqOvikASd98PzZHfnnLjOBgPVu62weR1pxWez4ZjYzwmHOp+GUcv
vREumG4hlYshmeo8CycSn1BVX+1QFkEpuBCc/+gaosAmJ1Pu3CUKxpsjSiTVzf7CnIhnTELXxUtR
vd3VxiQRR4GfR3R8f0Gld47sSEgFSzkZUgaoU2H1lWAxH2HusvuBvRCOdf5oq5UZnrDgsER6kqDQ
NtaJR7hZfaivUWkjdqzCY4PY0V+nZUGtwpIBlNZBbDe58HMOoh+Ev8qVDYHvlUhJSMc031joeurN
+v4k8YhqFkHr/qYyFK9/gmDfUazdsj0CO/5B+Ct/415T6duCrcRLWva/e8GmMeUL3eBpPj2ZZ0uX
ZJ63TJmqF4Jk5VW5GRFMEqxQVIT7jdBN+hUi+XRlrk+X4Y0VYGokQLeMljS5KB6ha0sdlwsceL50
Sa0HREAA5ec7yn6wiAPlmwAd8NHxHNBvVM/KL9oBODTDxOsBc36VrcIqBHY3TVoBdZgM8PSZVjnL
2m0wx1cnQja6OAgex3t3cUEIaAyNAzi+5sYM4n6cLN+n6RO1BSK2xlOsAlUYOyMSEAbU0pdkYlSW
bx6hnefzY3rG2iLOYF2RC70PbQcnFfd8DUypB4hzb96HiMpipMW9g/E9A/Ah2PpgxbrMQopxOOIF
iBMByvCmBCWDbiHBoEZaST23vczRlXDlP+P7hEwrWG/eG+yW07luOd1BdV10JqN0FPBVnsYkW50E
DlJT79HPGhrnagFaY7iAnqvaLCWuqSSWJDJunXxirerS6cXH6Pd5RczIUBrqC6IdJN+mjWMPbBs0
z/82GyaVbvBI3n09626oO9hk+uoEMJXC2H5/PR7tsaL1Tb8YcabZEaYxUOswTBMbPdd5f+KvHROm
bhhWQg6NVpw/NUTGaDeNYKkcBCA9q7VqB/0DVT5V1/59a2XcY62daHwSMStkC71HvMRgyfy0krPt
VNLGdoVrCNEs0uyT02zN9lfzrcSY/uh1ZPFeLbCM8h704Z5VBCsXuCYCIufBjKRhN8acsF9QjTe6
w2Ygp+qMbP5J5FdRPlR50hKFv/Z4mo2sd7vd5vnYLKOmQD2zisp31e5kTPoAHQ5i2GZ84ydI3zG4
8U/4oC1s9iysj0SO1tdp/PbFPlEUTRmuujwvGCrYmWNDedWhRduEva3RZ+61KjNfY2TkPF3jIIZt
wZwxjB6zA6HHoCpPdVLrhP/Ngyey9Zd6llJ6zJA6++XGOKDcs4RG4yRGwZpri4hLeEFFB0ecJ6dk
sAlHftqDNa5M+mMbopPkOBvjAtVGijbVh9tQSSOFn3Wq9+mpxHd8Qcyint4L27ZTNr2anp0vhMn9
/g6M5AY/ECxOWtP1WjM9SjUXiMa+3WuyuzfAu7yAMireUE2irfONyeH5txfzoC4HU/T8ouwLWcpp
HKw2Gq+UmtfRfxD+j2ZDDvcDxQtHZAxTojvZIcxCwdhxSP5dhIScT+hZ1xM6RuQfjgEZwTrLNO97
ZrDfdAu97wu7pK1hXK/xqQF1kYsufcFsC4oabC0UnnBo5qI6G8AwreeKEKprqYWQ6PmYoxkfgBAF
wpFLL2ClBEiq3lyLQkWgsDairmihOTtcaZ1RgFKcxYa2ZeZ4jWWEKKrORUlsGKllVgC1h2b6y0IB
cp7dzUsSXQC4VTz0FkovfwiYwtO2feOUXDT7wTgzWmXu74bFHc+eXzhKJS1Ck4+4041vwAmnLfyO
+HJirmP/pzIK7Ct+wt0y3GYOfDfq7mCZurEyu5e78svaMpzLt840KCiwE2fUWQ4ad+2LlllzDQSK
8vDAWB1Z2Hd0/0VxRd4lV7IuDyHKAAc7ZJDqkWgT3nHUPVzw5f9c+3LVARrMxO/Vz0eRqf+Bni5a
4kzh44qRnSrsed8H6B41o4JdFqPp3jpHUZwG/BrWHNIEZKKHCkMCdp80Z7S126/6btHYu1bxDYUh
cLrHNTtL7FzSGroxgTrON81wpcFpFDr88g2BHkXSAyH+9IcfHIkCq+FWyGYFLGD2IyV+wP9BZCZm
643dTH9FQOrihjX3Pmk2VxGsqXq8qeZ6nvGmPmtDsrT/hOSDQib1pNtrT+jydKMDqG2vfFYqs5Pk
W1iweq4HXbgwYwss4wIRVeLuKsclpXjZtywScPij+gOxe6JcCk1tuB2+8szI7L6m7HJSMW1Nx79M
IFnlMI8Ok3plkaklaXhswv+cmpgt2fRukEyXU9dBkAeFyckXof8NYydNw7CALWLn2eAPU1BdA1zd
3G8URtNjWc+7MStqMDgnUXlp7/YqWjC1NsakIymptH6QkH4xCxXb8+7RVpRueiqTBpacR6CTzkqH
hDSwvXE6esOmnJ2+ozOjLAzZv+IPOdFiHuOm3oyxFyMrXfrJa+AtWkPF5J0ywdxBirlsDdcTQ6N/
yHvhqUz4PZ2d8m9CcYIDhYdXvSQmjNgq5H9F/wgXSUvxPoTqb78KG2eoZVJJXDTLoECjlGBJsUAO
MUedWHKga1LWxpD9SGe2HnW+t9DpLJJqdknMwvHoM+RyiKiIjgj1yFZMT4VFP++k3yk/83bl1suS
267DLOr3kOFaqo3z7DK51zLDXfpWkbXnKhxsh5q33BtPyluLyhOv3nxnQiSV0DiuQyErdSRvim0r
kDzy8VmhKFWNgHfFob0mGNCUUHfV1UkE612BksRfoo6dQ3ncNSkTZnOaQgK5esdZIRla+Wh25N46
iv9hE3yHXYW2FxBB+2sk50kXDqViAlHFF163pa+GI+aYfmjz26Z2di9ICWMDDmwh/lo2FzDj77cQ
KDqtxQveRLV2dpYJ2PL0Bk+D85eVc24M6JItA6x1miSdysJ9JYALMrpo2C8h0zIeUbWdx6AE1ESn
2j5lWWDd0Ww6bB9Y2QJdaX09APev+ePwCTL0NFPa/iLRwvliu9hCG3GB1Oz6wull8sa7WE1qma9g
xqoqlTQKW15FvfHKDMYtWeNoE8itwGhyDwqX+0oQjl+oFeZd9QcAh5O22aH2M8WAiBMF2gVxeTTJ
T7Iwr4D6SDLkEfjYBVKaYWuaj5GckYImHMr+QwU25pQlnhp55Kr2yW/ZNqd5Pq+MXTjugy+2Y2FF
GubtVUP6dwhtEzDEwtS5znVGIHcFw6NX5FLApGzg0noWhBmEAtI8/aricEUFBkMMZaBVCSP3w+Nz
yD5bMzg+kdpUAZzDQhj5Domx/N4nxbt5LJ1YqBhdphdp0HlrWYQOSYRNC2/nqbblFzHOMEcAApb4
osbvDXRcaRvayAUWzw7PKFj6/BGOyV7POuzCA+sTMmaj/xHELOHuMMXIW+wwUUClhclttaWPgnPy
esUOwhD09grGh/cpFTQad0K0LbEF5Vh80tbYa1sJ0DizWyLBO2GKlg7MWQBuvZgDM6H30IdG2SRG
fz8p+HAJFb4BG/ybHowN6vF74f1RXf4ZYl5cAebLt9OU72W+Rnswv1GrZKKJU2+SKtCH24gjcAqs
BDmg4vv95PPynfQEXr6S/O/71M8d3rb02keWNQxhxNv4OND+QpjUrfIJkiV/LpdB2yTc3884FjgM
hszLHBjjDTAUVPXR5wVy2zb3YgvgkX7g2WMK5WUqWOySBCYut3ebEKzlC++YRlcOAy2H3Ki55azr
5RR0yfW0XHORJH/kfyn0XZNXZiprPI98y98hFkXfkLrNzhqvCSd0SS6A40WQZXWPMom/sXNifIm3
9pwBBzRWeJWKddvICblQbskmLXJOnBph5bLDzTlKzKrbw1Xe84PuxP5XxCGROT//0ZvdgDvOx3/K
jFBxXxfxR8dtlGkcbLWzoiT9d6QXvtoVOJSDe2rponsFW6fJhVrIQoMaWOhYvYekMuFaOxofbMcM
9JqcEKNBi2mAgBYkUrIGihmFISdTMTldGnmbQKnQLDlXYQqH4+GNKq/pme5w8OBVTfAge1dyVd3+
rOjwb2TP6x5tB7yGqL7epZHVN02j+1tocPZYJUDYJ11UlRG8XdsQT84d3rQwZVggfEemLS4kMgrx
ybTDaZZVMBRM8pC+4btPZFcJ5nsCgmLmGjGNfpUK5xcuXzlIQRBzRCd6lHlJ4JlZnGcDyWBmlrPU
oM7G4gTry34DeYu9E0FXtxvi5kihA+FACsJBCH5bicyPUMEz9WvHhrFkiRCOaq2OUUUy72lG4zcA
oSzdyfeQWJ+iSHgWiZUvHBQr9Mn+EEygq88LItWvBffygITArmrlHlvo7zGPNXRNuISQlVWdQ+Az
4+nw6C+xoU5elTcC6jFoNUKfw140iD2HsJsWR8rB/uZK8xLTvRp0R/qU33p76ifgO28YyamGlb5S
rFud1yQojR4pbfT/inGQDbqhEmO16wuZkz6cPoYpOIg4ea7lm/2VrhMlfJ/1Y9qLRbwjhUc0338Y
SagBzTE2G/utAvpxKQNipWYKxkzJQCO9HBNeqRetwsMDwEMphv9qfgrEy0+Vkvroil8ykFE52zYV
DYUyEIoTVkwofQ+Qa4Fjj/9brLbL4/wYXz8KKvkG/OUKcTy1z3qUXryS3NbGN9hHAe2nxyuKh2W4
PL2McQ6qsRRml1gDG3/1QNWXO+i1wZMeWPFZm6swrOBTjItncX07dL4EcAKDPdURlwD4DsBIA2Ce
irUw3g0Yw40fIW6knlHtfJEE/P4oAXdHaHF8cCEUgDTGD437XThL/bFa2b+xla+c5+66znvUs3l5
I1HmH+ohyQ3yQ4Xsb1x+90sxaQZSCbQgh2Pwuf+/fFTO4vMXVqWDCac/9GDLPn9jGp2DYWRHlxrQ
DrdB7VdZvLx6HC2iUWOUM798P3JJdd2VmjzzibghkUnvI1ZA1zHHvL8EpnEu5jYwbHnMlvD2BRwB
CtjknX1MOjYwzJ7hD2vaDfOB3nLHr7Z61k2aEf8rcwP4wDug05ib+kiUw3DVMQyqIyYn+B7oUoi8
h5Hc18gJe7YN3TgLbS3Aeeg8b1IFUNjdkn/1DCXx/YbKzREIZtXczIif4pqbXru2yNHzm0g8lskA
Fg8m0/F29L4YtuWkKIe6xLarhZ3GYfrbHk2rOzgCSMOAMRkei6ggp1eCZxYkKspnZ9PKf4n7iULL
k1LjimOIf1Jyz8aGz+0r9B47fsmY1bjEX/fvZEEBhi/uJTDON8Z8IY3+Thl2NV9DPz99aj+1Sv8G
kqPxppi9i3zOH1fDD5hcQHoAXaoAS8zJx6jDhYa9yvrTnbXL48nwGYYVr8S4obS4UsLCCt3IKL6B
cQeM8+hxftLOdrC36lMg5vQwbVJnTUfnKw9POFkWExWlwVb6gT7oydkT4HHEEbjxb8ifNoy2iPS4
wai8roZKlqWleWQFQnsICPdqpzaWzc17jR+qV51beazzUkQroZqk8ldx8hFkqB35Mg8z/LXASsLt
AOpU7DjXruOlOSHGVB9OffmOURseTwkFdGsZgQSMdxjRilE9sJ/5p8x5hLc+jHNBLclBji0JkIHj
KwJh0WHJAr6trOya4soR/JRHw12uzNtQbCbWTyVJjyBU8kLg7jSPvgsz56EkC6JWLUMI6TbdYQhj
LN2EEsGqya04kn2JdzAg4cqSTamURq5oR0SzzQs5WEcm/7iy+2cK/hQb/R845dn3BzSXDkVEP8cQ
DIbcOqVXjvnki/EN2NWy5qNQLujL1YWjUEQiSIJY4jZHOo6CItyY9dgGxjwqKHD3Miqc6myyXL/P
HPgauiGw311QoxKn8VxZRKt7tCRLJKMnj4MtVEio3CQc8SShNDUcMxm/7ulL/RvMTi1n9S413Qzb
RLPeOTUy4jYnq8oDfGCvIkcL4LMVfVwwi8Qf0o4t6n6MA9AM124vs5i/nhT8XmzzkxJIcGKhdsvB
IkckqSAptpVXSwG9yR/ITiNz3GNusUHlqmLwr3vzjIXHZNa1UpLaSwSYdyN9EQ6EYZR5GphZj+rE
S8aFVyOAziG4l2xujJPv3H11qFf6Q2H9SZJ9979uRjFKk/7aIhCXSSCfkZRMRmPoTn3vuKpUV9qQ
N4/Nblgkbz8yjAvZRR83UDrDASDBpbSPegQuFCHhDSa7q3MGFOJJyX/iwF4P7DTR8tE6X1OIDWGh
pUhw5nohElqNzciYcMMsK/H8wIXBQGX3uDTVaIahxLNP/D8Djjhp5pzb4QKWHxxIIwjnoGwRrIaO
P6pV7yyNOVrT9V4jAFmuuLSeKqpeYb06c61vscrimOeA3ZsLHH7uKIKxAi1ySKD2pfacAT1xmyA9
WdaM4R3eS7u9osLHtrp2T4e7xh6LAeKJojZ3r32IBpGZgFnBeslPxobF9CxquYPLft7IrI+eC4ym
3d4aytBxrbbqdKe2SAVd/fsP2wbLZ/haPpqNiRLrqVmBwv9H0Pv+NaJvE3p28VmHzpFXHp6mhqWP
cEX9fZQJFQH2JF2T7x/u0dPtileSrfeJ5J4wruxX71cYJjEjSVMKN/EdEWQjMY9PJuEybinDHtPo
OQsEkRJqPSLFQ9fsFHF1AFp3Nzs8o5gPF8rAIE+RQZisg+6hsXBHtMZv27lqEbrcTtbLUFHJaNO8
OgBx36W+MB0PGKTQyQ50NKmATZ3S4nUMiFTJ1Ee8eApC0bRf8FpX+H6VDj7/dcDsWAjRVv1UlB5N
5RSpWHvGI4akxkLF7ueQEfOYrDw3X5t/US3DidUIVxr5/lVUd5h0WRdBRw3K1ROSMmrTsS1Ugs91
9qaNesSp19tcXRwLjFTCibUBsG/m9xP0nPjFYtTZMzhXKVdV1Io5wHc91GNdnyCGyO7wd14aBLAR
aPEi4GtVAS+mIlqT0a62CRDJKFhzK5kK0kZw3YDssWzRQgXCG1lleQ9wZVR05JsZ5CvkPnsL4fMV
eA2nTwaT87gsa8BA5G1KhzpecSvr27Lu8fQfN63w3vCK79Rqw3ojq9+AC8VslYG+fc5W1o8foW9q
y2iCzbLqkQEb5o0o5s3ePvqOPtsl0LMjSCNzYzWp4fHn5b9ZY8eyQgjm8isqsgDq9NOjXONvvmo1
1lbMlJti0NOENTXMDN5xkI3bgJyI1u3Ha8hq6GpNCyX1F3PbQhp681QC8aSyE79FmTwJRa45w2mM
4WwlXHvR5/7Jenb95ygVDH6+otxpOMTixyquSYR4DO2l/bPdemGPm5T7beOv9H9J2zBz2u+AENjR
uk1ajqadORTApJYFGNM4GaLvTIXQzNfjQRgPLqOFefifhCWTdwvD4BGHYdEj2XTQzZkek2TIa4Bm
IclEGwBe3dZxCAAl39S9ZDvnG/kDPULW9kR87aovxWGpgrcP9WmsSRwlASrTGa17UXUMB8ZcNNTj
BJrnj5TwX059oPyWXkZjdifBRBkEodt3wMRFw33Z38rohB5dIPN2GO3cot/rlAEG1UA+UMQiNXw6
bKPXwI9HhnorWTYfqmpqfEx4a9FGtWAjYmCmlkagv6yJq6/RFQyJKetZbG4E3v5cF9v8/J08oF8j
Gm4WuPQjBWodlpi9paRP0+ModtNy1fZI0p3x/xwG764PXoVzjbDm7Hcr2+p2MCVekSrJ7Iers7tB
NJYKXpy0kmeUN3GTAYzS9lzoPrrkA4FISeWKzQXF0O4kTkYdwW2i+HB8aQg7hxQxORBgcbRVTNYS
GoI7T+h+1VSuNPp8hRex4ogJF2XcnZucrvRncBUvamIAUekHfK2N6erIkBBxR6RNZYa/Yjwhqk6A
VwCEkcOZmlDmelZWP7ULlj0hnRAeuuNFa+WqKgbOwkyKScm1K7SbwiPINQMtDamreegfAo9vCP+Z
V/mnRsFw+0qIJDxCs4kahRwB5NnbBwS1a66LuYGO0tVjxoAEJuSekElAg7Akkn7EzyrmC4YjnxHa
NfZ5SVsvcrmunMXzQNXP5GGKuvFcyc8SdC7QR3RZLI6oeQmRPpdOodg3Axn2LZzM8My7MGvAHHqE
JsCLe46gUaWYjYDQWIo/pQNJkSIlPG8gvNcwN41FiXi2HTvNy/2ElUuzN7sQBENZ+LXIhvFRGu8y
uQasgExH8IShQ2sbjguSzr7nAzVuskMjnw2JWbl2B4VtUSXlxoNoYfbGuN1B50k9Sks5t61DroEv
ta1kilJDg2HOhQKlO0kTJ+jyLHOHwCBbCKhVlMf8LB18ODBuuFtkPCWI4z/4/lOWgqCEkPH1m3o1
mRujQJiqjfDLRovW11XEvYVOeg2WUSEV5op9hLPEfJbAXftLR+NnG6cmtfuh/r5koxJdjubgDZX4
FOuAqhesy7wt19ymfhyCyI+/Lqtis4nGXFR7HZe7hKU+89hQ0J7xjTrT6w1qU6l2i4Wz5b8WZ4Ua
6dRK9rQq4tEK1PmQUOColbsGHDEA1Ww84GYmwvmXFTaHSfIkJxigAJg44W2ikq1tmoIThZQYNnyM
qHT1LMyKJ1xHlnpsTP6Tp6956rDOJ94LD+k1UKAEEShNBbHX1jdhCYt7g0eO29hzQaB0FvICY5K/
B6/vG25GbPVh4OiR0tI4G+1WoZ7McHqX2MMzpap8Pi7MG+9UysdGR5M8Tdn7vB1ZuILtlV6EeAhY
yhx3H6lOFJbQOLgoPrcTDAVjDHpufzi85lVLuOfz1tDodUL6f+59jXAFNsEALinuyD5wVKLFNnPO
0dR0Zkd48Qc7W0AE7pGUM52nmtaQJQn3prFV/DJU6kGohoMF5cx941iSh470I1Q6Bw/0aymCaQtL
ivbHbq8u1vZ0TS4Wi6idwUDIYk4e9W3242isLJWNjkmMoO0VS/gco5l8PJFM9mAjoqvdBFlSpnVZ
RXG9Hs8HBvkqhtRb/aCbAFviBhBeNbJ+fohs+jmirSMKfqir6tOqalt8aVem0ssoTAByGhnqzpm2
b4gUMOnLFSDytuEhVxiBgZNfdE93JlAp3915kPuSxVHfI7C2slP0btxIrHylbYxdMR1Ivhp2zo3A
gYxJGavDLdAlmk41+p4GcVXoTmm/qpqauk1hL8mrOGf/LYNfDGnyP/5ZO2HGSy72mZB+lzrgoXyi
Eltm2E3Opg8CRkEnGCGa0DoT4fmGOnhQVwNG0JjAaUbT3k/klT2R/Ivq6aXvwIk5XxPL3Ia1A7tn
mz1WAzhWzrk/FP6yNMByOBHaywlydmz6fZVHh/oGrRUnJRPLxYp17LgJjzxkRw7jk1hD8dK4z9hu
sJn9bOLvR3q0GoOSnedGIDtSe7JyjnNMVwSFBB/mUIjVALspAoeu5f4syjYrojQDiG26n4602PZP
Up9jYauslqLrOB1HQQx6m7+EhvPk72EFCSR8J/Cf0/4WP/copXPkKeolqg58FC8ZAhkDEY4vavRZ
uMt+T4F4HPqiWMNcN8W0jGFbBNoFZI2/qzhvihrIsiBqusoShD44lA8Wy+UVOoOvNo4CwPEFI+F8
IrxK84/1zVDaZBEYyomWSXOV4lJwlPeiKIB8Vvez/0X+lFlAr0p71j1FShOr3ZiRZmfTvrq7D9Ol
hsM5Wzf6xU5ac9VMz6DkSobwuKVSNfhBAJMbLSwDWuqn4ogDbIIF81fqiJeoWDcsRxaJ8HA9E6E4
Vt9mVHLpugFZywMIgHslH2MT1JUnOFrzRIN01KFM1NgaT619JnutmsyYdpbpgfscpk/NlbBbzy4/
Cr+8/ua1vCTVOOVCUkJbd0BN6846gsTehST+IYNvXgfvP0OTK5oChbn5QWpArUcu3C4lK/82++gK
IwVaYPoqW/KiKfqE69apRqmQq+aK6boMlKV45ecVpQ2aJyQb0nR6PEQMt8HbsAxr/XRs4/AGCy2y
ARz/+K1soPDOLUnLScqXmNd3JKb4ekusD0UtFU5uIFicNKj4++b7w/XaAILPlSbsrNNQ4Q1JTTgA
ugwc5xGVhWLOV0h45kJDbjjlNcR8ytCprwwPpXKkO5dAc6KcQyllemMJhAlTt75ixq5lctOvjbse
Qdxuux+FlPeWlBrSx1fSmOtmX75mHuKORIfV5wzlokehRZaHXMlkk+IXj5ITAxYXu0IwqRUyAyGN
FtfB54nPCEYTsbDbg+GL4y7TMKkvgwHgEQNhD7lUb8L5FOXZxTrna/FBmUgnUjdeQUvyEHqYPW7d
76L4tK/+h9YygcL0mQHcwzv10N/7BlO/yygtb+oYIUlDfAgsLsB15z5aUZKTvXyW9603s0a6XjjP
MMevBdHodgHXJv7OABkFeEQd1jetGZMBub1V2hbp7Mdqo1yYC1XtCjGq+Oj0Y8CZ0kq9wG/cw9+G
lWWQAUbpmESg6GKWSR3FxDsRhSSLRrMvVPSjN5ad2Kq7yijxgWyuzeamKSgVD5nfSQ5EBJAohnam
z67CfsClUXdLoyu4OIoLj5lCCmp11y08ue5oCI55M9QbYrnXRYfe99ScMFgiVpcjCbINmFm4V3RB
a0QMsRv+XOOZ0YTBvECQwLDa0WCjOzXiVfGmRRQ6OsqdsxYQJpUtDg0syqI/36i8RA83k0MvpYUH
Q007B4g6Bs5wl3Mx7C/KqxojOpaN/gnGQh4qfMHcgB9zdHLubSzHvVImuDS5cPGgBHe5lzfEioq8
duGw013ET/g7o6PtwBBX3SjO8RhSnrH1i4uqsEualPoeK4pEzelqIDxDPDJelfZwLeEunTjyBMLz
IyN4am49zWwlEtq1MV+5XSkm1irWwAZwKwIjrQ4O9k1Qe1S8j5xPV8AnOSr+mNUKOuj+xm3gfQH9
daZnXIuz6tynfuKP2EYpdqCH5ZegHuvl+Hbq9M+x9whKX3VS8oAImI23hMjDD6qPm0mLkiEq+UZ0
wtK9/0bbGKaYM5/V/PjozFh/SE8Cbky8ynYAzJmecO2auJlh6vFIBdH0NzRpWFsVtmW4+PW0p16C
xru/5TjhTIXh8+0WttKB6+f6xQGEWkBNHrUPGG/MPwSFrIIHxtKpHBOS7pCUhxp+Lcdj+TILC7F6
y5dGXFFhqubc6H9oLbbXjgkFzInQ3+bbJKdveA+RnCIUtfaE2VUK7/OmxaQ+5DiBP3GY9SC/2ubk
UAuAJe5fbPPoTbJzZaL5UjVkf6aSbLiM9X2LI8bV1uufPQxAb15+vV+MPwuXyojcuun85SYARAqf
7pDnm/obT/A4la0Qk3c1MzyMIBE3sGgcqbcZomJfvnwWWlmQ1uaxyp5alrnih3Yelz+cS4w8yxjo
Jd7TskkwOFLRjrgaOkuOtBcLVUd7zHBzLSzIhmG6YvJzmhp1E8UYHmjT7Qfn8tSXccnB/pqRejzn
VaXgn3DAirnHNqXEFbd3SciUHeqTo21DjYS5zVFERtFSBHCKNaetbXBI9TgsCMFyG2doCxPwopLR
TH8tFEOrfBVBG/0/KT9G958mYPPrbJXjSuuLaViqiCbflx6UgpI3Liyef9WVv2V/FHWRKE62BIIo
+HiqT+KdO9hmsiyRs1idN/v16SfEBLVqzuFBPv7ZPCROpWckzDQMJOTRQfizfWMDrln+9ztOKwAb
oazh1Gcjj4I/G97FSrD3wDZNx+ZGZuqCvw66awC2AEZKV1NsuuYOhMCPkh92Z2NYau5HzQ/XqlEQ
YMGkgLPuAQeM7VPgjRHqzDtRuuMeIU7PSqcMBCGk9cctvXBhl4kSj6yG6SW2iBCtg720FAImsMIT
xZrxAKAyGzHGq6WaCQcN04L6Ditgil9fRFyL9mTTRVyEgwieHML61Y3wv9NtbChagVurTI1F+8Vu
XT3mMwKCIGwrDjZg9qLrAda9JdsOIND3ZlHeHqks54q7SfrD2SrwzLuWB44QmyJFwkP7cMg5o4b3
ZJl76z8xxWmTkrEP61tFG8timm1lXDeKoun+6uj7HEROousyFMO6MI48uT2LZFQDUoNjps6RXouH
72204aZroxSyjAO/4QvbkNFBmfzUhkM0qJ2HvcMa9wr6SzvATinPBniYd/pnX5rkqnxtc79QeZ43
Yl1hGEU/f7jiOdqPgFetdIGKc5DmnhrtToeDZL8BITaYmfSrocS1FxnPLnDhXJWnqgeWQvYIRuyE
BOj1jpDmZxgjsiwJ2ldY2thhDkVuQZMRjLxBNuIV5z+pqOzxcRFcXMFAi0iPG2D9zK07sZHOyL6U
Eg5A8K6Gus7xb9Dp65WzDXxgAS02wC/qY97ho35brx8iyNeqsWzcepeAM26oO++C+YW4MRtmXYSR
H2FlPb/TP+GuLKm5TQWzWJYA3ZR7cNPZM81R0cb8Kr1RoBL0S2vBHK3jsv1c+LHfYrK9pWZpG7ju
C15zltqLinyyfufsLKwSweLAcFycQJ/M5vEwpka49iBlHtQwEmFQk99WY7VJxXVeKSmqI8DZSTUy
/AuCSgkhLXVsdFLf4zugBmT3Kwh4qdk6Zn5wyMBJVk8Wb+mP+O2yDDgpS2DMb1ZayIjoDPKq7YqM
gTto8TorLzwdV0QIKCOUp21LcmzGWHMIPm9qnOk1w3FwXAnbdwWTV0w9Y4AY7R9x7BsprUC0nGJ4
z7qcmyBQ0Y7GOxVvW50nl2ufY+qM2rzqskpxgfB7RkDZJDa70FaIjpwG5xAOOovUdaP9j7yOxHGu
NYAdG90T8VfyBQetEEUjFrBWaO91JNYW9kjIqPYmzgrpCgd1iNgjLljfZ5L/bVYqcG1kZHoKLCJx
c71vLDt+C1slZHFdqZorbV3i+MRPiIQdjqULwfWjodKu5EFPL0BKA6a7ceRFl+LTVENDmmZf8yc2
jrOrwxFjC55RvsK2+QsulX5sMMpD0fuGj/8zCbTUfBvi8WMw+zBCeTtv1WDaHzk/f7tYa/TcAk9/
FUjPJ//TM8t6W+y8psfeGbx3B7a/FT1J7wGh8EzBrnhJ19DgGompMMhhPGVIqTW0ZQHuH5TM7Akb
RD7mmRac5hUWg8kLjMhIOduz+iwNXE9to0Orh6+MUPek/C23xC+7omv6pjNm2wWbYAeAaMIAf7bE
efKmPRLeNGj7fQZW0lZTD6FUNYyMDuUHPO9dbHtQ1O70LQreTowC9KlrVo6jkZVOl+Yvuv1X3oNp
LKUSR1rVyC5i3Z6NvHOMQx/v6ebFZ9DSJIPTmFGs0bHFiPICLAioSXFcsUq90aXt+RVYj93lfSpi
E2YiddytnHTHk/tly06V+Cj1PmENfcWlbcw/8esTZcUptR9vg/Cozab6U7z187opNdNAcWsGpElo
XOs8WMBiquc8KW9je93E/NuhmE+FvRhBau4SDlRX3Mn3mS7DEz6bH6359JZOL5uHfikdv/sWt+D4
3pynj9NzGn7V8X78MKmI2ASE2f/71MELJGVuKeTVV844U0DerEYVS2juZxCKm/fNIWYtyGHTskLB
THRazfztTH8i1yxUUWVtfKklNYauCk8TnP0mFWcYWufOAINSeXuv6TuFCwVfihj220YsscmUv9OV
igfaUKPbsN55bx4Dhk32EYpyPXtVrBFx7crjFdoMkXH0ulyL3969xjwyOtvEbk0usL/bVu86eo9I
wnbbkjoM6L9tleC8oat0xwV9A8cM/zqGId6/MopbXgBGQylO7JN0H50K74IS3YWoA9ah6d8oSMWG
wnkkSV0HLImrWEnFacNb0DGPh/Kl5I/3L1BcFczVmlhBihtAKB5gQPWlQMbKP57G4jUqDePrEtpz
HNahV7Gkp/6KNIfqJtMaEClPq6wF+DOM943eBVZyRohiOerQF8EpMB6CK9gWNQtxN50Bool1WsH9
jxRFH36UCZUPRwzwf2RHoru4oTivopsDF2QSXAM5f528g4jLyRjaZYT/u1sT1o4l6TM0W/MWooAl
gPh+oeWmOAZOhfQpf8bFubzVxW+Mnr4UisbV/FScDxwfDF1MO0uBktI3fSIYZpW2wnkgBjVzAsyq
eINiuqvIWW0nUa9VdWavpFJT4Y2Fp275Z3lCEgR5HPT8XnmR9dSfd/CeEmJIEUBdEHBCCdBIU7zZ
p0SW+7VWF8VFp0aCCCsgUnPWUS2Re4tPKtQMp1kaqI3pWOFtxFG8ZP7YGrvIzJNn+v86T6WAjdJ8
/67E7vUH9wjB+oPnctp+vanfosBgxNokmoVaM10/y8SQSmkhsrMuSGXCAb0xNZFBf8l0AZMXLG8v
IgL8EM2yJfacXle5lvzk9UqWizCwPAkRLLw+CtZRxFMDH0nFhTEGYECWYjd6KmdoC2qOmhgbs1T0
3vpyR4K7physas2PPqS0NgRSP9AccpzAVLR4AhNLtv+EpbT4+32iixoEZr+qTHazJhMWxVymhXGH
JlHigJG6xzwcYdAYq5Q9u+6PxMA/p4iOPRAa0Kd202YP2ClmV7Vw5IbMvbxCTb9vWuvuMAvX+pYn
wX4aQaz/hlWorh4eV9VGg6gM5trtNY0BV6tzruk9sFM511elo6DfLMZ9po9E+W9tvPNYPVqU4cS1
JPFOqpKOdI7o/qNe//Mc03A5u0JO+I75QFXnt63x6xANzweVWhWIF8pv0nWMCZ4hB5TFybYT1sTC
SPoFwhIq0uH4hn2R+VtLycEbe84IcJTDej641yYxhfLMtOHAo/fMdYCOV0G50cvpf+0dTJ7fdMjX
e1t/JVaRqIbRoPKKT21oFUvPnNi0VOHhMTzm/4J4xnSMJEh8fJBQWkxUZCEb1smeHbV4RZ/4wanW
j77+iQpoNu9a3sgw1+z/27vshIBV6k87Gn1/zXZvO48St8gPI0ZOOrdLpRR0aC69iHnIWoKJV/DG
fUHwdieZ4QYPs112jelCmUks2a2bpL6nB+4FCSkMvf12x4eIPz4x2MLFdb5RzueTNuQHI3wAE//6
h8Qnno2nJ13XQC/vGnfbVopwr6kIfYDJI0d2dRM9ltSA08VMQRn0E2XfzoSph3hmeDkVAGLkA1iI
pWlCX4xjw354TkSRegZUgkV/ZD6IhiKf7duQ4a1nOHsHrTab+nyLeHBoJUaGsZaFJG2Z4EGE9z6x
Xt1mz6bUkR6yIf2yZ882kaMLjPpEMkABFYuCetySaY2VKSLE303OOiru/EswB07O0CC/6p49zrzB
nRqiYimFrlV06n5Cbo5fVGL4u+cUgOReQ0xseoES/i+igPZFC4nL8gNMjVwoCQrkRTmA8q4rl/d6
b5EwrkDYeXPODpAnXvK1P/GqqBlqIM2mjTStZ1Deo5kmX/Ta8iHGqlcyAkYGvikxd/tuoEhNEfUE
4A9yXubv6f297jXTQN6HojVb00plBBEZy/iZCDQRY+U80UoUf9t/HugW6r9lMta3IjAi8AQPcDAx
mS/D4GgABVzXAFCBj/WUf5+RiFLMJzuYE3M1gDOFuG0V1a+awQsjl8bUqjcU2Z8/UI5zwCc+KV9U
86brdbgVc/WazqZeTAmGSQk9MECzmD++UWwjtSVZlhZLelkvFEm5wv4xjp42eCExVbd7cny9OwZT
MLSe6+N62IlVWq/9RPXi+W1JkoKjBd8C3bneB2rOCBE6fJrus+iQ+FibVCj+haHUZ7BgouEgGIdU
Ev2HkMa7kgt1zluh+3TA+ivl41HOVkU0mVOSej6AY8F+E87Q10gF9M9RM1jIZ2C6FbXbIoXDgWmK
tad2H635hQHRfimiIW0INx4XE3YUPzcUTQGQhzjyX7BHgfah7MNIuNWWbW7ibphhk75OUAHSeAUj
ztWLiKUqD6mEiNZewfKivanZw45QCfKrFd/bym3/ZEdvzBJXgayWR2MO8ks3v+zW7aCdo6nawBYT
2seUalvixjNmEIF5YlzOyxIF1dC7ZB3uoqIaTfxzMNk8LWXINS5JKvuRfiLeUboPsmCNlFNC655P
by6oJ3d6vf6mmrvtb+E89uxXPalF3cNq1GGoGhdIJ/lbsBWoK007q2EfyyT3Cz185c3ht7DyiM8V
1pAH/il5LtnrUhuU2o6G57+bzq0nX8emD2EWz1/rK5C00yFF/U9A3Ak2D49zZbOhNY0/miwkhkue
ORVlQ0TeE2orIdiHQ/RDJ2G3OUiEY3gOXMSswmfl/kZKgFpLkyfTTagJl6JDmn3o9t1wnWh2r/Lr
W0z2iGg5iws599On5Vrf/na15l2OU5l5Z+TEfFov72EQj1g2RfeOsTeMD+hg0OnzZbskQ0smdfXD
eumG7ZMMHRBtDj+B3GN1q80O2SfKdaBJmWEBQdnTfl/Yv72n6RoRim0LK5sgsx8it/+DWeqe16RL
/W0ZAPfjof0S6z15/h/7oc3wAn46hefbevd95jdoDXdZGAtkDCjpnFnMmB21Tb6baX4Igp+qhxZv
NRu8zB/GDaxUwcTYvhhpV2XmA5xNkdzGAA+sV6U78WiStql1dH/MqLXUG/6xpXylcTV0Q5C+PlYq
iMqVJO/zpGZ1cNwPQOUS7P+iunwe7nTcwbxA435xR9fe1u9HvMxwpi2UywaqDt4mTCPe3D6948TW
wE1fZC7v0R8AXlUUC09WEhMgK+LRBELyD4xyH0mXQYFep9Yke/7eS+pW4oqGc5g1luvt3R6z3Bx3
zf0RQBo3qyNrpzO9vfBrLHxjDoe7OYmNvp28PGkKlHGs/kLHDgkRjLt7YDVWnm5Vfw3Yal4zZISo
nXRKNptND6N3VjxRA/evyrjBDQyuZ5LBToTBih6tve1bqSFWB5rv0WjrlmQPpgyKP8a2+3i5E4mY
evYq29XqZLGHu8ji4NzKTR8PWWNHgxRd9F3mpZlvE6XNWf6BXjY42/AqXoIKZWxKT48mp0cQOWZC
qDe/9hr7YHpT9WRWnQBjYiSwqecw2VGpNby6ZpTluzl5K5Dg4nfsh3gDN3PY/86mrOAqNO5HEv6r
3oFmlp2QlDzpvm6GpnVKjqOJuWiJP5Qq8RYywhwmwyTlqB+0Y6FDCYSMRMiD4Sq8ChnGZ3LtsGog
ybUH+6PkfO7d0SRaNTPm7z1HcAFTLstGXlx22+wMUOp7KIdtIUuZV4kHKomiN7TPRmb3Jo9RP0G/
Lhn3XgjX9sh5qmmI2MvJLG0vlaPs+HR8iFqCmqOXsOQjpF2Q77uu6c0n1DsMC3vNTXWeE4QNk/Jz
L1eVv2H2YHJRkeW5Dz+SHRSLDI/77I3D2CsMajEexU50C9H0kNT/rhQaLq97humFaySG6hB16gTj
3BIc8Qw1XjGBgXD/awi2V70Syf+9YRlxQVb8DbPgtwKK6COw5Bi3SYQUTcB6oerspQWdbYogBUDe
KegcgOsDURWq252NTlwKXg==
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
