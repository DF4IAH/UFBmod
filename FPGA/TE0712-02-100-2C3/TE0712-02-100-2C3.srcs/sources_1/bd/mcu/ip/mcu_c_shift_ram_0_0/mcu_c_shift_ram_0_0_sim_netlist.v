// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:12 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_c_shift_ram_0_0 -prefix
//               mcu_c_shift_ram_0_0_ mcu_c_shift_ram_0_0_sim_netlist.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_c_shift_ram_0_0
   (D,
    CLK,
    SSET,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "24" *) 
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
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "1" *) (* C_DEFAULT_DATA = "1" *) 
(* C_DEPTH = "24" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "24" *) 
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
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
b799uCcUfxZu1ao7zeEzw8PS0JPPX0oF8R+kYsVcL/gpy0Yo+xnJbEp+AUvVPfbol5u8vopZTh11
wDrPCAU5fw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Eqj76iG3AE7UMc9crPG58lM/nobT0dZidtwTN5RT2vNF+sxCeDTLjJYXlgdpDnb1c6574LD+7Cvh
fB3rbUhV4K7QZ9yj0wN2cSAG5g0jAu/zHXsHgMhcgACnyhpHwQ54geapn/RMof0tb5m/whyGqL+m
iJ3AUFGWCREUSsPe8Sg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gsUdXiTl26V3zIhT+V4THSjhxJ3/lGfBlDr/6/BwsHPL2Dbl6Ub62ynTBGmRpo3HeSVbdLrvkKRy
pc0SXVeUQfvQdkLijWQs9naVYARmiLnPe6WpeG7BDokfPX+VnsBQBFW1c6byP44TPcxZXujnXXBu
Prm0Q23IGAbGxht5zbTlQjyqYEvpfkfV8aW8gf09oqbgdGF7TaEW4R19z82ZLr9qLhZf5anw1Rtj
Ox0TfDHHUop+xewbRw+A7baKXPXjRRV72+mYrmMLiE70XRy3Zi8trQgXr3XnzryOYMHD0CD9Do6t
XWt6/kto1ZYyiyEj01Rd20hf1YNCOX6CJ/71jA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KTG+OhFcRwZLQ+h0AE3D9vIJ9wtU3mIbhOhF3OpaB2FrcY+gooBNqmjGVLVR4pEpd2QE435xbgvc
xY95HOytJ3oc9OQcSIF8qaASwr0SRsg96stWDs9FyOGxcARlbWEj51B9FlW/0sxnEhHHgWFJ9SNW
kkAhyh4bNzUt6TDt5CTpiUwykuwSF6w17XANtH64Gmy+YeIs51p+Q7XO769gjqwDAjEzH6vglvTx
+WI+82KIPJD/NGWo9LusRlOY0JsuagUiib8vEhQXrmdWEkByzzZlkpQtREeOr/tcEdb4Rlt08pwE
mtwxYG7j4HlPelGjOGBW7QUPyQZ4+LqkxGoDPg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KZFlJRqsmRXvFfacag5/k29DkbgF1nG6RQr0eDGZP/6T8/sHyqHV3docdzurN61Po5j/YYKUEauG
qozPylaafHqoA7Nrya/U8FdX+vAQbLYXMKqswkyNcgYuK4o8awzAHIPUkKg3IKZGPFXSUI+bmCJF
FynisGmiN7QsLew8SEB7Tm/+VZrPnFxxJJtahygkIcvBmf6ymNv3nFjgPCEPXO5se7JFB/GcfbiJ
6DAXkLPrnOFhAuwCBWQ3ndRHZnvKvKlbZsCidHKEtHMDs7z6KZfjl4zvB+O0cvtvZqC9Ub/Jjko5
GSbDLz3zCeYbbJT0IA6JH2/T2bucfbLWOnEGBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dC0tSByvfZHQ5f+mv3i29gZvP77yf2/wvKCIN6ntKN9SK0eJTMr7xafT26eVHIF+p6J/qcGm9s6T
rp1wQze+YM55XqmXn0BtuPQKwzyFRnqBkeOFpAmK1l4+OUmMq8Gl9KyTTxhLVy3ezq4y/56OQ26k
GnUeiJl87N8+DUibqQs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMXPBaikVBYdIVbBPZJrhWLEWchFdaOWQCP2gxDQFgjMue6siiFsFGu2/dmWUkbB+6sUpD+fL0iq
ptIw4AujeRqLokgUMz4FyYI1Pxi0ntiw1OFUEFFJ+RlN15Cb2FnmBMmSxhZY4Qh4gUyRMInmaDW5
V7fwZAhby0NgVhVj5JFAoSjIYoEjb/CO2VycaiPpWaQG1ttPd3m43ZvUFPqh33Tom5tJ6zOgnZz7
IaEaSOANGpAsC9THZtsZUDg7Saz2syw56cvnkZjwEWOZoBj6LCnBJrPO6TIV+IneRiGgn14M/5R/
NmcWyKzr4aRH4+04xCxfcv98f/+TKq+FZrt0gw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qk5V4PR7hY0kyf/amn2jv2HQ/2Z44xcgzCUwXjXUoqVSdStoZtOR8bnTIWznYsJV1cbdEfwhsHjU
d7b2gMutAymXxOLp0d2tL/BVI4Oh3P4nNXr0IEoPIVMaeLkOlFhMxdCuWNFiUAuxa+ENlgTR4QJe
QklXmovKvGjsq2zQns9c+vsgiekyadgHDr29sX+1ngF41IlIOHbLl7I5Nyr+sv9k8LNeTyQdd6uz
RasKUVVmA9UnOCG3X4U2R9LyxFM+F5oHrnGgg2G+WFXt3Bt3DjieQnKg2Z86kD9jxeeUyTGagtgp
DQ4VV7eojRvkxZg+mYZa6YLqMZhbefkFBawb4Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4kJNUgD7WRIbbaW/m9zmY4Z4hS+6SNDSmZlo8jrBg+2OqF60ztwT+YUma6w8Ao7H2Ua3MPkkM8K+
q7elQGr87LDr3oZ5sYHPsVLNGCXHCLYfO6j/lSHD0XyqqHKoBG+xqYojkpgIvc1y92xhTwUnEikt
m8KQYbu+hONVsplWAm4N52vf6SXTenecHwMSFZwUp1qyFFR3Hql5lbemoGA2k3FkOV0jbJBbVmTI
YiZ8ICRUIaNz/qNFPAD+BIPzEQRLq/DhK5vmohWBRzRcufCCcUvvYAEJK8u1ErsLSs1N+rlTvqBb
bpLY78R5BwoHpkKF1nrrqyfPF/sXdgUhfPf/iw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5552)
`pragma protect data_block
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
Snf/mRWwZN62zB37FLtPdiSwYMXw5vkn1Q==
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
