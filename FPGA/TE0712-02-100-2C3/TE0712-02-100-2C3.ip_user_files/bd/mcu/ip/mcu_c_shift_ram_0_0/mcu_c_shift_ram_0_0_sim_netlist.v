// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:01:41 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_sim_netlist.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
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
klQ5h9hgPT4p1YBkLUYG8lguTKRhX0z2xODTfvC0iZ4ANS2ufXQ4XxirL31R7wyoNNR1hd7rMjwq
bhFP3bRYRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m0Wn8/fGtoK5/3nNxNBBvNhfylkjw8jAoTERkIzypaD+FUTSQmf52TpAbVY1LPDo/g6d8tzIrR8n
vZ2G5ckAbcwDRGFF5wpZ/kzyANCTceWo7S+WbzLbzhWkG5fkJbJk/tafbSvqruxodmgtrUI2IZDv
n7Mrf4GRIdC1iTgv+oM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mC2bSkADVOO0t7I1BTHPnOuMcPIdeypycvBkfsUtXFD/WSov2Pt6qF5xMTcs6woq+465yEDvey00
mpX9JC1ypEuHaZI+dtH7s+A4vYLXy34kFLryTKJtqycAy6XqNtTegvy4giaDFwDn7LgsamHSf/4D
cVGL06Ul6gm+ZOMvzok6Y9TBltlEkZOZ4GncKspHPcn3EJar4GdDxKcPll1RqSFbA2m7bWz6jPV3
uOD6IWnIflyobdLIsuB8hse3kjXBG5sl6X8AP4armpo9TNNnRIRG2FoI6g16Sj6zldS9XF54ge/w
jnsP0vce7kfzvP1LjtFrWdW0raW61dIddZVz5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LC8srWyP8+H+elFwWxNw8UhEF94Tx3vV4OlwBcwFszd9xuvwYRipLEwY4ar7HEoCwJI7beW6k6I1
ntJSXGEnPMgIDe7PadSQIz6gi9ErRHWRhWD6bEDNd/ZjFQuOakXk78jzxOTKuOpQ+ExjdHImyPzK
mDR0BnkVc/QiSO7zpOf3yjx9Vzb0Fba6OgXg0iLPz1MUr0ahYIc0MAkw4pRBo6IH5ilqVbkgNQcT
G4z/0OSzsBxipE9o1elAez7CnehtEQ66g6i3JpIIwqwnpZNQ9otSnS8LN/spRcQLOUuBq9ynGkPL
sF7EUF1gLkTFFMGgnZgawWi0V0jhiHQkJuLKPQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijV0yStg7uRIl3uzK8/hlbIaWGHa9aPC5Eu/o1vErrwtArYsGFt3RCyG/S90FB6jkuLgqwPR8ZlQ
P9t/F2FWmEkwwjGbdrRKFfpbkjh5HVn0vvLKCP3SiVHXCOWxxb5z8BV+yCNdpgdnsHFecK1M8ydQ
C530kRu3UD1LcnZcWJi41LcJAc5rvlw/SP1gbl+I1qsRNEHsb+MK5vyjgwBZAqKyqi7/UK1VEPdq
myeWeCRrU0GqEq5y/PHBMknv1SqNe0d5qzG1rmAtC4df+iivMCc9xuHsCA7iqoe+ZKnMmnA/8F6+
nY+gx8AQNplCeFxWppKH952fIYplHtE2rKQyVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
saHlQAxOuJkLItpv5N3fJoJP3EdR34QNYHtUBFx7fcQy8HAUaZ/9Tlt2kfpn9r/pk1MmJ7uf4z73
LyaG/PWw7v3yH/KIVSLeIxiaSHoVfdWH1/RDH6k3DTDNbWSJDOjGSvMTThUKe899F8IXTD5jKxCh
frGB3Io0W4klQV7ADEw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RFiy0rrSiVrZMC725S3XkUSDuMS7Z+xog1sOwADnIBmdCChtYLUQVO9oPjXIujfg3bBFTH3qzII3
Y63fFMSZnnzk+ups3RPMBqEPPdMQSwlpDzsvhCOwYHe/rsOPZvqd7lL6QOKoA3mS9TZIP+mOaTKd
vzQiVyfS0rs+QHdJcw49jD5y7Dc3clQHD9xZMAMUHa5v8hzX4IOcnkSUOLpsZptR/WM7rcMnTzCL
x6m2UC+xSrwrb5vEz9cePMHx9NJyO2DBG0HTEDzGQQkrOCJJjvBxtB3r/E7/3eWGHvMwphSJnfCd
PfvYXz88X+ZVCW9dTNfc75jI7ogVMSunmtUuMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f/jpStoPbrKXGD8c5l+AeY3FNdxcpVM9JJdF40r6w9AqD2bZjC0l68vPb93YFY3BDPgbCSFV4RKm
9CzPU5RgAkXQ/rTzU6LhSrJn0qnPIgy0Og0NaolQfMDS2FmqGdttWfcfT8LTveg4uNOYh3VYc+X7
koWC5xlSTT6Md3L3VXFbGWHPHzG8ce05AJZRIF+IBMiX4Hdvb5RWdmxRaK5dbyemMKG202jfqTcz
60tUgVkK19BYZppSvC8URNpR9ZN6bMiqlruybbVqDlAFUyXtN4XhQHUbbrlnr2o4Fcxz2h8iglGj
iZfog7c9IbCDkkd8erPv5A789F2M10To9xX2Hg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VJF3/Olr8eVJmhd/fIzIxa83JUM9t7bTRsw4NgA7vsEovG/Edk+XJB12wj6KyUp3cJxXU8twkx/Z
OH/9HQnLOiOA6fDtZyQ8KoAIcdK31SoRQ6cO7nAzQn8e84gmNkqqFC/fo+44VU61MpCLdtaqRSFp
22zbpjGySVItVzFPOVI0NF4wWH97IuyxhpILfbjGTsYJ/Dql5k/dYxgMYsdLo7Vxuj9U5LNnteSs
59QbMEEY9RtueFWetaE3fjsltIsi/Bo8ZYAtS3k/rXptIPVAs7sVpd+SCHsTgIOHiG9cMa2aFDoi
RBUAFAkiOCcoSfPFjsVMqoFybrOTwdHoPpV5kA==

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
