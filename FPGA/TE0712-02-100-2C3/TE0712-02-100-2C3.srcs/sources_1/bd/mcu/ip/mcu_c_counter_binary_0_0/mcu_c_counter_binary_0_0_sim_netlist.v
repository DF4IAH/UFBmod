// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:42:20 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_counter_binary_0_0/mcu_c_counter_binary_0_0_sim_netlist.v
// Design      : mcu_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 64000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_128mhz000_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 48}" *) output [47:0]Q;

  wire CLK;
  wire [47:0]Q;
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
  (* C_WIDTH = "48" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_0_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "48" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_counter_binary_0_0_c_counter_binary_v12_0_13
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
  input [47:0]L;
  output THRESH0;
  output [47:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [47:0]L;
  wire [47:0]Q;
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
  (* C_WIDTH = "48" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_0_c_counter_binary_v12_0_13_viv i_synth
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
I27g6MYD4MW0QL8wlWDusLpmUQr++VIrJciW4kxAZvD1xu4xHc71nmmtQKn4RXprTItt3VZ4jlYb
W7sDjTzN9g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZCd7ncP4pCL3bR7D848emv5B1F3GIhdyKdOrR8YDzkxL987Xx05dubKjo4b+YR7j9Ecj4dvvZe1H
6adMwXtSnoRoi30g04SXknicgV7eAYs7TVosxFfBt1CNgOyzN0bQbEUEFceUCCSfx8G96lJC7l6k
w+A3ZWFjWJVg1Vt6/vk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WdPinNhXowL0eItMQjILfN3ZtNRlAFPcgUKQgbQY6PjgOLOq8AYH8MaWMxwJ1Q3XLuR/CpJ3Msf8
9ck26xaGFODD49GyvXEm1m8jiFYiUuki4s8taTUnBUe8UmyAXLQtV80x3pecHd3LuDlAHzqlwHLb
RwNUJ8jmu/WUllodatqqpKOBuaenIRptuK0/OJ4m/EhxfYY9CrhNzvJ2OB+5wKW4GAF64RWui9+x
Bqw+bOAFz/60QdWNUEfYkftioYtQ1bPR23AMgCCwss6e7ZAS1ZDoUsWca/IzfDGAnuGA5fYYttxq
uoEZzpjupgu6Vfe6XH1ShFfcTJds9diYIBxF7w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J2PI9pkL6e7AvAtwdDAKsuYeJfRneKgQO+nHNIiAxTtlsTW9qYfsuK9HIkf0Sb62x0qE564ViGrS
3wuHHLwljmlXkNuh3H5s1WSIvBYog56SpodBhW9K9QsQbL95ZzCqaRj4TQCbxUYoSGwFsdPmmdM7
La05z8feuoK9AbXfQhrl8CwxQ/x9xQWu9KqCdtni2/rS3DBIIvXrfDnjMLkEKBjcfotyV3n5YDPS
xsl7G0OdCDCYK2w60G1P6raIszyzlL95Ntk3rgPPX40+b45hMQ7F7lMQBoxIOoJb8u1v/MHG31i3
lgLBBsa7tA8yQ8i1322megfZnBtOkWTPkmGATA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T2bPt/UsVlHeNg5Le1CxaL61udjoxzw96Kj3hgyH1tUYL6gN3XkvsqfcbtTEYOMh8h8ccS0iuxDR
u1AEFZYGDETWy4UIcIXJiMNJW9mKlMxeX0aYJmt2gk5SzH3rwCtKFV4BE7w8PwEho0CpeEjRbnf/
H/ZBsUMPSTkaly3dWhZ8iwOFxUFab/dTKOrq+/zYR0ymNFfbFDioA0t6O1QvpkQKgAmLKtz48cIZ
d8mpcUcwmUu2smVlnmcYowYxe9PRMHJNRJBKGeYM3CGauAWJ//wpfST4UNmOFt1mBZDKyRVEtdmb
fxus/Lw6a1mgHZoYg82xB4qQBrCBG6m9hlSvQA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
O9o1BY8Sbymv0CVlrYskQzxGr+xrqarG7EPRt/pk31lim//eAelugbq/q5/E+p/kQuJs9wJgGlt7
J4EL+RC/2F1gmfEvMCf58rYENifz93c15KzjI9WIzhK9r51ZA8fR9ZyTMeOrkrakuwslx8gz2Nd8
GtHVrcoDTocBpHaQfUc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B1N78V5eMBUsTRlKv5Ei+E+GTZzSlJSEsn133UlYjp9l9fAT6QvueXKaAUXJstu/mKRIG6pF2HeT
10E1KqusBF+N1vx0mJm+BGQmw8VwnDo/1C0bMq/T7k3skIGTTlpmmE04UhvTFZ5eNWSXF3hpRbnX
7LVz1QBuLq3y5vrznsX3rcSujxWkx6qVpUyrOGyzLDbbTs8ND/8qOUNz+Tsj2+A/fjXiwPURl7Ci
pqZKDVAkBrWTm4hLakBaJZUjicezF1sJAkTUk1hm+9WjXbPsux0DtpZ2Gw6FtD0vv/mLn3UAKK8N
uj2yxGASMChllxrDzGBUQlWEDBX02i/b8OMnHA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B4GUpSu34NQLtGOtFmmLVU343nvQQKypS/SzX199huFenldH6TgYEzWNeMkIcUZqkz+QR/e6dYAV
h8fVyjGdBDPIw38x+jrAja8tuiQ0D0a7Q9NIaGF2E9c4MudR+j12pXRdupXxkvlMdiyRPIqhtlrA
by6jwlpdAR/OwCqW8s6Gu5+x4Wq7bHsf4sllqkrtN6N+y6DpjBQxPeySRYBCge7gA0P8N9UnlIDq
g3J5Ag8+5gU+fqnD2BsqB3iyzOIRHCSpHUgg6jW575ty7VT6nOAz8GMGGFFnch3ya85wbUqxQpKm
mzdgJzA/k2isTytfPBuvHOY6ptW9PRRw3JkxKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iE/tUSbGU6ZwLh9970uXPNnKg71fuNx3rQ25iAITy9Peb+TFIGUmmLSHvCm3qH47dUdtNXgzzpcB
lMmJm7FZa1vSWHYDzRBeZV36tGCuHeZyiHOPboepNYfZsNECHah21fBemCG/NqCe+v7UxXann+SB
dsgESDbSI0Y+lU/+6rqrpF6jJJtvWMjcV1tTpvqfJf2qXZ+C1IJ3KclP5mKKT939AZmBN7NI91K9
182qIoARibFPvmf6+NBtdXNh0cYh3fBWbtJGTFWpdUxH1vsFU1Y31vXFzGhMX3fZ3e411E+LtN91
+fq11bql3wPS8xTFkK8MOogu5iMKGjo0cDii3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9776)
`pragma protect data_block
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
8DSWxHDcIyyZ3kizuboJE8iOYO2AaryKLE3u7oc=
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
