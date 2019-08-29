// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Mon Aug 26 02:10:08 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0 -prefix
//               mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0_ mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0_sim_netlist.v
// Design      : mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0
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
  mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0_c_shift_ram_v12_0_13 U0
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
(* C_DEPTH = "24" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0_c_shift_ram_v12_0_13
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
  mcu_clk_32mhz_LVDS_locked_inv_sr_ioReset_0_c_shift_ram_v12_0_13_viv i_synth
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
AOovf3EsKKqftS4M9WnpTjG5JZhgM4vwAgMZgJ8+fTU+/bGlV9QXApwCCP4j/RdAGgdUezX6vfTl
+HPj029ikp/D52V0mO5LFLhjq09c4XCsoI9Z7jFggwgvuNa53w/89gOR+yhE919NQiHYRfsIlXmh
gndBC1jGwfY9cZDxPLDN35TJAugcLoGWwbjSyoHM7UaKY94FWW0f8D8QP3eKnITtmYIYEv4LeGRk
IA0zGTrenOyyAIXzJezZSYFcjqKVornpj7ijvSDVcjwd5UIjOor1rB2OOT0OsanaOvBUbosb9qBj
2urgKSZemRToLLMf1gku7urLEB5mbcN2heuVMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CcpFCtsod3oiwnhnKagT9RLfapP+ZALChXN+0eF0UV4+Cx30WYHQEXTSqPOLf84VD1swwzdWyu0F
/G+0/dkxjPg/cJyNnc8tXSv1pzysQ2pcfnTAekdtRlHStgHueO573GhjdhyJIlEl7KLU9sPQR68p
h2ozcVr0EzWsLRBrttjM1QffQ02n8ylxb/z8PDBUWY01nHQlTRCo7rS4nDzss1fCjg7I+dcT7bbE
Q5dKfJp8dLuyFlkpzdZK3VNVxR8NI+xkIBuu1y4NcsrzvdwkfZ+l2qNBqFDGsf4+mxP51NDF2jnA
MrT0KHAqzKOZ5aGhqhcL3ozNI+MJlhBH4pAANA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5552)
`pragma protect data_block
KxHdWdHAC1tXmW4QXT2Efqccil3f8i6JmqcxFrPWDN0ytXBujFCB0mpCVEI7zWLm/nenZaH/qD9W
r2NKaCF4ZWsV1uSeb/DnjDGI395EHijcBWmq5uXl1aH8BdT4oRDXTO1LnYG9goF0EUEBWmWCp2xQ
ZmwR67ht0l6RJR4VpNVGlOtlwd7n62NxNLh6APwTzFm1zI7kP2CwMZfF/589dryQoXm+p5MA3WsP
U30ppRifxjlwTpHnw/iWHoiViVaH1MUiHzwdt2MhMhR8X+klXu2AS6SdVCmMia1CJJgtU3JTlxLq
ZWS5lW06n7I1R3+jK+fl9EQ1v1Cd1cUSRkCc3jEQNUyLSbI7dtvWa1a/QlNpWRfSlHOEVIG0S47P
9eesWvc7Wjar/OiPSyPsPBMSY6yP0tSfdTajwyXMCJYbdD2+E6JiMrQLL1rB+SxYsVi9qq0u9yzt
/XLniCI5iZzGXjl7g796jTeQX03iLdZiF7VEHO/jnu1ggtGQ1aVCGyrQd1juDWKB7PbzuiN9L5GD
+vBRzEVFxjSwweHSTKRsIwIu9jdLT42m37bzYq3UBghPgsmZvSiKM1aYZmW+WK8ApU7LfikHdbI1
fzDwtvaJmdxyzaGKn+YjNh04yJVRn3vCnt/YQfgEDOYQDF/KD5sUO0kA7DlElL8CPk6Qaw1TunKr
c+zOf8jNKfH1xjbmOTA4l60LufU60TvrKI2duT58MBwRlFpcz7PSzeoKMzOnn0UKl/49Zec9FVzY
3wGI3muIsc/Vwd7iHWhYrz/ldWdHBupqzWrpS5ef1f27pRgIh/8kw9DCE7hkNiIH2RIOxHeiTf7l
HcGV9Vs+TABXmsUwCXhXMRh7C1zrBp8ltblS1Kc0KZjyjnonK0zRvp5HXDpL3EfmnyzPoBDxwHhF
6zLCYPNjW/oRc+B4YJbOfsgvQjLPcaRx5k+ARpWieFK5JO+gQFCxL7yQ2GZGeWZZYIDck+TCqQIl
a73p+bJkfqXoJI7jHcNOdyD3oFXS8pBXHYjcLmUPoc+vlJeA+HlHvOn1XudcECe2j6MrhRzaHf3T
0K6vwKid+LxQc5NYeKUO0rGPzNQQ2dI6MftdLLm5WbKDBj8EJCmVFS3vOdTj29MivI+N7SyZM/Sz
lpfSlxTYoL+aWT4YF/bR2KK2rFVdi54n/pd2jAZO/ZpbzSsZJRDjjjEJ12jfeeuYAmOtE8z20BIb
L94O0Xr9h2S41pAXRGb2A7p7fUCLCemz7T1FEKQlQuq2HWRurVGuXb3aa9a2MitPJdzYc+szOrL2
KYNnv3ESYUi7NCltJjwmNqbLg44U3zO298dZao3qXm9uFddIOxfbr9vdDoQBq5KL4GF0ajk+kp4R
o1oe5bOhQ6ZCb3yC9ACBcqjuhS6L7dWqMgaOYAXeqZFH2Z2apM1VsW5j7FTviiOetsSDtUfk+325
uMyqFhwpUConhZybciFMpuDsPpdNshq6oAvK/I0NbuOujaE00wAjRwMIA0aTRUA4hYZ3WRL1JUHb
+Nb4aMwyI9cQIiJcb7YNZCXjG/eHs5HdyetpCU08ygE2WDNS9p7I72D6VNW6N62wegfg4OXDPCrm
fxqjiK8usTpVQsa/zOvEKkX83KNKmL+7pwT6X0nfHfAs7J1HJgw0pQKtPvIBpZIs4YYzEBaj8Jau
2fshGxAfBvScOxj1+Eu9IACwcZao8/JHhdTgyxCNIwQlC9hN3qClT/UrLUWerptKCvOLKrWzGTSN
l2Yb2VRWlIx63eNxCPX2OY8m2Ib/xlNVPKZDmVaxm9IltfkyjFa2nr3ODJXmIqVY0eR1+JhahfWi
VrvKAEgJ6T5fTIugWPrGY5ZrzuSg8lVXH9Iuu3UzIjA+HEdrfngHw5EfQzBiVad94eFClE4HkLnC
iPFEVUIW266ZJOrDhilmtcTH4SfjrjJJGt7nVaoFpo1/dP56QRwG7h4VTXnZOYtW49yH5UENyjSO
lvJCt6/j+//U2j6mcB+crQqkAq51bcVSpdQCD5a4ropksa1547WwcpeA/IzQZBgg6t39uk0Fq5Vk
7FzlN+tGlRTW4c2KYD2gXb3TunhW60yYEQloUWsqr6QLtMjSj0FppcCXdWQwiozU6XrF8bz0ecyG
CLiUjljp/fbx8f2nTbc3ReglmHtuBwLRr6rjSgwXNGser+/KCcLuilfRO7zkgTn7iQtAhMYnt0Zm
ufr0ugrqLdWY4dDLsZQzWtVmZ4q3/6XXz7Pr4sJJ7RI75/UFYdZFIl1c7gH4ran9yGJezGOmVchs
/UbFP/Dn/oa6kFrI03MHKkgfoTp6695KE6x7oh7tgt/Saz0PyDS/SfP04v8IfEU1CbvI8sbJZo6j
XDxuxqIJDayWVjARqWXizTqRAhvmpWXGWTzNTTC5gT0Hfui/QZJBhdOvxVqjAL7ksuUkSXqwI4zT
Fp7QWuwhKP2ObwpNG/tGftn6pDcEDvuCw8+FPf+7ax4N4b126tXVWZV4a3WdtCqWez8KHTsiVA2P
ZRQFuI3/oWTp3qJ/MoK2hpJuwztZUHZu4/yX6m3h5I4+j8puMka1AgIS7EFaBXskUjbxRHy5r486
S1jHmbRAK9sjQbuf+X7Gxfgcub+vvhPNSK4blKRtGxovndeQu+BCR88NMfB+o+Mz+2SPPRVBhqZn
234B/iL9u693wIQNMLlKf9g5QN1UbTle/HuwnC31SYhMF6i2IimBbbKmOCeICwxNulc417z/u5lE
wGMTw2OV9r3D6QRyHTHE7MzIE16tfI4o0uySl0aR7a17e7sWVdkCuCwlDWqWHgFJL0jTQvm3iQRy
oag6yAi/YejAX3J88xY8fQcnaGfYyIpIEFRO3woKAXtevyu8rEiaRw6zKLABuJnl8+rrEG5fXbMW
q/2J1hS9cVCG19ecsghWBR6ZmIwcOLlVsBZyikE8bhyCZwR61l6ZLwI8Q1X33TTZSrzfJqOQ4pj4
+jjE3AlGC1L4ogi0ALnRAKdrsqIkjPU7V0bWr51hI8ChNWGjzC8Xygol5EX9AWGCEt+lnh0GoD++
3Hzt0L8qgcb+nv0/bM1IRu+oFS1g+RiPg4xne//51ft5oiJdukzjBqGk6R/jmYvmK/EUOiyo+8Nv
f/8xU+hfWkz7ihSMVi+kq8wb1UWoy8Mp7TQQSeQ+ZQXjE/Ww6Yhph11if1UgAnLXTX2rg3TJOSqV
hweTAOSsgYtig1j8iB2SE1GeXts4KPDdHwo9rHDnyQBK5xYPK4Wn55xhap8BLUHk0wyDmea2DAsn
muvFJl64qgw+TVjPtKipK6/Np1g5vYrllXznW34nIX3HwVD51cwIQdqk6MpQcpLd7jvKco4ZLJYc
a90oov31JF1eqmSRWCOIqTfe23913Cg+rYsGs2glDxLfv84wXcnTtl0a6QfojHh0QGZxH4SycPsR
qIbhrTG1fIFoiWv//SbsfKe5+KjNv6pHorG4QLiKyCpV98GUN9vuEQ3TAVM9GYTCr/cMWKEv4qXx
o01HySkMOYGxg7XvP4XyIenuo3pt1XoBaFMWaGHZt7B/d3XBUCXqsSUnWQFnEgPlLpab7nCbbBMO
nEPRvf4/H3Z+Y+bPD2VP7KxSiC53o1z+CkcFuj7qpjPxTWxsBd1OFCmBq+N+N1tPn3CQy0uvtCCT
nGxDdg/ffBhfJxuYxf60/Hl8KxU9vV8G44qCFc6+h21KqGonnKuY6zxXMpbHs8NC6RgAK05Brn4M
4fQw24Pru4eeKjbwuy31xBkkKdXlnpuboywEes/Ibtx8X2P3g6xBOoZ3FTvkjpd/WnHgbAintLCU
BMlyxJsXdQXW+JaSE9SebAJAxBfwxi8aziqYGVzxf5XbeTZeyfZM8mABRFj3kAp6yVmQ2Z9Inq+a
F7cdNUyK2OgMiGqLay+XC+8jyOnJ8Skee6Zc/RVha+2v53iGVGbnug6M6ApESektK96bq26y6Ij0
3+1YsVtEu9MDDvdsoNfLRED/+bJgOklbszd0spj+DbTMNdxr6+8bZJVp9X0qYRaabg8j4FztJf6a
kwSkpweRGMUPEgtFiEcxz4P15dwWau7w4AyB1IAURQopEIcncz2hj4ugX7JXgynsyo73A5pBANPc
C4fegvLxPlKrVeWVVKYcHtGkiMRUzwiPNUYzDAKK416i2pcVPpe8lQqpaRuv5Wa6nIQRZRYN3t96
GpEweGtfZ2IPSTX9ZKuxFV6lYRbgJqlF7UYe/yx0RTgx3qA4DN4UmCdsQp0YrU9n9RZqgV0mAQGK
FllXtNQVbYaX/b/Gsuotup2RZKR9Xj26JFr64Bd1CEtTKhme8tK7vNZKlew3NRlZpEjv9GZYRnZl
spBpx2hqHMMMGTtC5Dceu0+dsT45dJAn2QSPLaWgs74ZmYYhd8/dLUAt6aKebto7MwOtHrumCWeX
ITKbJ53TLXcNfNgHVfdwv1NgDgVlzZM9Cwdl9IjTwjQ5XB/bCQmzX3t2qQx/W4UOtLFfZR4lk0qT
3iO17LbvPCodsfnOiNLZN0xejt2Z+BffLAVJ4hBC+sKgDhpfdfQD/5uQopTYp+nJRTCXFjAav7sn
R52nryc2uchD8bg4sELQrnCwoojMgPdKwRfY4MeeBljjQw49vT7yzWaTGoIZWXM2jEdYCNQbrkyD
Ic1O+AI+gA5js/7rfAc6WJGlJlZTmf/Ynf6JvH/kib/4XdcMX/M3AsWxMly0LXE0DRwi5oecCJLa
5NzhM8UrJiKjyYxQBei68O2xE3sN7XkTcD78wrvoBn2aobxKcaBvWiygOO/rowtVSN4yNZvTL9Tb
30ISW4QtV5ylU1qSyHP9s8KHX0LdyBGOgblvXNHUlj5J3WJmBAG8QBmXzDidBo5w9bGKUGwf5S8R
57Vog9Wybk3lCURvjbYxAv9G//LGZGZ8wXuyOdh6FIOzxMaoAXFtNCkDBP7sv1FEL7riElsPRMGD
S2GIBeklG66RlH8Tajus9w/UgsqBKDaFkciXC3BUiU4rwIS8RqbUaKLLh06+0/GiEYCKWcnW789P
a+5mHPiX6pCwInshv3opUlMiINmnC43Yt6EmCrtvfLjnipfxMUUNzCMp7E1mIMQD0yKxX5tEYeE+
WTR9zqNm1PyeCKztYrcXGwVaY/Wznl4foyBZWDmly99uLY4q1D6kvZLom9ucZ5JBsrRJZE7DkxxS
3G/D1Cx91Y8vM24mkN2q3P6ts9is/7T6Nns4j973OkNf0GBtPDMN7XKOGVWepqoJC4BbUuGCA5b9
zw3u/aZIzhYh8Utk/YUzoj62icbT0p9F5vTuGsVuhst6N3lf75O3kxjCfYGacFsXQwNWlz6vntVi
nlLuG3CMao1GNJG5Rx1yAmVkJeDCfKKy8QH1+5Sv4G3I50XQ3OcK2mq5nOVUu2jAttKt1OmfpbjN
vhu6zjNBIG7z5WVS8jord1Dy/ouUDbI6kA6j3Ou5VlYZTXTxbtCg5QHs/I2HNoaYIrOOX9kVOBzw
0iLly3q+by/ke8lQqJALnB0re0Ess9aTHb302HW+FIvXV2bXMf2WDA6Bdu5Pjhp7pj5bNMMr2Lyf
f/Kn3OHM9ooE1kSLmYOos/ZrqURXZ2Bsebr1S/0nQm3Lh4DDddd8sFRjkIwCGAbFpEHJJkq+1mgh
ZzDO/CEALIVX/oSLAJ/pH2AjBktL9ZpBjB8XyZinHMnb2511za31v2uu5tGzNDr5TYfhn97MnqiX
vpSz7v8+KRDzef7ySvxswoLm0tYgVMpVsw/gy/K2Gu5I0iWNtgr4UlPVH/qWct91T/9lFI1ygZYE
Czo6W64a9/c/+ueddepE77jIbVquAv+LKHdgYuhBZt+cl438qRRsQkuhnNj3tTl5+GvOvZR8awg1
UAJasxJTsuxaU5ehUSRFsUvDl+1FQSKLAwYSKDCNprw4i02xjZ9bhAjjV4BksrMHRKvulEA5mku4
To88bD9w6LJhBKWwgPD+puCEIU19a0auODFj7n06gdZ0cQFzzF2qait7aqGu7MRdYENt0ystnmxO
KlgT+Qir9oyY2gM2MPxunQeLmGh+rT3XyjEGUiypgLTbHMCEqQ6gZ2r+N1568b9nOBaOmW0tW26D
jXacxGos8mp2Ex5/CfNWEogENBhsNq8q75YTzJg+mUbukZhoKRNCH/SifyxcCNeyBUfz0um2A9rk
GgefKxr0AHfIRat5cQEnJfZNt7ZqY75h5VldBGkEOgVqmWqE9NqV0ZFf1f7PffzY+40wWlcSby9I
mkXDDHo4ndV1ZkWmTDziqUd/IYfj6qISjdZpRnAKrptwkdPtamT0PSLEjgV3L3F+SOw8f8g4kID+
KuPjhGF5+e48L7emdqaU+dWrKkaGLPCkq4WCf+z++fMQVV2H5aPZzouSTXC94O/+ypaHNZadhqxi
eiTHK+bQj50Hm4KLoomJKqdQElFhi6xIWKKAtGExax3LVqoAAIGFRUYOyL8WAlg3SBvvOC5Lb8DW
AyEY+ehzJZ3VNf2SJoWx8/5Mu9D8V4p2YtC9pe7gnfyozi48MWGdR/2NfI8ZtbchX5H2ablY71QY
Zh/rrgldJFDCXlwJxEAroKHNolgvOjDh+6dAghM/+AQO+GXR4ntGaq1Jyy59cBhhJG6xWRXUJpmH
IEQYGDwUi9KN2eVICzyJuJWuBTNIOrsflJBifbJPRkzvZNPPoSNczSRXJ1laPBQ2QoQGXtBBxEwd
+f+leXqePggPSNReDalXypXSeXUWA6frQxvv5mTX9wYqE6+QSke/FoxUc0lZ1Rr71ZT9Mwlt6HR4
M4fw52ziIdJcMo1jSSvbYLGEIsOR8cmBoToEd9Bnq1N2IddL7CO3qFt4yJfqAP92wgB9SKIt5Cpz
tLT39wptrIUh3IukCaEixfPVfvlJYt3kCjd7ZaGUzcaX+ueBICem8SzoiCxlS8iyzOzmcqxjaHye
O7MQIL/yjcdsB35Jc7+VJmNJc187Td/rOHQdayBOpUSp8Agjg8fZr0zD1gcjg3eMzSrR84sUCxio
sri2xass1jC5XEEadgbGFFqmO/43UdmYlXC3SwNBrKXeCTOZsTKQqLjEz0fKd6YnulluyIh450ph
2AIXqh4G0XkyD9WbyQPVh68YhKGPN08zOImTmgnghuGF4ZcNWQfuUXtfPq9Fd4XccHuBdrmn8AHc
vmRqY+QQb1XHkpOv2NyjsJdQUN+yA6/y7Bpe6GKGJYjoaueoBxA7ySQ4e6d9NDjPEGVKIstzyal2
z7v7gXbnkzEgTcY1yHheVw0RfxfzsiX11J/3gpYWkIrEdhfWm4dozWNCm05D9DTfX3Uz6Qo4hkHH
qjFnn08d+UxcDpOViMym4TUkvAlw34sesIha+IM1cFfuXy4e+gx2HhHkP/ocUKCrfHvHqI4ftUiq
q7bph9TXr7+8OVN9KnPgijr339DTm1w=
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
