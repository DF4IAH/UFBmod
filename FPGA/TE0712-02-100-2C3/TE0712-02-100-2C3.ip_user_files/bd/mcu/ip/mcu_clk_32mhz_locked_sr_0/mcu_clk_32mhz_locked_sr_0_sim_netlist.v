// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:24 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_0 -prefix
//               mcu_clk_32mhz_locked_sr_0_ mcu_clk_32mhz_locked_sr_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
pXNPvuxLBTyVahCBxKKSQ5DFS4nz5+HvkccLJiCyHyXGX2K8r9+PH7jk0OCAy7RNY0zQ6JTyN2ui
CknUIu1JPlAjyAFwwRlWOLviH9tOZBDClNawBqRL4BUtT+ErcTqqBniNHYXp9io83lX6CgEg9l7o
Bs9Cf7g7S174BPRd6KrIrLxvu7E/jXBLQmAWDxxh5N+BpbHKpoqLmnuFeGwMR1PIuVJA/xjueQqG
aY8gyLKkH4IZBAgehlBWsqu2TzL4tVeIrNEvVoaSF/+xxj0onHoDx5GhKnoDlfNMExzVKTkgUeyB
a1ASWknFhymrT5oRwBcN1YQtMD4FQTQyY6YRIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFAo9SsMF3ngTKGkVrysUKzXMv+YxFSlTX6sRm6BSOwJEiTpK44GPpjPAOdpg3gFvwycPW0rU4DD
Li/tBmInB/NyhCREI1wOL2TxXzG5PpRAbvELpuXQ9N+NRBLjrycw1BISKOlZYv6DX9pwUcvVnLYN
1JFA0z5imW+Ngt4OXwqOCDQOmwTPHZxcV+GmV/OrlBlCYUahrZQt5CBkMoBSBvEG1OliMxCdymXc
T9vsJAGtSvpbtty9sbKWLMHQpm6Tzm0tqUTkLyxxe/vB3VLBJ9REqTwS8LbQfXajc1J8/wZH4bTJ
9auIJHdSzkB5cHUDgZ8kQ0oF6jxoSXATHBLI+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5440)
`pragma protect data_block
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
ZCY=
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
