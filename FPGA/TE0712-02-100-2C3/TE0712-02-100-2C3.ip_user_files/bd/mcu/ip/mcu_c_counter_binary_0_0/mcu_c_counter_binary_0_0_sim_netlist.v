// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Sun Sep  1 20:48:46 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_counter_binary_0_0/mcu_c_counter_binary_0_0_sim_netlist.v
// Design      : mcu_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 64000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_064mhz000_lvds, INSERT_VIP 0" *) input CLK;
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
PA16/lBRHSSVQAwz1fk8liM9k4eHwBWL6sTmSScvwNUeI7XlaZ2rVz5+w+lB0+/RvSNBWhCpb2W8
Kj8oW8zbew==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZOR+Px37FYgFpAfHJPNj1jDrsFrnqrzokzg3SMXQoBTgCy0U8bo9NJ9Fs4PY8OkZ/t0FAlH4N9cK
pXKLaAtA48bGyR3sIn3rWb9BCMR/dbZUNkIUDLP5P0WzX8H/k1Fqkp2hx+LpLXAAwOYhSO9e05X/
ld72nWtLHPEHEYsEcrY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0Dce7V54Ju4W0RW+rn2lj8ibvcvV3BE+Ine2NgfWxDMqAtyD9ue9gcFHwIk+wPcx6e/TkOToOz+/
AdBnsdsEHUbZOOGlB8kclv0dpIr5ZXD+XT1LJPt9foKps9UKLx2Z2Z0mdVBAqu5ZKXO4bTQSCISw
CqgcbVLpX1wTpzFCHNYEaF5AndQGTkeEz7nm2WyJVbM5wVLvAjGtMYyvSLxN0GT4pUzC58X15bIM
FxGKNYboObn3RadBBOWqwLTzUyDlevx+pbjLM7xl8OYON4QjMNOeUYUMkU5PFj+8EXVycAGvHnIN
Rcy9CS/veAiFz/mAi9/lMPZZAYO8OdYOaOKjnA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BAppS5G85KtDnAxF0A47kyhwQC9v5vU3EEF1YVPJOEgsFSK4V4Dw5FYjSYIvipVRTSwznkshRCvn
QejQwNV86yuqsOQpmnKhfbNzW/REFaVXbwcYeKoRe1nClBX1BiyeO/hyPRMo0fQm88J4GIsm0ywc
n73VN/SaaDJV47gxz9UQYfJR+7xKC3Ph+KnUMY3Opd3VbS6ZsTOXOAmub7KCVuT+H0eWPYRva0mE
r8ekbngTyNKb3eMqvIUAcUdwzg6YGuBLaOJg9/aWDJRMi4SYHADG1DqIYnQsyr9gOH2yXAOtDkC7
Ascx/LNoqrADiGj9drNdY9FgQIgaMbaWLAjUOA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WbGMtoftiTcgv9O5jjDlx0uCfpMSdTcSG/he9QiISkXyR3gM+Ks7QYxbA2LYZ/E0n5r9Q8vKO5K8
t0IZFpBNO3MBKPPr4dGoE9piEBwUWmSfDA0zbvPoww87pjHC539m+iwijF/h0Qs2BZJt3S816803
CPj/+jthNpNflee50Mj5h0HfRhNnVDGMwl4jt8o1Eqr192Tmc65wqH75+GHgqeEIYTQBfcIG7ZEM
Y313yuG0BWKkFCx8n7ZE9Z9JUrC5ABR3GgMyc+87kOd3TAcDP1QeiqFJz6hGbYPkf02xPFkPdVwY
zooisrcdMvrkv5cdYtXbhIEbqX553/sFNJz0MA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
P2NPzmlz+HrG6BrTCj92kiQzOEni/QWn9mhFIk7m4+2plUHi33Ur55x2ihfKJMl/arWmGXPZBRFP
YN28YiAhBZtjbrM8iqneCwp9W7rS8AF17odgK7XR84v/ezI/JM8+bl9TDeU+AknT1eJnDfds0x96
5X4rF+NWlykERsUiFpI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XfQo2rK0G8bLQbPIx06l015K/tzdE/TTQw/+MjFQcN5/cQdqTfTw9uyoJlF3Ba8zdGdgAPgSJYid
kisdXWJKOd/HzS275QXN0ARgnDh23vPthw9xO1q/KxOUz+eBv+vjONw42BMBxsDzH7Wqbit81xnI
q+FQ3LtF+4OKvkPUOZXWLGmGXwdtrRg5V42U6lpLHUvCb5f6wtz5TOtgooFItQgP7WeCEVYMBXcv
bvg8xuBbFkI/qJOZ5yYQEdetM/ZY8xilLwplsQvDZVtxENlPAChzdU/bC1dlcV4PzHEB9eWobYVP
u8GSu+xU9QXd9cWuoMLhM8w3O/eGx0JiE946Ww==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dg9yvewY5gevVYAJuX5lodFvF9qcsk2GnQwErGAc6BgkDNJ1iaiJVinnL9/Qezwcj4xcJojr/J5k
CoBdmjeGkZn4Boy1FmUM+WrE6M5cIOekNGZrQgEtUcs9+ccqZcZk6WOi+CQSW3gLfsnX7rxjr94L
+IzlhIYaswnGZZMIexcB51F4IhZhsbBuWpETspSpqW2IdB56Vm6bLfJqZ8Q5hEpTsB2pvOKr5Ixw
nzFo18CD7cacUJwUeD3Va/rdm9dNURccDJzZK/Ic+uXQ96baW30yuk0dmXTt4Th0jMJpt0EUd+IA
PnHgV0hLFqCO52k2iMmBhMKpNpPRCoR+nr5T/w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YPDbfFG2f/CZMiwxk+zSKzmO6yHWzFh9MhMXImoQrQ7MoI4vfl/1LzLex5RtqWYJ9S1VyApCZmYg
Vrtc/HYP7ubOt/l1Fv5w1sV1ZT2aSYRi3L23AAfxCVSl1xbGrfMxRRpALvuoYTKw3dxP0HbvweGu
yRRkVRSZu2TMSCSyO1FIVhLCDI/na/mHAia8pnBPkYNnQnuWaEjpO4sPimUibyyhoZBTSth/2v8q
eM7tIMj2XLM03K1lGcz8tdgisa8UV678rdb2s5m/r4rYMtmaYsk9s1HMyiT7uIqLc0ieMS9dqm/E
ltWp6Iuaaa4wCSPpCNl6FgOUROaU/7jlN5mp/w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9776)
`pragma protect data_block
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
okKik/2xjZ1Mfg3jkHUqd8xst6RPqlWOYJxtw1M=
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
