// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:40 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_shift_ram_0_0 -prefix
//               msys_c_shift_ram_0_0_ msys_c_shift_ram_0_0_sim_netlist.v
// Design      : msys_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_shift_ram_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef, PortWidth 2" *) input [1:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
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
  msys_c_shift_ram_0_0_c_shift_ram_v12_0_14 U0
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
module msys_c_shift_ram_0_0_c_shift_ram_v12_0_14
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
  msys_c_shift_ram_0_0_c_shift_ram_v12_0_14_viv i_synth
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
TpJN0AudjOs+15PjbnA0Oki8aZhBpVfJIOrIwJMOMVbXAE9GBYWZxtti+1uc2vgLQ6JwE4tFgWfl
yZJxrMjYfrGNUEgRykXQm9ibORndNBk/2uUUzh/WNfjIvr9q5xIomKiBUtxbahOemjEVSuPi/1jv
79wBRsxG910vXzE3SHnrCFOzAZR8LmU5WMtUZ2HOHg7NBchDHOd69Q8Mk2sZDi2BAWgHqzVM4PSh
QV4UA1UbQaSAAs9JZ21gb5A8ECh0u9gpITPEaKyfzmFw01NLyfpgKBkotcMxO4n7i1DNKwmLJ5Zt
Czc8OCgy5/ClBRAlUXCa+gdBE/JyaWmYKKFBjg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hM/4apnzTz0frF/QCdsAma0DSWO23p05vXFZ0+iYl9VLYMLohEdOmsVJWi9HRfY7Cld+yhcvkFa1
G7siQK1DYEQ6fTXAtwTXVEq2AXfikVu1KffylEih1PCLbPJmZ90quHdxZH+KYYBfT6/dIOjch0gn
nWA2G8ILFbG+nHG9PKIp4voKNIfaB9TPy6ugw4EWATcZJmybHVCwZpiBqcrcuHiN0YQFVhXK8KxY
gjSLlSPhZuc6uuxVCXB95sqYY0O/MQ37aDgEhrfUEI+gf5DFZN4sfG0FfJf7AZA0pfst1yO5QUm1
pyMXApcAFpCFPKTPzCe9guGDAazUqsko5kuEBA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4320)
`pragma protect data_block
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
GLk8CVv/
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
