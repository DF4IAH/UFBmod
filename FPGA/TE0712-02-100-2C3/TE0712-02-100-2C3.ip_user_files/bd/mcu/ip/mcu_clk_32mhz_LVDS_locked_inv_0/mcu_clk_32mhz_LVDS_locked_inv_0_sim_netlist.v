// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:38 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_LVDS_locked_inv_0 -prefix
//               mcu_clk_32mhz_LVDS_locked_inv_0_ mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_clkReset_inv_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_LVDS_locked_inv_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 32000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_LVDS_locked_inv_0_c_addsub_v12_0_13 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_LVDS_locked_inv_0_c_addsub_v12_0_13
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_LVDS_locked_inv_0_c_addsub_v12_0_13_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
puzTlOQOrgzZiSsyy2QHI224uzEILIPOIK95RpyVNwh3735bBxWh7gVg//aWuLJkF/WxGfhPwLt2
rGJ38suGJA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nxNn6OgbzhaEOHmmfZA90k9PbAZ/CrE/6Deng4tMGd6UTBjv3LwrvPFJibJg3H/OacCePpf5RhU6
hNQaN1rzkx9lphQQCedfOkFgHTtE5EoojPa1eNHgwy+yJuvNzg69j1RcwVMMHu0gRmg4IAMxR+NX
TT0oQsvbK/qcYYW+ODA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XdeJlQVnhnFgNtdsIL0whgNCzBjcXH2+ZQOPQQaTwFqeqZvT9CzEEjV1jO06IK1UeaeoOb4N+are
bTzUARxJ9MbL+sGDzlSt1De2cF/hMZUra9fvHEfgi9mwK1W8eo1yQzbnch7cj79CkopcxGf8JSTN
gUiezW8H2NA4FhcbBDYMjuAZhZx7u+bDw3VoSNB3JE3vs1nGOyjGkY4JEeJuWvwYemgWQcqUBmMd
OFLZLBnh+gRAbSDoCaJ5r6nM40eMt+AqN3gNQaFHhvwZSv5mvV+abPmDRjk4Z5h1II5CVbrDt5Gu
dn7L64BtmEgFddW6366QgFSN/Tgl9ChXbCWSLg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TXUDSxmNeSuIYWrnymNwlV7j5VW39J0rZVhf6YLniUMQc9aNs1WmN7PrPFFZU19I3q93SRPdEqaL
M0QtKYWkfLqIj51pSX1zn6d6XkADYyWGrJ/CaMbFGENkoON8mlTn/TidtSx8W+NWn/6oKD4qdlqH
/wrWtIw+c2etdxiXyjAc2a+l+z95Uk7rg4mjFfeOTfdhVy1ygQUJGaJEmhsmArmmlIP1igFHC/dF
Fr3RqrlSGK+SCj2BZn693lWDPayXTA5uO+esZEk18lfg/5QpOJLnzOls3xyiMn0M66NaBLULzkWA
OhPPbhA43RbWVNzSe/sb+e4ltim/vrDPViGSiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RLQOZocj2L6yLb0Ga9hrsoAm6s/jd4TXu75jSakrQvaakyFso3E5lilk4sQ4vw3MPSM5uOH3+mdo
KBaBBS21R7pur7bPSi2biPjYzymnFPYNmBm8eNtwL99MogaXoWGHbwdCclgXIHAAXdVI9cmZ10CI
mnBrsGipjZTUufBqo+3bhrt3enMebc0SO9VvJjACHUBOBhHoYasaPFp9D1pE9pRHwSXfkyenZgU3
n4uLWA16RNe4pe1ZwQPV6K3bLtBKnaifcDAKVPzHeh8Fdqz4eFNLC+McljqA3OHTJLMg9PeQRs2B
sbSSHuLM/5SuLuBV0R1ixw1kKmohV8TPU82mkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QqOgRrfR9NZ8Rg1deK8wJL3OWcWjhUa4iaSWvV85ZNafYHF9wZUga5M5TPbQu69DN9L6GvSIdgro
rz7e3Mh8Oaj7S18COVYR6yIvUIyU2lQOjhw3JtncTNv3a+ofOa4ebFMnyS56rOtdBVF0nXGQoY4/
QGh8m/DkTC35W0Pp9HY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DufzjtkczAXkqUCMRvgH4x2S9dpborMY0XXZpK+mEjcEPrTwAyeH+yCV7g8HtpDyKCTUWDl4lqza
zPizDWXu6kEFfZhSH4knTn0yJAAiupRWUg/vgZCX4dvHbJsVdcYV+xOHn5Dy5QSQrNnPJaJf95BE
4jR9va5Afcik8nInoBQzD9lkGdmTEqS1PvzMxJuVApLfsHx3e+H3zBb82ttEDZD8NBtl3pZcb3rZ
07wFyBrtpcavskiirU7UHZh+J28vxlKeFl0PKS7mla0HMwPPa/J8xnfMroNJD2zrXQXUnQULGO5y
LbLajQIriufLhWZhXsav6XlFu1ODtcO1cSZt3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DuFmDapQWlapRpy0IiwKwf3zfxdsr34SIfIxWhwI1zZAkqUColopNjpedzvBondR8PGYbSVw0Lqo
MdpTdSc+i72rNVLPWYX4bOOxjRTgwQ+BT+7pL7grJ1Bd4DJ56n8zN6MjMKHz9AiJ0HUQ88uPLnAG
2QxlbLUL9BxHiGYhmLCzG0FInKts2hgUVXCjbklRwyXCFFANhd5Y/2C8xGeKDL6ZZAQbnWgrXId3
JZJ87h4vPLI0EoCuUOGeEGNGCjSY5SJtLXcJ/yJv9Zbz2ptDO8sG3caCfpwCtOgypmoTvgwUs8jc
HNUt+eTcBoY5J/Km4osvVgS8EAA7emGxbDR6ZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jwh5fx9C3TozyCPvRgxc4i9mkPUg0TnXGcCG/ggcgAd5uqC3eHiuoQXdYGNJPER/1es8Gi32ZlAt
RWPWwu20iZxhwwTcMgeMxYMW2WNWj69RPXapNvIAKn2mDH6HhoIef4btODAv8NX0RAw8zsq6TF6q
LbHMDUNXXCLXXEssPZ3dkEQRDe1dPqicF/Pd3YPECfb2AK7uR0I3QiHIp8I1iHegM8f4uewgS2oL
vyONsxnTGYwCHVj5ligLy4c5KcgjUB9+0wZNI8DHjyA2Oc2nkhMAGlFor2/Gsse/OT7aV0eraUYu
ZiyAKykwishCG+QSLYfiuNHSTKC/wNmMxjd36Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
b4Ra/dRICIDFnjm3/oL+Azx8UUN8LSHleQ==
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
