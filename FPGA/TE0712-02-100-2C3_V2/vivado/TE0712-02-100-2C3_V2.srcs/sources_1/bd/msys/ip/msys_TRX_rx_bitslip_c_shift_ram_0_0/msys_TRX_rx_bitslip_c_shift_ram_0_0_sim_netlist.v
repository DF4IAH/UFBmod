// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:43 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_TRX_rx_bitslip_c_shift_ram_0_0 -prefix
//               msys_TRX_rx_bitslip_c_shift_ram_0_0_ msys_TRX_rx_bitslip_c_shift_ram_0_0_sim_netlist.v
// Design      : msys_TRX_rx_bitslip_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_TRX_rx_bitslip_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_TRX_rx_bitslip_c_shift_ram_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 2}" *) input [1:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 2}" *) output [1:0]Q;

  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;

  (* C_AINIT_VAL = "00" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "2" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00" *) 
  (* c_depth = "1" *) 
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
  msys_TRX_rx_bitslip_c_shift_ram_0_0_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00" *) (* C_DEFAULT_DATA = "00" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_TRX_rx_bitslip_c_shift_ram_0_0_c_shift_ram_v12_0_14
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

  (* C_AINIT_VAL = "00" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "2" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00" *) 
  (* c_depth = "1" *) 
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
  msys_TRX_rx_bitslip_c_shift_ram_0_0_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
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
AuXbt7ZPFaA1Iyg4I4QyqRRtp+yy3b7jaNETrO9/sZGxUod9J/EG9btCewfxpTcCloYkt7Of7FQz
9niw5A0tDI4+gLfKqYWb/28T/Tlmt4sSLyPaBz4/2rTLWautOXty8qVVDEr6L8u1LT6SV16nwhuv
wm9pZ3SfL8XtxLF+LmAlirXxOWxdGn7J+QpyXClt+PQr1jlVbZ8obxGPlccKEzZ1a8H8WSWl5ZVK
c2OKgCs2nzwCjzfOzScsSI5FF9PpWc1EGzO+FAu9/C5ZywwsJRBcvYdKEWzAvWzEy8/fivAc8ofz
7B7RJPPQtvRK0zhukGOEeRLckCOEuxVYUTPXLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
213dvu7mEMHMjEYzJQx9VQVc8VrQHkAZKAUzQsg9Vok+sEM+kZ15chGQrx7HkRsxBHizynw4OSAH
wk01yocPe/DwZslOFiwbBpj/aELOvXBMe+B0Rk5Y60+bL+vt+TWBUrkt7dnfXdzZLiwQ1FlVZnVw
XZGGrAfuik4hQU7t0XdY97mDDWc84D7IQLnHgU+ZWalDk8v8tjA6P0itCz2e3HZis+CHnCvSxYP2
cWxnFSYlSMWNTC+MNErjc+iLl3QuOZApsotVB+QVligh/eAtnAcca2cq4wwF5lP5puJpc3nkxDdT
TfbPWpf0KNKevpdo6REn6LydhEAYAjGqfiy1vQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4320)
`pragma protect data_block
11V8e18gHkwqxP+Ov3wC7sCCSEMEcZ/WvEKE3l8lewpBu+2DmPmPOJ7ObwXEqDEv+Q7skUg20Hj2
HvTalIHtefkrQOfrPuId+0U4LDxvDKkKzPMGwJt6wUW0xj5tI+qPswO/LgufdwSnXp32ZcCz1cbg
oBs+HAJi4bwFgHTRBqzbSV/uaM0Es+RWMata1KWlTQ9PdpSv8UYF+MDTMZ2Ma5KcqqPrQJh+9rJc
othzhrrTN2PuB+s8NyOAhMwYgatwiIKJ0VMVXlmmCyoV9eB6cmbDl4Me4eBLDCuobSRRFaCmhlb5
nssoAVK3pOS99O/n9wM8qx6gktYK9zcoBFPEtAA+6pu8AnJjO4f9YSnDm+M3bj+OfZzHDK+fQF8C
tx8gFb1UYsyT9+LFdJJtntBNSSsJplklFqe/BFw0MHRbUrZAOlNTgymD+o/b3b6PaJR/Mktsn1Gp
u9cHtYYYZGekwRUPTS+vlX4f+Hav3l1gKAH1kdU089ze+qr/gdtbvH80LXyHnW79teLgIoGvJb/V
dDJNXpBtdEEroiC/wfWqeMIHz0S8xyzKUR7hiH9gRSmLacnggu69RfKAAiMAT/060NQUq90hGrko
aXysjU3Z9h7oLKpwBVizBhYnEQ/KrSKeeeBMToDfk/E0WLy+oQZkSQg2N5FkKY/jZEDeW2in8B4Y
2cLuUZT6MfFKg6l46KcZ1qsaMv3OkiNzGMCE41oETFejaA14H2HZLFhnUpgH36YOrYT1W5x6+cOB
jWZfbcOIOJZEMjmdXXsIj/NMTmw3UQE0z58XbG/c7tvk5kYD/2E8h/8/gQGCsBaRM9askKp296X7
CwVRdVRE5rmVkF0hsJVjGHlxAQEpiGRj87/u4FNlkR6EJwRMr5Zg3VaUnu16MYzelyTMlU1hjPuo
fcjiYt/gCXqCWHYvnm0Qt6qwfHlgvXd5V6k+j03rzIA5VmVyWxR1yv3Xbhc76FW4KzqRnL45Fscg
VcOveSYCw5UFP6HeNJLOg1+mOOcJzlwlWF07lmaFNbVUvfabIqdlNLOy+QxpR7DqN8Uv9MVAmXV7
LptUvuItFNWNcWug4tzh9ZNk6u2OHrvSlSrU0C8hDSf/O36NxNDCSGtSoRJQP1EVOs4tvzxe2Lgg
2WUZpJgjhJ4N6GO6TVhj48ulfVbkyRgcYTWVJYtZzvZoO/LWEstnyCefv/1LtljkXpw+HA6GJ5dy
lD78gYsmdlbrtMCIn9KOMXTbRZ0C9q9t7tmglloSj7VC5GV+3UUlnlQXoYcaDOFrWZNA9rFjGjaz
Qxsadpv6IYx+F0NB/qnPV+BR0IoibrfaJrGQWnsILw2jBWfjiK5VxFuzDubRSB4hBQj5JET47fMS
VaQGQzbgC+C3n5X7PHYQ7j7B8ZEbSJfh4cVt2lAJQWPR7IbLTdb4er5PAxOmgAQKA5yVqGGFKplZ
hy0eC6L4rCs4z2q3kQ4uK6MN5tpkf9J5dWSEyvtHe1kJWOFTRUPF4AsuW2MDRmnNvEmSzWrbBoMT
sYxUrw93yY/uJZv8QJKUe5eXx2hELatfRSWCeEqDACFvsH4lG+Wk2h5I4oIgxYxe/J75fNc/93+t
jLXU7iOFKIvWts8fyh7x1jEcUUhUb/dYCd06DQTKUObUWhJTc9fUwTlycllUXsmcLx/nkOfp1Njw
96imCeXou5cGIkBdhHUnfukqH/bp8woAnEsTHIwuHLhpQDJ5jETmvmQYUS5R5+g/8H+AmQKKdpsC
xzw2VhTIh7ZbHlMh2vmmq01qXmjUM4Vrz7NeWgkjgRVmKP/+E2isxNarTX1wYhhwKhyDgAs8DaUa
60H6qeizb3KtGZ5VmwauvTEA032ycKBHCHsfZcAlV2wLJXLa4FXRFl4yrqgikUcCAgqxvIDXpDwr
pnUiITD/PIhhVkO0qY+zaJnrRcd6W0ebWrau77+I1e3+7UCWDzn7lC5C7vwAhBMPzNz2mez0Yqfm
Dtc1akV31dtNW4sb+ae4R/ioGVUx4TehMWGPqV4J/R7PlRFF9orsYNp1HfvHzCek6re3LRQqCzp3
YhSeb634xWWCIojfFyK6mYLkE+HbNGfPdy4eme20IzAs/YrfV/UbWUAYrD2AxZn2/e2RfWEalS/F
zxsWAACql+a9zz8tPE3scZQoy/NyjMEav75j0TrwW3/bJ6yn6yZzV1kqwqNCjjYb0ZH8aNu7hGl/
5zAG5cDv+bnIBWhmfp98bzGIpbDOKaAk8rKevZAqRd6je1MjTGm4qGypJJhS5LUZwJmuHf6b/Cbb
pS5dBM5jzalQNNg0ww15dO98iEy/b7tNXGWh+9Ot+M8H7odJeueg5V/3odLTV/M8tiwv99gt5agv
SBkePC2n/cPkLQzXyaXZ/snBrWt1clfTjJ4PgpjXSUdBHc1Lve6UUPwY5EmQfg248LFcbpQE5S6m
JAz2Wkcs4yGdvrAEmWfjwmRXZXHkj8paHafK0Daxblsn8R62SYB2TaoXEpQ9eG/Vo79tniczDYyF
oh8aZLzS9+Bs65Qvqilp9is3gst/dze5P4QVTFre0x3/mbrlGWupftnyyEiWC9UP+YRnfuf8xAxd
7+PfNfmO4oj6RwTh/ZHhLm8+j9CwzMBj0eeze502KXL2AWg6g/04xuX1FQEisXaLzkJ43SrJcd+x
GuuoA+kOGvmqOdu4J8WM+7wlLPDLXna25BWpEy2QsdpavlwjxYA0hmp5LOv5hp0aR3IolYNoCfnV
Xwxe1GMJLxOJQ3ClzZPvJlqG+d4mnJPyIm9zdmouIPW7zm1Bp4EcR8OLG8qvddfBswH/xqr0vR2u
m6ZG2Wud1tu5AM6ySLqsm0iUNJ54ef19qpgnPB4Uc66r2UIouH86tcE6q/c/0nC2BS4LikUfaIAV
pWq4vA9Kkn4YDKrngWsQ6OETRX1R+aTlrJbK7VB5UchzlO5deu7E74np8kZaHWMIH1U/tQgUllZa
AlzzC7+A9YCtq3oTN4FpQRwQKKaKimDTeEkZWxAsDC+yfuQq9e+IhzYf/X1CtRToX7forVEmCtWa
hbpc6em02Mu/ESmMgfg+2ClK6QPFCklslqeV1dWj5a5niZPXOCvNIADxyXbF2+uWCmSXW2EiaItR
suafP+i0Q8LRaq/7jOf3Lf59eOGNdXFPS6/bRuYengLmaDTK1XcmITGO7mYj0xWKWEAHWbU5Ho6G
CNIp+N1ya+vzxmPbqlWDQdxNovNmF7pTusoAKmsb1RrQeF8UZxG+XX4oWBwZZcwR1XZPaV5bsxt2
KKyEVnqNFWJAsFMMcqrx16Mhz6txwSB7Xb4QQs6fz+e4cL6wxy8cIW6ZX2CPFA8tLsPPmTlpEYqG
iGCfAXn0gPtRUj07C5WxOTrztZBB7sJy8mHdJeufjZIu1x/cP67DiXUq/2TGpKoSFcsA/EmfO3TB
aymGNf+86g5H36tCeY77jgfYdHEvb4sKo9AYwsbIkGpm0QD92Ble+HG2Q99uchSamS2z0HtqZVhP
Yq65+z93x657mucAHj/VApEKEcB2Av1eMC38hQWvtR574xAb5wndfUEsr119gHbdsPG1yfT4mPhX
ek1BUabV0g78qdBJtW/40rl2k5OjJNmKCLFZ0NdAiMxjDHwZC5Q6+yInpYZuw4g+8Qsn1MZ56Ysc
p2HunPK7MvEeOwT1qhtcSovCTueR982yl2zFCxhJlydC3wR06sFHtdD4uwlCrrg3VVqVBIh8Ope6
sIeOe74Q2L2RTgqvrQaoC2OTypKZGIWFY3mtpq5SqWs/6WTCtZWYuC0TvmKKlj8SDGR6LskJcb0n
OdzHs9yAXnN2K+hdR0JwSLmcRsl7aBe6AQBMwqIj7gv/he/vQJ4WoIi0Yq3fG60ET8UjJdCkBtSJ
33aCijxJhMUJyLXB3OEA9ykqKMAefgmzI5slRN0PJZVjS5T00GIaZmHQpFiVies+w67JwVM9saXp
n9t6qGCHeBbFYkZuOirkL0IOLpHSitnSifjxvRipFOmfRMpl5PK7BNIu38wJueHGWJsI/yeGUtJn
oJjGoNcCY2neyXOsxlPJ0LKlZ/46OW0XqvkKWmdXjbDzUmZLz/bisTJ3Mklz+7oR4v9YRYRqcPRF
ZVed9JX6BENm4Emmn2M2KRoeAtjdICtNTJHjXS4app793fo5itPYh85Bp8J1s4PzMSEZO75nPLN+
QXuoCrZ6M8SIuskD50EqsApoX+lkdqecNqleh0wPI2f3AwC3euC6y5ivyat8nMTKC1I5FxzuQlT9
W4dOnME+veuPAUBJy870+xNNNjsgr1lSzn/PHgeSjs8kAp6MLMm5oFtzbU5yplHxGrQ35L0fAe2D
7r1hNHBJb/SWBDpWcJrF1bD1orLT0JLboeZZfAsInQYc0id6/B5zQxScl+MusE5BlVDrjXOY8nm7
tqzb4yRmLwTNITQFP7vDFBk5j7hdlrhaiPlMvZCmtwEVB1D1iL7ak4a/xdahm0Ij2KRIZnF2zPtB
M4C0prJJjkOKfpv5y1TfQGEaEfYvQ2N6cnyi4iB7bdyn87z6D8yDoowmvIoGQXf+LvpDdI79mjxB
3BjF92g0vh5r1iqmY9JVAIroLV/Q0TYqxVf1odXgABnZQTtPhud5WDX9/26ENy9P4NVMk34DJ3LP
XonhjHUy5jrKYVuxgH/QCyJe3olhibsagttuUhNxaeOg+mVtB3L+gsDAlVumfoX7NitS+rNRuKyp
ymlMMeDj0QR/lpYepGNiVJqsi738FJl6/V4PRGIDttT4jgVPedpobc62Ddd4tO9oDtjw73eeKAEw
qhD3eLXgUmUYVcY6co6h6IJWl+IIIrFzNFbzmALuyt9nlIgfF7FtHG1i8G0VDHQXp7V0wfW8Upcp
tR9bqLE9VEQwAYdgS72MdQBpvveUR3QevvtqPVy4samxr8uP+mmpRoJ6RXr8epSUcmJg0U1UMmFS
rROBF46eoM4o/4r4WvGQK3yKcMjbQ/9UJbzYeCIU/i0sGrhsbrDUaVgG8LVe0xL961UeaZ4FuJgM
rQ79uYXv/ZnqAlnVVfzRMqrCHn+iVmcTP2aoukloLSrMZu3kXrSKP6DO+Wjfv5s/ocJF9AFk/xkC
UxW4h8FSqjgyPDcCDK6uilDwUW57QESYS6BMqMts0W0/SnRYKN8EnHUUbI5/WcamIGBzP49JEXe+
CWDObspJ/MucfbsB7cIOl4Gmp2KYG6xMA0vvbIRMuzQiUDV9HWduoZiWDDhdr2adqG6gqI7XnhUi
3zG/VkfWMKbiGV6Ln/FG9HSBdlV7dM6m+dppHxe75bZBUU4psLetrg9mr+6kdIcbBwAF6ISiS2NV
HiRwlRBuPgMZkexjk/3t8K4yM6U9eHePVy5VKU9Ul8AEc4lo+4i6WXb3lpZHODSzDTZYQo679hIh
SSeu2pJvE2H0jDTu8f4u1TfWlYWSVQ9wIL7hRzdHbIJz0wRQWQnCKajIdA3z78IrDeeisLGvNHvh
HU/qOpVYPdHm8DkcVlJcs6btrG1c8t52pDpJVIRGsv4Wi7oRC8/erHgPuDX2QsDHHZ6oNbFLzSqx
8aoIUbRazB/kb9oPTd6ai+NyE+hSBhEXGnHC7SGhisG+DqjzPcSKqmiju193XyJ75Mt58uvDfupi
09pzULNqzAzgcTl5ssjsZ9aqd+b21DQT8uNmFvTcbyeZ975e2a6DdIeozCuW4tbEf3YsxdPCUVaF
bAsSmgkY0g9KJQc3eg==
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
