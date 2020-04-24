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
