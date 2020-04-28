// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:54:34 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_shift_ram_dly1024_1_0 -prefix
//               msys_c_shift_ram_dly1024_1_0_ msys_c_shift_ram_dly1024_1_0_sim_netlist.v
// Design      : msys_c_shift_ram_dly1024_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_shift_ram_dly1024_1_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_shift_ram_dly1024_1_0
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 2}" *) input [1:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 2}, PortType data, PortType.PROP_SRC false" *) output [1:0]Q;

  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "2" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00" *) 
  (* c_depth = "135" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_shift_ram_dly1024_1_0_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00" *) (* C_DEFAULT_DATA = "00" *) 
(* C_DEPTH = "135" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_shift_ram_dly1024_1_0_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [1:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [1:0]Q;

  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "2" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00" *) 
  (* c_depth = "135" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_shift_ram_dly1024_1_0_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
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
TzqTWzVLLXocOg3up6rNft4bohjJcXyx5Czce07G9z8MNQ+t4/kAN+nY1jVADeFtec4dkdZh45H7
dpcDQQdQTw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z3AIpLDjUuaEQmH82FVi2zLywElh7iOAf1iLbsH/YfB5BOyx+3wfmVCJ6Zjar0dfRtQcv0eQfDcu
bSYBTssSuSkuCYCY0rBpM+Xkdyc7/Xpr3LQA/00f0DEGwnxc4k0YsovbPLFcIRhvP6FJgb/UGXjN
GeLE3Nuj/DFsjPWAUWA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
seLkBZQbnIZh8mBM0T8s4G+scEHnQv3scD/jzq5LdHSnBvJ7KWwKEYrQa5ly3MWqO8Vb8VGHVung
MRPCKAbHQm2xgx/Uvhde0GLcfxIVTgX3kJm/0+Bv2q76aFQujYtAgg7uFAAwhyAkkfnHJ/A/aBIW
xh9lJdgtdUmQAT6Z6KA8XqCpsm/DWgKArIz634L2J0CrcyCo46iU6hGrAn45XPYZZBox9ahEUs6r
5mKy0gW0d0uleyI0ZrTMugAxjdGKCjei/AExoShQrKErb8/wnmsGgiTVh28z4pEFqLq+SZuHd2sv
jeLtUGm9TJ9bxz5LprsO5WCPvzdNC3OYYbnpgw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DiPRLFQlcSB/5cG25z0ajZZB3DoqPLpKoD0KRMKxlyW4WsaFtkBrkokE9RoW2RgsVy/ZaoiS/E7R
jJu4KreD9pe8InxBB7i9EvvgY0v4ddCszu6rnbqeYPCZz6IbdT+ymjZWCr36E0XT66t5NuRpERbP
df/Q7vjXkz48MiNmr0HCKN93gTwJDzxzOFLPlKJlxV/KmdZ91J7J9T7g5u/aIqPzQE6e2+gEAtN/
Iur9tKgBhdlZ8rNYJwBZTKs/cn2fp3TNG6eYzzw/goWVr55yC48vjFpXrKH0QX5HIlk1VIS+P5Jo
Ovttt6MLNHbEBD8FH0DnWdF9nKLTNQtZ/AE6Ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VQJvMecUTSyfwFPpZYbnyS8ZLP9HSCVo0KZIrrWWgmtNSfxCEVxc1wJA9rQctCqMtTSrapXwP1TL
imlvt4vq+5WfFdAzpSS+XRfcRciD1B/o96Brzbf2d6h2S8/Q2ZQbUolX8p/4kLawMrL84Mtncm9C
4bIrtZmPOMxCa4HtYP/go4c7SJpV2gTOGY7zY4SXPIA2VXGMDF47OruyLpiXgEWfJXR64iZO2f9g
R+v1qeda455LtzSv7VaEnbTNJLcTsZksj/jzZrjJKXFFZ5oBftTJpoA037hbCJPEti6nXeqO8kf4
dJPK/ghG+jCFoeUk8LYz/L8xKEoOzOrCjmYsCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/BT22ARqkup8t9IdChI5dvaOZ9kZM4efppnEoskwNGXu/0HBwEKIB4bPBAXgoBFlTJQgAC4eXI0
MnSH47MSH4Btm4q7hJFjTef3V1YbSOJma1DYl9f4GGud6Mw3AiPAacUsu2LRpCvvaIXx3o4nIOFH
p90yAimODI6d7n3gdSo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZV/QKk3FV4ZMZVfsG/Zb/2t/+6f8be2xqgHelh3OLiRzE963in81thjQvazEc5zc1n4owsRx2ORb
K9UNCgfm8uzAjqZI0Know2dOFLKV4yifU15QXwPabJad8KkfNxch8e42iWkDU1gM3pX9TZU2M/B7
W5EjY212YGfIOUSbz4t3AEv+s6mIe8+Pj3rEp0TJi0i3qPsoTlcfOYWGrMdedLLbgGCk9g+X9sCF
ipC6cYcKQUt6O5BHVpjngy2zzVQvWDTAIWRjQURcKGK7/mfaw+87vhuQxxeTq0Uduc6NZOFXy7hf
zCHbqhG86f7kX+A+VUQCO7ZEXtiIDlYbJy+ZWg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnlR9DnVIpJP1LXCzYrM6mdoqOotbn9RJxUMSn1U1dN+qeyzM1JLPN3WvXAzafxhzQfg/b2OXS0b
VljW/hZBWuyGad8AOSTqi68oMMaZmPtGJn8WbGsVdpCeHHDkeXU4+qtlc6w9LYzICJuZrYZrAGAw
bT0PjT0r0lgHw0FNdlXxlfOCYwl31LKHexS9ZtJjMYI4wO09BS9OLEjzaWQT92IcBA6IhcAKk4lv
+KJ9Hditqjb0QuKzSPTcREM0V4QSTXJP0lW81M7G/XEVwTx82QoTrk8AhHQhJFLPRmIrfoF7DTc9
sOhtub+eZJMrCoTjpWVjYj01gaq5H4jUlDblXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jEyAzEdAE5fjCGiBqwjRGJ30S38dcpcUXcocub1N0y+HcUiL00yxE2KTQe11s3sNmQDq3a7c4eP4
8I/6+ZWPVrg5czJyZbvIriQPViuhAEokzk+eHCETWPqiXXT1IF+xYO1U1h2fSKMgm04JUjf0DDK1
cnwbTpDui5IrjCcMyI0N1xOsctSK/qNE6ZAbHefrjgS0vzgUn+xntwGKCmITRn1sVj49XIJRrG2/
094ypaQQQE3mPi7ziXaCqVgE6hhCMe8iyrfulwu791vGiT2/22aCL7jDpkzRND3HaiFIs1dtC+08
ZJSbl6t6sFozQOlflqY/9V2rLe7TbkIxWBmjgg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NgNdF6SKQoYjw/fYdfx5ps2tgWSUG7PQqdqPb80we3/QM8CfYhByJOVElRsj6+fNTEd7lp3Rg5P9
x5RQJMNbDvB+yydiTgmjA/I7RpS4TSU6qJNf53/sFlDSh4werBhhjuVUyvlcWKWpxj9tqJRdpncA
jI1VHqeABF9Gh/6yQCeBECdxJ1HS4J4mkuMNZ6rOpyeIDPrFcvW3DEpqaS91MbXXbGlaS0IgGKF/
WMX6QRs7Ip5bWc5oilTztbtpiAMHnaYzX4iNlTqoTHp0HQuwt3d3cDyzSvk8Dc5GnC8Eh6YpWbJ5
QvGQuCxcvlKoDhqmd5D9lBdoKG4HYxtzMRVBZw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13632)
`pragma protect data_block
bPiy4T7ctuzwLOI7drlz6KzZApvKvGg0UYpIOgugKNbhcxgZV3WGGvy8vFpTx4l88oXVbBivRF0k
mip9FFX5DgJI05C/zJClqJb4PiuDznts4jFqbPtQ60Q9U3JreA8880w4lCb/Sb96X0CFydHbVemh
f+2Arz23AxN/pJsv4XlOts7zUbyXb5iQuNhll6oci0CLmp92i24A+HqxMj/eAs+vWcjj40HyeSq5
IchruZp+RI3qMwfhyuDEgGzzGH8D6a3w7qF1bc8CR+yoe/dY7bcWkcwXVChWksEgZBD3CCqIqK24
RzED6eSo309kUFbRnf7bmDYLkgwhTwKx2fQITLiopUEBlvwNgFEJTkkClRSmbfxXmRadZzjZsyUo
lnBXv0Ly6TkloSRmLMRnhZdZY+NMGtBWRy+JqNt+fgm+DhXeJ/ztBxZRcZKatAIFLev68ytB9ZgM
2f5sp20xaFH+ipm8Zg91IgbH2eCgx6CzlFktRHgIhyInzE98Dx+6W41LAxXr2CoWCGAqg58E20iH
KtlmJ71qLb30lq/hu6gqHXbNF7pc3CRazA5ZIULNj397/pLpETeH0oi2OM8uQGSkT4F8fZakvl7c
ktqdVnJHgo5TBa+ZpyXXbtYVSbz99h2cytFHyrrehuoJ+d1XxmhDhbcNkhGYiD149LJT3nfMzr7S
NWvSQg9iJl3ipAHNwYL6WyAyQGWFDaDeLqZwX9cNnOgM/LdyE6DqghRTO0Ksa4BFU0+qkU+NiWuF
HBhuzK2c/gOphZxkrmm7x5fmZpcqILvIglaxkY+QXoUeXoWguog7OAnzqR1SBeY55e3mmpB3bQzW
NVWpvdL7HQgtqwvzrB5hfAPnH4Opy/90q/ApX/6nVL2bEqdT3CJUtUY/N/z9pgpGdiRXY7k6qeNN
2/SpZN71Wiar/ntwd4V58qAv5HdcgAIhISm4wnrrPi4Tva6WvoUb0ZnmQnENgdXi49C+R1Mhm1LV
bGE5kCkuubsoXoRRkXYeu43KVUGbkIOI3HnSbLDUekTnZxM5Gk1B79o4LBjr73KMD2mfXQJ17rXP
6stbGZXpDIrTCq/Ae7mVSkVnzFHE8/+hhgpadkfGILJuzSg4Xyft2z7mOE2hqkSPrOCXTCmAX8Dx
+eWbzh0I0rqkQhjP8gqVq+ADCwt/4l7p4BfTpi8oopRKuKOS8PZCjOulavamDdyPEg8jS2caEfcc
qk2agPwWGOTp+8FSn+ilPemFBIIf3dZcvkp27yACuF6JFxAvZ/w8yOa9xFey2h9SEEOVc5jguEiQ
EJuF5/3KqYO2uc1t9W4humgQZ8l69P+tRF71K/ZmRWM73+3KI3CaPVyu+zNTcNlXUDsYwOubdAju
3Tdhrn1GUT/C7cMUfdhQKzYOuHaTa/ueclRPfewr+R+v/Q0WjqqFmFZpdP3UpFS7iMBhEoWXaJjo
cICiDV+RJzCXCUAHeKoQhM0R6fTRJjZVeNnetZLK+89hvKMPSFCP+wRjYFWB9JyKc0mSFGxWCJ7W
UvQE1Ujfg0TONkZWWJVFVimJGFJjM8fwYHC9qotb8lziexhR7Zr4ZEGRRGx5DNwHwOlfn9w9PApy
T1LCrkx7U8sjCUqDvldksB5I0vXAs/XK8B3kPfZjEWx9f8C1bVOYGNncadYaC5Rlk7G/NczfzAlt
Uv7+Rs4wXLZGvz6mqfPPN19I9R8cFy4BVMmAoUKtxZGnT01UtGDzs4ZE8euIBJmcrNWn2IIoy1JK
9BIH2qYnNidpe7ia6RfLCNSa4PQ0SvG+ltJP2LKffrMi9maXwEITITUxAWhRWnnqeAC8ObqRHgEP
SkbXXCzeQj5FI4NmCllgwXR80NvgKUfKk+TiloD4rBOOYnY7yQDvJ5p1+OhRW0Y1Ya0ydSeNC4WT
NOi3mxu9OdaL3KmbyWnaodfJWVv2iIytQeBna9PaVwrm0HpWETjp+tMNhdD/ujUWwvQxkSYlBweM
pvuX2NEaprBZ6FGAAAq1zrfdtxBvBA+D8wPrYt8dFysmmcqRVoP/6SFkdPhRX0hDEzwfoQY6S/LE
K7/v4josurJbyMOuMr/8XqCFlhJallNsmO7rednmz01ARZnfCS4O36kdAFiyKUYq7tat5hlN0wVt
HK9U34XCFhRnU0TBG19W5/Jv3u2yy+sopLyps2jpo8qOe7IbRHNb7OZ7ZG6vV/7s5GtqDxbw4AEI
z96yceIWKVU84ON5PbCO0+u3eR6DmDuGkTjzbaSWMUjpn/eSam305gHSo7jvIGaN6aEY50RFZ24A
NsePcUhCm3ezKerlsra9DRKW6A141hy+aeIPkVTOoE5DUDKWmduVlMW5wvGyjE0IwtwXJwYdx6L9
TgX/uZX98I2POeUIFW7FeKh7BZxej6mVHGfnlaKQQJCSNlISLKaXBD+7UQ3s+2uBj4WtHhVixoTt
vILiH58ovqsNg7q2ZesDgXHnhKT5RK96nFV2MEapUu3Ip6wUS1vrwVxItuzbkjT4awjTw3ArbrTQ
9OmYagw1o3LWoVtYAzxXwqAWzotxRE+qDskerhPyP8yhwgmtCrluSb+lCCAOq5b8cNkAlySkWSEX
yyhUV+ifJuEiGwXwx/Ht6xu35JkLlHrJYwZ9lvVc8+QzB27sqnOEOPwVG6Ooy7mEZDIhMls+t8nP
fR2bHLKHDRgm9IRWMUpbR+g91WXhl5cCvxbR6sbdnkkGBokToGYCODmgdQ8+XCcg7vKr5I6Gc5PM
thY1HI+WAjhSqk4DBAd2upWZdOLW79DaYXH3BJIadGjshgVEqAFP/T3dZjgfHgWZyUfYLnkc4RIb
vwEs28KYOc3BDfflUB42cwAMvetQkzNxlA3MVTR5e0DbrTgzagmQZGWxEVtoLs2xbmP/Ac24GBLH
Zo9yUGBGnVwsYEj+2oTmRc0YstyTutZwg+mfg8Jk/jE6qthMkBhRGOrh/MR1ihXuMC+1/vrRL3Ij
buBKSjGbeeLOPZrCGce6uyplH158Wo0N2XnASxD6FPG2sGmHNLH2X7wNfcMafxK7vFE92G2eurFs
UAZZQWDke5l3r6YBVm95lCgzrS/sR9mH6je6aQspJJ2O+ZQc46y9WOxxyB/LB80Z3ag3qU3L78yo
xX+PQMxSg+Xz+vDwDSmcGJy1ciA8d0EKxr4Scn+vwtLEfoveWIQQEfF9hIOdR5c9gYPHbCz8HTU0
G+yVsLzSq4erPYn/jtWdXCv4z9H6NK0snUs4aTfq9EsOEE/izcXiQEg2p1coOveegJLAxRM37xeu
8gF1mwfkiGGKKp5cYSVMEIYB5kOFozyxdnquoX03Kzo7dX14ZxB6lXNje51MNiOEUtNrgcj9V6mc
RNIccd6tVLvlrYGSP7ZTDEfluIcL+rAzaMB4Bm/ZG1mTpbEDNdxSr5sC4fdOk+oDnjwIY5oDLSCD
36Ywbnks2byf8kLklNyDdNEK5wZ+wclg3ykn2yvcG6rdDXc47LR9RnWiFyhKyrqKWi9hUbcmAV+N
OqcoE5UJJz6F15CdbNFcmTBV5D+FmTz7ESdbq6clcXt4D2DRBSsrM5KcnHiYO/ug/pRdq9fUyq2q
qBpAW19cMnk9SROSyZNsEHR3pH8r2bEMT3a6IoFjjpGOn1EU/sFTpPLHwTa7ycZd0YEhncN6mSki
aovTH9NpLqtPnnN9hGqzE6/BGNFKaMrehd86Zuunoj3FYh6xg3NSzpEfWRXT8tput/YUSrI32LXq
3ZKuoIWRa79ubIvRTwHfPY89xhfMS4SJmBTINhGyAwK3J3cG6oPsQWbeb9+LvBT0zEadde/IzDpk
D4ZqjubDQX0k4hD1tL8L+xUACuRKxnH9Z4fJ4dWuj7Rp2sSlHwajpXiqeN2kX39qAr6NmTwt2fy4
EY6z5v/NH/K0tm4PrvoR/0G0d5MFXKMc9OJIublJXHAqY8GjlbKFz3LvNYAd5Y8y16BG6uMddsyz
Pf6CdnrlAt5chLT3/siBxOmctIA/mDP0cPT/EaIHaOSB1YZWf+y3H2JS6vQAK6BmmMeDCqr+wa+l
/TD95XW568nt5iANNdTfWCNrzF8PDsgzjiRyGjcABiim4IhlH8zJaTbJRhUa/2qNNKnBDPlfE5HL
QPHLWgHUDeKjD7ibMx4NTutJSBHRP5+IQDqBuvi91bwKdprU/qc9suquxSdRR3xy7NJqa+bZN8F6
jlhygSum/aOpHaDHn3Eg8xaskh0c8wGFT9/ksvMzJ1CbAJszs5aQhQPasgCb7XIerLz3a/gEF2FG
tCBGx/gIWB0ZiItAxT+90kDOWF8bmcJijFVnZ6RRPv7yJlmucmXrorft56NsKcS13unuFujqBro8
kXFzOocou497ulb+SIUxgEop+es2CzQjabJe4imxwUjy7pb27JJjM81n9mKShdFNjn1npcqQXs/3
pULB9+56XBmNprsX6YBZnn6RzxTdsqpEMflXb1f99za3Fw6IHUL565r/rpo90O+tHLQl6LnI/tAO
JrBRRM5EceNYRKQ7V9+OL8T5Haw+j29ngIqgfr+FwfRRieb9ac5t5FVISes6QVfRv/Sv1UWlruZi
P2EFuJYz5TFVAPk9mXXK28tkuw1pFdyzm3gBbB1cIsr6qrrCxUspAJ7XFZPlypn70C0XEroSdGHE
lR7XrI6W/L78Zh/VKdjiuoSCpdlS88bVCVFosrdFFUQyAmKvgzL8CKyouy8ENZAxEv284kzmdXy6
lW8gJtf3GHHeTDMWorS/J08TcMtFtje3oF2jxL6GucqI3BPBJGkHTnIa5G5tUKWld+PnibIEvYlJ
Dp+AWotkAWLF+WOfSBbUErV0sKwjXdklIUkihjgBy57XOOQHcXImWg/rO/2rUX1runniUhmYFRZy
FJ/EFJbrrL6FHoYG4QD6wKirfInW2uwUU6UaaKS8kCJDHtvXCIi+IWDeYTIAtlIulkzw2xVG53zH
VCLuM1iVLV8g2Gqpc+C6vApgXnLSz21kz0KOIXJ/Ztlfxb9x0vJ9ZXYHXPXfa3mUugkyx6u57YKO
K/HDRgKVL+A4NoT6KdDtx3bhhK0maMAR699GHmfyVwmUW6c6OHln+/ySyKZowxRXYxCWbl/CW6JG
6ThN4rgahodaNSe50Bfpu2avmm5ZJKvjui2WcG2Y5DhoniZQupJ2V/tgnRTuI7LuaQZKkE5wfJo4
u/MAxMjigfk5CxR8mdjVXTQhDlqsozmHBkr+kjoUHX6RJDtJ29SKYpjCWfdSS3YcIpc38Gqnz6fq
WAw7oaOvmO7B6JT4YzmecrRk3EmSecSIKhBxu3goj6gwm8EnpXSLONoNMsPIQZ4jGhj+sHSZ4EpB
2SwZtvmX6ZqF5EW1+SHT/5+r2xtcuSVaLjcqqvkzYFiAsaj5+qLt44Ia2YNi2X5czGRNyRhcR7gt
lnR8biDIdNt7YnmEcSVnsPIF8KBj3p54yd1qq3hQxarLeFz/p8dYMh+I0qMcGGlL3F0yEPhaBwMH
+0Rd/3vrmppy2oFLoQ3sZ28iaap1bB9SEDNnvgwHFKeYef22zMeqfFqSqAHvXzdHRFCfZMFShMeA
xxykVKyQ5xAo1IDVLiUgQNQtAHwngsZU8X8mk9W6ZMp9nec/kcr/g6Pn9+0Dc4GK5cZ1elpy+XLE
BBnNkHm5uzlbkedpHOItF8hc4lxHCFAb5KuN4gDpbe6g8pTS3gaefbAY1RwH7CqqCYpJIjmyX5/1
9jlWKqO2gEQKsPyabCmcWFO9YIKeZI65WjxEyhbLBvYVsOTvTJHcCsZQJHOSwEvWVxrRsmWG6kxI
Uibb2+9lULoCSIrKXeDpSiI5k1f9CgWDmpGTRullUjiRdtd4+Mxm47SYh9zQtHTtsNBw0PMtDQtD
ScoCnOFoW9v2/wuakkz3CbrogOwIkHme/RKSFK7Sz6dd2sEBGW8d6xfO+kpyJM4/MNQGUpi6SdIg
hkZNmIAenwVhKFZ9uoeJP0l0w2rc0WqX18SITpjvVNL+AhRPqvoKkokCY1IVJd+Xz5zu7gyvvZZm
KdgI7G4YBjiW1UeTLBxajuV7rNbW4VYGTq3z0YUUC4ciWkbBhLhVk+FtY4Ky1X3jKbIjWHMEaq/Z
vsh2jDYHi82HJ7YGv6S6D1+Ba7YI7HHNtu1YPIEKE/xqZFD3EXdni+cSPezN7pwDH/W/1P2d1aMh
Rut9bDWtsWQBnGDDisYPqIC+Pu4JL8AnOdtUQ12ssejC/i1DmskH5W0eUPxhcgPSsiL/zoroBtio
umK3am1aSiAO/tv6ZR0cB0QowkmnBWRUgrWY/OjFc8jtw1Ci6iI3bv1oiF2ca7afMeAvbvhgKwJB
jcX5TYt90iDj0UYQ7vdTzD7ijX3so6THjN+/esqjvVV+XnHlku/RmJGvTPi1YtAvrpTOG+H9+9eB
4gMeqkQeonO7+RNOCxBRnnVmFivk1maVdpvZV1WpCuyddjIQYjQ8nfktEFr0CJN7v4JirsiogiNJ
tbWIynSJQzTxj4KTyGEQ08zW3SqSuiMDedqy7ghqhe5Sw7IqTpC7X2RxgIamx64qm9EP8jpVXHY2
OJAfcClASrYrfJK46a/x+p6PcgTR/g7jsYkfZB1txKbAb1i7AH37xa98jQJj4VlGoLx3HCPDEvpS
9eoVaYRziqBpgTeE/ZyvZlH3sNBjRZvFRH6H76hCLXl5rGsI009jE9Me59b6JAbsS9BvUOILmFkc
COXsmNfwCY7kt61rPuXMexIZGJhCaaH/1VoK5MjeTB4mXqmbeq/l0q/ew3ugHTOeS4mJCHCgjozT
1Sdsf0iFe0mLNNeYXmH4zY+1ybeUOgdpymUeUpKfv2hmIoDokjozkxyzlA8jz37ljZEN1dMgJyLh
BvSicp7GhzxADGeiD+cr3vHUvEnX7Ls/FKCkXliZJDDZKOwRTu8U5hWTPGRXxsZF5PQUCravoLLT
Uu38AfU1XgwZrkuLiePsgFklRNeV9ZoxjMiOhDmk57tCz3PA9fpf5Hgouq2IWWg+pdkbGp8X0ZOR
5Vd+zGBS9pzQYbxF+tlPUSS4AjXRyXiX66QpwL7njcc+poa1gukoaftZvZJipULdeq0/tD8/6sjv
GNDposOz+0vrTWK+E5vbAeQlnGYGaW8L2X5gu5TcESVw9L5EKH+jS2fwN6KV4ppgBWK+DRh+m20M
P3xap9nEDzoFnD6LPPmkPB//EnOhoN64U3sEeIPs5WxHJiBJ4kJ3HllEdGhoynPDaf+bHSUCZYU2
WCRw49hrJI082CyEX9P7KLXiJXJAzQOrcIEJMkJhB0R/xZtpwL74XECWCYxsZ4f+yDRFutLlvIKG
ZX48JeVqif3JbgtmVQJo4esIqfyTN9e6IP027k40DOwxH7MU7FuVfvTHIVq/clAi88JBcIhNHQhX
9DWi3vNrK9muEL5WBNd/lIz4vk5r1sawzcqigNtg6xjS7bhvI0Ou42g5XU3qCIePMLASBkCx+yGP
czPZmWZHl2Vv1puqLkXxzv7PB/95xf4Evlte0YLyrrtaVxGIH/G7ZCtOmRI2+rNoBmdrp8xMEbco
2PL9ElwCpu894WaZyXnZJuPJSKvoWOoPzTBPTJykm8zB6YX3ZprZi9tE3UmDsAlDw+zbGt6Dxk+L
AMlWfL/hL04zaZclNuVqrYIT56vBTxAOatdBWlja9yP/Rn3WEmXGLjPSwkdsHVCrAy0OXSKBW6Jm
b9f43ID6QLh5O40Xu6seyKRTASGJ5A1s20HL7gU35bdPA2OvuJVVsW1IymYcB9G6ScVVeBqFO9Db
4WHajbrIsrsJnVDEfPSRRbct9KDh0VkSLYYVEGCrG6ifEV0/W0GELoPdkXpToH8j6IBLFMOliwDK
KrFygNiPKBF4wL2c+Ju2YSksBbYsiAVgYTYpIRCnNBXoqx4f9AX5/i8L1py8bp73VfTzAN5M7yq7
eThcVW/LMljzk6tefP1YH5izcUFU7W4l5V3Bd+BYV6g43X7InIF4N6iOzwl/camqYdOY+9bQvJnO
vNL2hmz7VCp1jp9ZxZuXg8COvHhSQ4qypnAehLLhe6W0KGnOyvzGf0r1Bshu9YNva6yoj7O4dCzr
m1AyCvk3Nmjztlg/M3AXjEihEJDikPY2nOHGud2O5HuIlprDEYQobWkYlPIAl+5E2m38MKr4Zjbc
wXL9hwibtr4CzsSsVpNT0ekYaLJf5NVywk5mYqFSlgxAFaQ/S6vEQUllAzZsYt2qolCnNRAXrfFg
st4ZbchH7TiWFIGRXAymhoj7k5xCD7I3qVLK39TUELQUaQbo2+5IS5NNVfCg6Y7RoMsLth40kgVI
1RsDRORvzSpH5qotTWaVomWS48IDD0+HbTO0X4MAogPhAzGcPKZXd0zJOlkkMm/ZvaZwNlEBYbaq
p6YTBCAgzUOnPuaJqkBVwRetTR+2nexzzJeCINN8WNQdGYLRDCn3NGjKtcQSU5WjqDr7+fhiJ54t
TdpJ2vzU3qulzA5ty6Z4haFE2g3naGbqMRN0PLVdxkzadnMWQrWJ0O0E0H08HHLvCMHPJhuftEUX
i1DS2XLLlMihjnyHwSQ/UcrcyJkrHqgd2zxU6eSRVeoUcE9AM9s2qKfUipesq+JMZvl78eTyTAHg
+VTGZf/cOmxoq1xz5eOxCDuCjMZQbJFwzpehtOWzgeRdZIrlssKT6mR89KOUaEIAktni8H7Vw9j8
eWZFryPKbyTQ34XX+vLqituXmSAqi0aOIq9jk/JVT0hEw0FP983qWmINUv9TxQx6ayZBYGuWOzep
VI1D2W7Mz52xkY3dlPryfZqmdbXiYksqjVMH2qLgSu4lTizWq9B9Qofrnezk1XiRriCqVXjUXy2M
3XM9dIPm9OEjEYCOlBYaUSmTuaHbXXBOdIVdKW4qgBhf9NKwmyC5KKdoUl9vURrRTmpV6dxZtSo1
YQeEIbmbdV+uPPQYKzLx2Jy/z3d26dCJEBQHC867uZVaSZPau5den4ABP/RX6hu2BR/L64UdUAeV
3cV9jfBvSYwtVQr1HEhN6QiwrvPg3d67/IoclGNYgJg+nxj1DdmQq7hzNu+ld2o0eqTOnJUJbNny
DZiVrI4bIf2xXRILQPJtdpNbzarkZd/+UsYZmOYmLi5XoQiVs5QCfLgQF4+vBDKZyfOKztheV/IZ
4zDnlXJBSkA9tKYN+cF9eSGXye+9ofCDF+qhyKFq+xuQl3lz8w2qrrshY0uBG0CSkhJ2q6lUwqNT
w/PL+xWLgVVKElKR8L66EMDx1VhhI1Od0BIDbTd3vz5GCvtnJ3LvyoIMVmK2WkVwSsNFouLrMCii
DfVe//PnGZkyoPmuvYW+3cvXf5YD+J4h+1upbg1HhIWdIEZ01dr5CMS2s+Bo5eD0bU39GC6jOTML
lEYZ+FwnWUeyp6guIB+gOYN6vYytvEaAvtOeI/RDcE2cVjVTZi8wb72w5CtjXoLYSNAzcw4SCbfO
klnRDuIapgY0mYh7ggYNvKsvZzxffE/d9iXwT5FYhKb+grM+s/OFDe+I/UwjTnTYed/Nwizn/gJT
D9Cj5+m5SutagfmVE7U1Zyd6hpgWn1Fn0+O8Bwy7eMEEwRY4zk5hwxnpynlNwyfRq/BiQH0YL0kf
svIEOBXSzKqOQHucb8JY+44/t76sM7jsvcjpEm+edTe42Tqf5n28q47aPNqa1jkoXPFJkmViFFzI
/0+Dk9ftyELXrdunzDUou7gpAMdMxXK1buFWx6iWqNrKEITpdNbmyiWQDnNk6+oog8YMa90eYqhu
w/YeF8S1PpDjMp51l3VAeZQGOkPu+AYnpcAd2oG9UGzn+3rdXGGKkwtSk9IWsk2+ZieevB8MnBTG
4tVNsGzlvmUMbNb1NAmYtnfhhXjpUrQbWh1z59zpbgLDAttY+qMBVj++HscR6PAobA/Ci931P/4t
O6qP5ZRC3PSxKlICk+p/OKpOJKzm3euhZi/K6hxbaWHedq1gEgzzzSJiW3CDtAh5TKuDKKwWDePr
YaJBSI6MnW+H50DxX+rOCqvN4Jg1DIx7e0jOyurObudiVTP+BI2pl4hhz7lLRsPNCpOjnXRsQyga
BHhB3BLRd637hTIFHn/mI3DjtxC/gaZ8hlLwpeSsoxHc0KxgpoBZeVmoBo70lM+Iez2MCCqbpyH0
Q9B53Fdi4o9yyxr1XaK8YRf/LGhPjwBD32Dj3ayKe5juWQzCe8CGOnoMpBlGinzsvDHL6fRPPzdf
5WtRpsZlhPNx72v5R71UM871F5lDsoJDRw6yQCzhQd/wWcIkn6xKrwL61ATNLhNr8N810BmF1692
G1p9c7s+0ajVKnXyHOcwkMeBU1y3BZ1Xzr8Fmq1E4ItlhEe1YaTJkeqom1E4TL7kUAmy3RwveDnW
fZLXPQVAjO2p/QBLh89CWfPIP653yKcf2SlSqzlqKlff7K1OZFEOWMYHJC+KSR5oWfwVKBR0Q115
22hw+ZsIkoOAKTkFPSl3A9YCF81wSP1BU7Ix8WtNsQYf93CmVgi6lMR2fHwcg5MxiN4u8SEkXkhG
TIQe8vurV7n37M8EJ7w/ixCjimWZzwE1ppdAN+yfynMYCB2w7EH9k1NkOjEL9CUiBeXPugl5l16r
V2OnbDrTU/E/R2+P0o217cHPXybmGmoL2rTVEAWdlU+tVFWisPf36nVPgEefNx2CDBQww9CNSLAq
gKbdq3texPR8/58kJGlatMArvHMwyTvlmPkbg6MzRpBz8NvU9T+G5+i9SKX9r7jOYYCIku1+hUoG
H4lEG4udcr6Bqo3rsMMsxvAJeSPVrrwLxSp5WgF2CzgLhewIF6E9HXzEK6ypvDVksiS+iTzB2Rtf
Tac8wRCY5ig4AByk4veN559Br78ykMjCqVxu+bN8/zyreYuhCgkiY8Mu+/RiTM44+/B6Eu0ELDtW
FMHVygI9DSu/Te9LcOfrCVEnwQr3RoaHoS+xBluBHECARVomfvSBcLgCgwc/zlFa6cEhHaes2sRk
HzP7IS/aARC4mV2Nb8mLzSlmC9z8lu4L0pq/rADUEQYByFTdWSWMm8R6OVNEXuTWtQF1p3r12txY
z2lcaXC0FndqHxdNgZ2zuS8XehHxgUG0Ca5q1LMEDMDx6VH5vwrZvGnFrM5vZkS1U0gVzCuLIUGf
O0Zco8+oyfgmu1TMIgNwzDud5kI0nmgjJY1DLZdG4ldDlYyIqHBJzdw4RBb8/GdaFwl254F1ILkc
OOSbZ4EGOItJsa6UEqFT0VMxZan6XTyIBJXtWlIWYInmUPn4KefkhmoRlrAJBfIJCoF6EIBiwIyU
M3KrHSi8cKwd67wXwh+9WkKqOZUSRtY8UYwfq4JBOzOJX3um/LamnOe7YpaErswIluKs4uyCgXgo
r3hKI+DFD/iokp6y1enY6iQxsjGEgJepHBDgrRkqmTjA1ynBabAJo9Qrn7Idx8d97g95cT02E2K/
3yCNVNh24notCxPxDEbtVsIy4BYnzMMBp2ybBgNXGyJgEKOR/JHqaBT4711oC1YU+K7fODakQg1m
CHaHdMAsMQmTobIZHH+82KBJSB6viwNg5ufiL/CcUMdLJkJ4KVmrEa7BcoCYGvbgVSdxqZ0nfAxv
Y69SKgHHmtXy8320WnsAJ5V3J+Ym/xjotCpUU79iv9/ZKpcMnIdNaGdh/TigGDuLgT5E4CQXmGZN
cOFV+6oQ2tNQdt3exDOPJanr2I7gXlFnpoFdc1xDMsHM8dhMBgJ1jqYax+O8n4R2IPZjOsjhGjvb
BYUTfZ5weon+w3wxN/zKoey5vYnzZ4jaTJ/lkHlsHWuQt6GkjbG2CLWN2IYBLvNrVXKE2B8swHjm
qI+JLoyIrLshs/NAEH3cgRTyAPSexuQatX31nuIPwWeJkJF5Mfq6/DcZ3pjyp/qSy+QFjTZzBHpV
RadqHmoNufPiNmQ5qBIpx9KIt3aGcIwzffYSwSErs8Yeg9+JXi9oUb4eniSBFe5LqksOZ5a8ube2
nlo8bJCRZY7tI3xzTcxqUPlXLjxOAt5jxIJZp5oFDzWvcZ4cWOhup1FHxIZNB0T5bH0Qdt9xDzKp
3jmi1jIPnx+QRfCjPVqz2RZbRB6j8DdGF8QJlze9coiayV8HITqcjlzGTyncZPOV8yQS8dUP28RX
WMbfko5sb+vy6DmmDQGY/rw3KseVhzRK1utodEFjya2w6tYECeRBtUk6s9u8/37Tz7JcOTqNGRPt
YhOUoXHonM6ozq7+0OL0rsqJzgd6a5P5xjBDQsvCV0KRGryzyERNdN0WS1Tc0cI7Uifnb90lTXZT
dldG7ArAsPc3hvkimhzp101lWB++ZhMgELJTsXibp1Bu0AFXWchJQlL67Y52Ai+QTEAUm88lNhu+
hcL/vvRtK1yE2ldcHRO7tTzLDXb2aqM8yc0cGG871xltHd4efngNQDuGwcWV/TPSt3B3DhKkYQZX
hgYSt8Z1G2Zx14A8zfJ8NgNjvz0Xc4Op1+T7gksQfIB6w9sH5QTG45WtGHo5Zc3XGTLU02Z7/vhI
yE5OnBGYPP/3JgOsG3UCxrp5055L3skENESFPusSVbbJgFj9j9uiuGX9K/p/sm3Y1LG0p5xJZJs6
Mi3kS+I1QeGONQG3TunD7kO1BV6V9iNr5TkHEelGm4bsrWEelRwpw9hELuOXKIrzhx6XddO4c4SS
rV8Hj/v3zjNFsdtmIpv6MM70lN6iMW/gGBjxUMPiLpU6kHNGUwaKeY412ZTiQqykioQ1pRWBcnQn
gUprJ+kvCgglF2SfL7IeJGh9lZjmZGxBb/2J/zETS679SmWumbUiE41qGEi/S/93T44KQLxT1V3m
kGwAvm+hcz4ftuTgZSDQSr3iMVMYVqNEU6sq/6tGb7uer/EVxu2XVhO2ZtSkdBCAX56uUODxLZRB
DvSy8meH6mpmBeF2FJ3SsEIqSX6vZclInyRxsjQbuq7pGcIhk8dNMOKuLn1EnqgVa3LNfJrDjEfC
dJwWI9ctlKeUmNEZSSFeCTIuaC64v2vxKfXXDEcGNKJ26w1bupEX4x2KZ0X5Ce+ldiNErteM/MKs
XMxm8YM7T8pVZJTG9VoA+52cXC/skbknSyMOzjG3FIOWVCj4dNzI2PuW+OLuSUE+gei5E8yQpJPI
/d4LjN1exPFkuFKsSXTimvY4Ss2g7wraj4QJmdcRGqN3AGIOiEwxInZ+VoIfcHZAULOGub7BACnO
jP26PZ5pwfwvy5uthoIMXat6dUIfx53sePm4yqRgRFBPa5gjAJ/E+QL/Qosh2iDtH3hdBnd+Y1Tn
BVJS3MFLpKAy4R4CXMoej1Nq2o01YQwGAkn6pbE8oxD1wJEf5EVDkER5u7/0svxXvLtqR6Dh0Qte
R8YyidnfMJA07CszSm4XCe8g4u4w5pOS58Qn6gCRTFQ4R2bzl5FxIc/lu/eepROHkTwFI0z6V/XL
+7BHSHV5TkKh1uhDOAwQu/nvnCXVwRx0UHgplqFDsy9+Q4h93l2n9lKb1CjD9uqzEwTA4mFLnjnl
1kpa7h9hCqawtuWaVVMqI7JWvdzzpfW4NMONn0yCWS5K5u70N55nsvbrQXL5X1z4pOFA8fd8Dgpz
8JROFxZU1/IrxQVxqeWzyGO23pNdecK1PBzIs+u7N+7LcvpMpoGfvqybtHAsHNEKJYpYmiU5wzGZ
gIwwphtO7ouiDZbuaWbroOxVwX6ItV5XdPVYPztzVkVpn3BVh9JjUnozPymTES1UnbTN7YNHK/9a
7O4TZidySKvJLsjAsil5ytFswDVur5LgOg1O9JxdcQ1W0apf48kH+mD6MBu1O0M5tGA43JDCNwsB
ZmxqlOl0XcV4T8M9V4LYaJTY9lPs9AtIyPaVNsfiKCi08F69txcrhUk6oDEv0oMu1d9OgQrxo+XW
JzxGmvkogzfl7znpc7hGVW398XEnYyFTaJ4owa7LVcVTomhXQb+J0N3Qv5VF+DIFp1Q0bMRNXmYP
H+NDAinzabQ5ZZSl+CJdqrAgstpYXQOUgUQTO/N8/zdMtsjUDwn4z/htABvgPfvT6wZeZoWvqQSa
pBwjOgf9AjHhp2iRe0/kiwFFxZi3LcrCQW/Dn4070zJvp9jUNVXbRu35XIH5hYStAb7MzWsN/OJO
06XBmP8Bqwz6AmMoxuZEV2iTOLqqmrrhYgjbrG89nL3ZDo5SBIXqK8JiAq47WSqENQwUP7lnRrje
bw7jfU6Go3/iI6drSyPrVxiwqtwcIb8VYSYhFFmCt9ASy1NFIne3zbXOyYd/VJ+cbPbtJqYpCyzN
RFgs85KhFWSqCG+gzVxxWg+v9zP3na2xoGgt/fyeUUuRk5qE01RTBwsSIAJGFog1vTdu6RS/MS3I
/Pp6L3nO3+yIVjZXe+7Ii2gIqQbbYvpGf26F5x5KwO2+9OPM4s+CXxbCpwFSjBUXtb3pVNAni/5o
OONgIhFR1ccA6GYrjiIl+TkB08iImsznDgYfZquFkcktohI2LGLfKpxnhYfQWR4V/rqX91F19NBt
cWT8eSZaYHk1VJwHm2Fh9jaJ6nL+cXEiZk6a+DajPpS3gnNnmJGL+oPix9/zG2yLjX5VSo2sUYSB
Qzbm1fbzoR1Umqao0LBcBBFuGCTDnuyOYIf0NxDhnUW4dFDJBDrzKR+WhjOIhl7Ik3dbZ9g4l0OF
YwxkzaYivrJtA5UIc5MFjt6UmTEzSkojvAKlZbW57WSK6xmKR2zMCVyw+XmMq1SLGyJeG90HaDfK
R9e6/rU5GSUCMk7MtfYcUUtjdgYSO1XUl9OBrlwEoBLcrCoRIIGQNrKYuXihHGNdMDP3YWZzkEwh
bxVTX+MydN54xw3quMg6xTtoorU01HvSl8QQQ0+IiW8PNsgK+Hccjhadb+rXX9Sqv/VuAiwR9KxO
W8JCnz9P2xRA+gqbMejru7IKAUwGaXCvAa4x9jEgJDC15MMD98wntLKPR7h2sizX6w1c4xmF0d4T
7ebBD4U48I1T3L97OdS6HAdKqHl6PQwEcC+VGaC7xzDluznmefOLBxZVatIV5Oaz1yO8i8nMrEIG
/GruazXlJT5ZcjDYJ8dktaxFVBh6j9+5xJbxVBmUxAYNsjTXbuUpWJ0B86SRaVT4/iEv+AqSGOGV
DwOKVsAFAd1c+05UZWKX6nTiYlWgF9Gl/M4z5XzbXaWZamymwuLA9HDGW3U4Tc46gf5axRunIB/7
IZEP5ATXTkMeAFSohT6dyY7OXzBCt46NQiRLrJCV6bYwRRzWVibhRTLmAuZgOcYAYXmEg+q0SHWz
dyFGswE/e9hsTeyGEnSyh4o6ZNnvVtcQ0yKd5QbxwsMiYvRr9PzLMb/6vAeMR5f3PKbGu+hDchV2
+zpv65M+9ZLJs/YVVujBo78tVaCh9yGTlUIz8nEyt7jB9MzCPFNyW+6XGTNQbJapZYEylZ+b7UfY
Bnbb8QGXb88BNlIkCGPlyVNxioyYlc6yZ36VskcA5+JZ7FjQFkERX12SnDW8bCmfQDo5BR8YsLXX
d3E53BNebb/WR4gjflmF13eBW2M+Jq6M2KfpT83pLfYskuznXgOTxulyDct6BuuWs1zMVpSA+z8r
2JpQ3YrvshQrG80IIaPOmx8fHu45U+0gXvLvZGaGDdYuJgy1g++6KzUGVaBpr4FYFh8BNwCdW9GS
iUb7Nw+O2BWJ7Ll/9t9Jo/4X6dk6MywXDSFlW4prTN/qR8UEhLPG0x5wrlC7fxJ18gvY1TNaOWPs
IPNuDEyGhMpzFvMUwha2YWRtlScTSY2K+8yZD7Dkc3ND9Z7i564oyoKOTR1ShEUGcBV9OkkRwXUc
3x8G8ByGq8iztGvO3ZYLhwePyN2phYkbDbstzghqllMO4QlgFFON2zBTn5X7vapeSEE2zTCAF7U1
XI/IHXD4PZih8g8RNmpzQnk6ymqsgaZcyaZntcPTRLdlvvekWFTqAmnPTwZwZM5/13wzCY2rgxiq
ii/mwV9zhLqbhg9pyeENoGuobq9+Bjnx6xtrML/YbauFCHaF0zGbe/urtuQYvYDR0Fa38pJDl7J3
ZdZASWlHpUQFVUBJWWWJaq9JGv2pHTXOG9GFTgQp++AL7ALGq1Pka51qObvPC+HIqz4KpX5C1Svs
CPWaj3Y/LfUCgWPEFOaDB+XS9uHOkKl/V/dSxWLMr5T0oFoHa9gwlM5IsxMOQgearV1XiwdqpgxP
mBP86cBBAVrvJTM+DjSfOUzGKhMqSvR6QDV/8gIxPYfLSnKjwo6l4StMT9KaO782KCbsLx1+226J
LjlPCJ8q26/3r2nJYK7gH9l2amEx4l8rR71VJXJ/uycxoZzKEsQLTiQv7+97ybs6X5WElv3hI6/z
ruLbMPqxXHK/qqzYcIPV1FrmLCvKzi98OYVOkcp4c0uCxA7dz6MmZTjxm/bjNYAmKSmJNPYCQ6ph
DHOx6JyEkSlwctAy8SfyABaWZNJcP/ESeLPx50yI/nctga4LZu8gbNGNtbCuUy3SfLxAmM3VWp+b
NtFUFNMT+QkLauAOLhmHOG4X6zc2lxMFX+J2vsJXFryOebbn3ctmad9cDClRCLZLPqB4yJU91cKo
SqLi3lS51ZzjvzM3P6wR5d+JZcm18DJPlq+R6lwQudb27ZaL32qTnxrwfohiGCI4gSm3rnZ5InKE
IEB91ihjazC0VCzYAWSxE7FvgCZa/7n4stnIO5zV9oaHMWnG+xWid7YjpNF0+d+MLWL5O968y3/O
ap8els8oSvdzleJF4T7pBNvB86MSajdhNKR6dly8tJ8gXMAQ1UurgcwDVTBLgw751Wn+bkDX+w8C
86PwZD8brYkoTmcljSlrv1zjnON02Jj6LF3ikyomPxoO7x/Gbcg0rr3cwmD+9ZBDZndlGQK9BPuB
ufWuYrcooskeSWgIfljvs/eHsYu2w0xodPKe6EFYpU25YXIUC6K5yxMmEv0ug1RT8RWAkHMfC1ln
qlq58DE9NMJI3LydMxLsHZpEx8IUgyQloBdtypUGVx7BjehE1csyS2vg1hFIlNq6jxj8a0VQD34n
JWO+TCUsbpsjEZl24GJpDhFqNKs9h7NXPG7zWT7rsDOvUhh2dvwo3+IFqnDNlrYdw3R+eNcbW2hu
RDuG9QUTuRrN8/Q+NlFQDH3D1J3TrRxCb5NRlIJ3CgjBhOyp3LM59MyeV7Z3Pr8Xbpjq/3soOncD
cZpPHExVqq8VGS3LuRfzel6Q5BLz7uBmw4W/nqctyEwNDjrf/mR7dHxQJclvi2disZveUdWHsnwN
xLY7T87FiMR69BAWEN59zL0Z+B/z7Re9ojggfMNWHiVQmR5Saz9ssEQKF+GO5LnMVjQKYPmcnqae
D9+4SY9LwvDWCr9czjVvWnDc3PHWCH0vaBHvtf8FSJeL5HeTfdsk4P8RolwZYV4DfJodeTpYX6Sr
8YF3aNKusVS4qN2hrfqoz/3QRqqlCMFCU5L/peOG7joTb58BTsF2zDeLKzYAl0lkeACUr8QidWWG
Cp3e2LLSfUFHg7o3+/kpHZ25mdkNmRFb4ryX1K0O5Y2aneOju+haUcWvpMXFoxgMWIME8nLJubPC
M5Sru48b2iWGEUjQ41SHIFL8w2NgWq6KdlN+F1RkiCvoUw3oXSR2wYjWwt8TlY2bIdC2YOu/1lmE
FYuKvxKcHUlFWOoAs03QRXt9QYRNYO4peKPraxloVJiYzQlBRyGLyE0M0792+HFCIdW8NwNU1RvG
pCsqffksbEjPDAomGtFlEzNAOlxtR9B/XVXTEexo5TyQSZv42smZ7rr3OueUW64HmgdOlAwMotMe
8svg4ibRWKm061+Pc8yTWooMLtsYxFHY0fran3ACcRBuyBid+358ZaIDIwKzVxCOYvf0yixomxqt
zGwyPwrRi/LjS45Leg4FvUby8gB1V2J8XVl3AOo5GpS+ktQINu5fxILIaIft9eajunRyWsUhDN6Y
tvPWS7+naXaeTpEoeFPLirkiGl4QWJVU3EChTfNW8v2E2GZsUlByKiDc2tY8k9rf/eZEtI7SPdqn
qB4rThkwAFMcIqp7VK68nca3Fo3aJthofQKQdjN46XLJrLSABR/TbjvjcDq0Kgf3iNKOf8+nHGHb
N2JNRlxe6+FFErBW9v9nJQHnY1rNgpL/a9wwDsURvKIg0GPXnNytUQc8gWiSW2ZsyCtOcgUdMLTe
Bn8=
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
