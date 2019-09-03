// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Sun Sep  1 20:48:44 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_c_counter_binary_0_0 -prefix
//               mcu_c_counter_binary_0_0_ mcu_c_counter_binary_0_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
S2Mmh2wVO7lzxW1acao1s7xXk20Ne49JpW4h0ubKeROWN37KpXtMq+DwUhkbbTldEbHSJLqsvm07
y56bFXhQFYESzjA1aX6oOcJHy6xsl6J6s2o5y4KoES27TJ3P4+YpdUVS+BMtQ91pifdRJQf046EO
NBONKh4lTcCPtftB+8qkrX4sre0Jkf/EILXZeWGmIAM8OcZKwF8apL/KvLo3nxuaJvhm4podWv3X
0DsijtUJiPZIZ+VlyL0/HUmbsIfQtR/gGjUUaDVqQ+3zMTUvTXgp7OfbCYAEe2hHS5m9/R8+iJMK
WjZqlml8d6fcfyJzwzZb7l+9Wl6QZfbrHeTf8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AdmlNwj7WPPZPs5KHIhatm2ftkh3QPmeunYIEWDtfz8qeWat2jlS58MvLyk7+RvxHVCA+PHjCgHU
poIyMlq1BMGumt+73XCei8xwt6x3c2DMP+E6j0RwqgscEa4bCY50Oj3fO8AOKhp+NDJveUufa0eX
5qntWfRGIUjoScFoujJlHTI6WpV0w8Iumx0aeqfqQUcq4zWBJeqdrqHIfGwDNLJdzJcSUDHc4+EY
cY34DgEAjAUBF9LL9+Z9XooAnCobxsTfrsfZswhHj3fXECZ/7SozvNZUSt/AvrP7yg7p0d50WCEw
2gYPB40N4w0eI1T5XC7hPtXTqsy9JeiRjEThog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
3BAAOIQj7NI=
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
