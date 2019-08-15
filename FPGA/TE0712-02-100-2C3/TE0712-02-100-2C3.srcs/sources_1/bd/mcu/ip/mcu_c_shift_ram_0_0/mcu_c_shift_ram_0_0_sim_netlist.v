// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:14 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
WqA7WibDGHm7KPFDg6mNjeTD762evwSOyZg6nhfihe6WuJgJAcmYjetaSsTk3Ry2X3lLpxz5iTdG
BO+FAkpOIq5La0sGd9ZTunh09TjAze0dv8IsB4HFpiVDDKYWl8fEsrACqw5tZL3qjFU+dO/CrRQv
PXv7dkavKnj1fck5LpxtCiahvEl8cJgdlMWyaS8GOEAnSW9pc/h8VO++NLsAEbGEmI2lDz3BKK6o
mYDSFmvAiG76a+88rPmJ6kZM2HvokkzADUg0BdYoU5sq7o30jxmT4UjLmU8IqHH/8ildvmE6haaE
QhXYFGkwRoDpHoLzWKZQYF1Pv7L6mFUehUTfzQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dy+NRGXZeCq4BNLUudMEwCSCIBHmJ3HWyVYhbT4ts2jbB6C0u2BZQ69Q0IFNZ8XEPn/9RgIWVkfx
JxkBc34+Fs0jcdbp1ve31qgdr25ZhwHCIv5iBoA3tz1gvJsvJTL1lY5wzvzmOZS+VKsCmUxD1LyX
MGnjgzTr2StgzBAoFwrg75L//T/4IYoO1D9RFMX9CJkVOLljlH/YKV9en6O0jitW9pcwW83/eNUP
GlpDaI1fX7xNV+opyGPZ+2MkLJNnEcBB3fSu5TVeagzQAtkhn3hp4RLx+U+24AKLJaHYULA2lJ7/
xj9mNf8xYuVLXA+uB+5xlV1e90SYPgkczOqxGA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5584)
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
