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
EgyD1HWCySyOmPr38OaniYEmzLLfSOHQMg==
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
