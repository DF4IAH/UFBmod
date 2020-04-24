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
