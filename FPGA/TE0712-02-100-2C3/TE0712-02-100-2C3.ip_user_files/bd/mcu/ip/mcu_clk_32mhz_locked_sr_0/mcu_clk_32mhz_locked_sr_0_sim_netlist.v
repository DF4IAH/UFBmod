// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:26 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_0/mcu_clk_32mhz_locked_sr_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_0
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
  (* c_depth = "6" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13 U0
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
(* C_DEPTH = "6" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13
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
  (* c_depth = "6" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13_viv i_synth
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
ljTHUU8bYCvFVmSPHjKLDqpWAhciLS3AYkirGrAbxKFjr/6K3csD9E1zwoZqehdLlSUrVwcZXIt6
BIA8zNWsisvJG6yH4BYoWBFDPFNbbE4ulPB3yEnwIxFiMHZOzikBDMXSLpGeDPheoUEnhfFe7UWg
O/mV4F/AP03DJZjOMgrAaG4sWAFFkoDodYuZxneB0Bov2nMJ1A9vemzfWDuT/GtMV/OBHVXWn8iy
7A+Wc2r1M/mB7f5Vt58bAR7H8NkEli303XFwmDkOy5Lw7umue0z9Jkl0enZWDoddTSH2RMbV6sQY
PJadJajFC9CS4lgf3Gz0R28uGZ8DtMp8qksHuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EyfM76I5GDWNlbBrvUUbAQswQLxDGMbiJZ3TA2h3lDtvj7o+xmrPzujonSgbf3iKd9hBEIfA7L6Z
TH4ntsDdZ2W4ZQO7lTp8b/EVXkz7hhRWuJP57zzTeooFKf8U5vq3Rw3eFb3pAzQkTS9/cfkHndiV
1J3wd85+X3zWwFuDfwUYlqqoBSvW85yKMGFbQSHww584aTP/nOpg/mRtC4DXiJ8efuynUavKEtIZ
MeFpRPcbd2RkMl/CJDSjV/87AhtqHKoZJX5oeM9yHFpYplOwwQ46y2Mrk8M8+3Jko1juS4MUeddi
5q45mxoMSZRkMoU7sAGKSLjYM7eNHgMQS8CpfQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5504)
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
