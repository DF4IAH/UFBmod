// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:38 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_clkReset_inv_0 -prefix
//               mcu_clk_32mhz_locked_sr_clkReset_inv_0_ mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_clkReset_inv_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_clkReset_inv_0
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13 U0
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
module mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13_viv xst_addsub
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
