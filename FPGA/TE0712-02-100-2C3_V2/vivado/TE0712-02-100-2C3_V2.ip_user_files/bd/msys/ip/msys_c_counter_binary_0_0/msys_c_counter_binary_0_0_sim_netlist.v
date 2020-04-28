// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:06 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_0 -prefix
//               msys_c_counter_binary_0_0_ msys_c_counter_binary_0_0_sim_netlist.v
// Design      : msys_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 21}" *) output [20:0]Q;

  wire CLK;
  wire [20:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "21" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  input [20:0]L;
  output THRESH0;
  output [20:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [20:0]L;
  wire [20:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
jG9ttTeOTBY/3d2dWAopv2bdwgGdX8YYlQoUJBcBaS35yFKjB/3Wpv4MX7cYnIvhsQ8xYdarFY+A
oEhKuTghdQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
K8DLnF1GVvNZkAAlAi+xyMAV7L4I4RYxKMajQi+h0yyjS+zzO9nLFwDc7H4GM6X12+4++f1ki97s
lYyilBWUrAqxl5I+H0/DdrmS9qNqiwVgZJN8MSSksp7bGTLu9IAx8eFBO6pG366Ma8Re8p20VpTq
sYhbzjjrrduwq7cHbeQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
00Z8zG3jPy6V3Q9tPW3vxIx4KBg3CWmNBc2p5/JRXDghWhNTV0MB0EKVFf3PgAZfS3xmHiGinq3U
L44ksq/DRlTDB69kWd/U8mzLj1Ww0bL5X0HEdWhr2HrV/V0DZAo6BuSDf5jpEz9aYVZYdHIPcWMq
rtXOqchT7J/LzXEI2tt31eJVwHm9GcUDtOYRAXdrBw80B8xwqvoGS9GdqrnGhtQLqVFHUCh4MRQG
MiJTtF+ygq7xg2Ix887VrZo1kLsHyFy19f0q+7qvPMEGidjdvEVhU5PL6Wn5oje5gHP1TpI4xijl
Z99A/ky8+/ykCX2Tmh46jVz+KSi/iemqph0DXA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ped3TkePyyQnW13OXiBYQ+/mlmHeiIYQY6NzYCfqYOj2ul1Xa5hUBx4KsL9OiS96NATl2LfRUR+j
ZUC5tXZbqTGLn2Zx/T7pFFWvR9ijPYjYItehPakTeq5oQ3rXyiHnDQCQV9fISm/GtkebtezJfexS
87iE0oBpc8h4xpYcfD2G3qGYY9Bdg+bl1QgCzaX6hryhGWcgbsHB5sIYv9ijYws1Krus4j0UEI6f
2e00zm3oJqvPfmMAo38dbGDJn0ZoGdQO9/M6TU7nO74zFOdblPKfhRpcu+DYTTXeJmJMrH/oEt6M
rH1T1aPMudATfQ0L0HJwhwrJ3ISXnfmVUmXGFw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Womc/I6rkM3LM4e75QyiE9Y7CDPBrA+wXLyXu6aPFXIyG39UhJP8sMKJjXVYJ+xk9X/xxGnC2mZl
Lcq5So41r2jxESAPDA5xXIE/NmYRVLQCtWZZTHdqOQIFTqyPWV7FwDovPlDEks4mWSTcDtLxIW8U
pC4XKg1GbYdIYt5ENrVxkdCyxsQNalRHFaKOPqzdgmd0Bagm1nD5nopongSXxmyd3x8TNukZoaTH
KjRbbBVJlSa+ZaSlAu5Lk7akpeVydXYZCWmBXTPHk1Pkb5Kvjm0NEj04ju0KSly8OEgeUcZRCjq7
o+cICHCcX5+Usw3vFOc+sC37XE7b5pseRJwD9w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ATjJSD05uJJWzyTJNJMlxRQbHLdRWIdDRkjWfIM4OEBodKBT+H2RlYGT3GbC17OOqybR0kjXY8Qp
45iJ4La4i6vpBI5ia87rKp3qk7mGYMeGew5VMEkbQiDl9hzJb6zht/QyPpy0/idvl9UbmYxNmHNp
e+PrV7s99vd6HoEqCbo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jvEpSBjRonM73IPTfMQS+6QHkQnEhebJk/VgVfyk9VcH1QERHD2RyFq4XrDdOuX8YcdYpkyXvKy4
0e4kc8ElCF18ioSRpDmEf4jeUyDMfN1eUmH4sfHBDvKu3RFwzoOC7HcdqG7Uh+e3sOloBKFlBeFT
PR6o9GSgfdDnreGoOnJ51GSxVGYFY13uY4qDDUmR0U3r8oIXhcIpWUZBnu/FRHuNwnkJW2uDqe+N
q9GxypZHljXNVN34Sx7/kRSu1AZzsO0zkj6Q+ci8ksP13d3Qp2gwHsSzavVXQUZmezF638WmTLwE
cb7dkDue4+Z4i5ByM4XEcFSfkIZMpCDqdtxxnQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RebLcQqGkZIVromeSuAvcGJReaqQ6JcBgWFfMCSG3QcXdt6Re2ZP15TfGH5qKBCXFotjETHmp/I0
wGS9wuJOuKxKULtbXf1FJoDZUTbg9wCA9MdU2A1aJwEcaoEBW7LASSh1w0MdEeKJR2D02fDdyKwV
kquVwg6R7J8SXnb10r9mpNEF7l+HN85vVfiCPr6jKNbt27oHXtabLV93gt2uO6tCHaMzF7rS2bha
yyP2VKImcjYGI/n1gz75HPOcnIidv6MGHuXsOWJdYQWtIIZzQ2xyrTLkyQzU/Xs/humuPADR/qyh
Ul5S6lnzQI5VtnMjkkO/KhecJxSc9pqpaWfWCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D0H7RDGvBjjIFnpnl98dvTiBdExTHUKSMSehTG6pImMsYUDKbRRgVPjWvd1yNT5vy4CMUro9A86l
c+27WdliH4FQWwsFZKvXoPpl96daWon3KG6QK7WHjShIDgSeGIeoE0M2Y1ksMUK6wV+hQx8sAjR6
0XWjsJsY6NF7bpEdCnI/6G99kbJ7uXPt3nXki12AVq4o23Q3HulsV227/pAA1xyE4v5O8Zc4L5Xa
GfVik77feKOe9uoOPnIRp9E6VeM7881nQtIeWs6pD2qZ1wA70gwhBS/4lE+1Q9Kf9+iMBhd225HG
5Nrrr0SksOCMKF1tV25nbiVTsTYWM3YHtK+2Dg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6IRIsJxD8MvnzXea8ibAoV8wVnm2rYIFelj2Gs+3Pl/clDX5MPPn/DhgI7YbhuJzc4Vs/XvsIkI6
OkRspPNG0XdEYwOyN8sSqMpnA/hq28SGorkJytEciIoJkFrjlZ9fwgQKNc/UK0Au1f/s1yREdJoC
oKXySmkOw8RwBmVFgyQPoS3qSz6l8Z1jSteRp+LN78Q+om9jDIlzxUjY3BautQu+tldxdKPN+z9H
VwMfSWCAuCOBqKbVBQIu2RPY3exJtGW0uLe5aPvPsjyjh48h3MNOF9jG437YKXLHiJZBqde2o0za
jpDuHvMCIvg8B/C0nOZj0cPSKrVjEYhJNe15Sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10976)
`pragma protect data_block
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
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
