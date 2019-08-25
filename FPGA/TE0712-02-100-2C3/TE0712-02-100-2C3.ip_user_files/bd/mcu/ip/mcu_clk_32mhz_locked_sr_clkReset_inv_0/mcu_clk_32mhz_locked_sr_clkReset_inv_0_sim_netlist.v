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
