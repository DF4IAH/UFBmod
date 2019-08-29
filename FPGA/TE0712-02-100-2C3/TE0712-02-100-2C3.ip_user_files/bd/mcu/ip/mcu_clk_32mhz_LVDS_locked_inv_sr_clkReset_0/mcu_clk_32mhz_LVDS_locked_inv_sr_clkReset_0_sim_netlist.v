// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Mon Aug 26 02:08:58 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0 -prefix
//               mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0_ mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0_sim_netlist.v
// Design      : mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0
   (D,
    CLK,
    SSET,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
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
  mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "6" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0_c_shift_ram_v12_0_13
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

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
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
  mcu_clk_32mhz_LVDS_locked_inv_sr_clkReset_0_c_shift_ram_v12_0_13_viv i_synth
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
a8PvBTG5qzAb8ZGNaK3SGF+C0E3RKhDpheCIVpyOju41WaN8Xwg0dES9MTJlTVd5+HCCHMZeii6c
Nu4S+k9jpgIffZWVFbFo7uFM0YBYmRmv7XpGIh5ysAowzF58SI6lhZBcF099EgGngbxiAG5XiYxy
8lvdXRwIoJw4SaiUxQmCcOvghUWnKeeQOQDcfaD8OpTlWy1jUj0HKyGGA4uxeNAMRNJPozxia19+
DZeYTwZPXTdUe05zd+gqdnUOkC8DkWuYxBWhcjYSeFxTLJlWAjq0SLWfFHs4cXlWm1s9PuIc9JV6
Y7Os+HiTDNiYjlG1QLOiPfTHLrVqN7JacRkGpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wznoL0c3zrTaXYJz89Gs3ODMHe67p1LvtnMpcaIt3b2+W/+IUyK5w3za0WL22Kq/64wiTMF7ms6y
Z8F6jITyTAU/iPDuewONYl2v9zwKHHdq5OA1w8YViEG73SbTGWNJEgEZiCdTKt6jVx00IXVRZQDJ
xJJI4eTBuRTSh+vl/vth/ec0eQG9sNyl9Tx+Q5n8eh0SCBWkXZkQ6d8h7bQAO12+OWgWOqIqTldL
BmiY/x76dM7ug7VFtBl/V2IxOaFNpkP83QnMvmNT9s5fsqmkdZSXPv7IBLAK2Vz1Ky43PbVo96N/
lyTHh5z/UHEFHLJ9zD3v/cgfDRT8JGvdWHX56w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5440)
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
