-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Aug 15 19:11:13 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_c_shift_ram_0_0 -prefix
--               mcu_c_shift_ram_0_0_ mcu_c_shift_ram_0_0_sim_netlist.vhdl
-- Design      : mcu_c_shift_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
b799uCcUfxZu1ao7zeEzw8PS0JPPX0oF8R+kYsVcL/gpy0Yo+xnJbEp+AUvVPfbol5u8vopZTh11
wDrPCAU5fw==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Eqj76iG3AE7UMc9crPG58lM/nobT0dZidtwTN5RT2vNF+sxCeDTLjJYXlgdpDnb1c6574LD+7Cvh
fB3rbUhV4K7QZ9yj0wN2cSAG5g0jAu/zHXsHgMhcgACnyhpHwQ54geapn/RMof0tb5m/whyGqL+m
iJ3AUFGWCREUSsPe8Sg=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gsUdXiTl26V3zIhT+V4THSjhxJ3/lGfBlDr/6/BwsHPL2Dbl6Ub62ynTBGmRpo3HeSVbdLrvkKRy
pc0SXVeUQfvQdkLijWQs9naVYARmiLnPe6WpeG7BDokfPX+VnsBQBFW1c6byP44TPcxZXujnXXBu
Prm0Q23IGAbGxht5zbTlQjyqYEvpfkfV8aW8gf09oqbgdGF7TaEW4R19z82ZLr9qLhZf5anw1Rtj
Ox0TfDHHUop+xewbRw+A7baKXPXjRRV72+mYrmMLiE70XRy3Zi8trQgXr3XnzryOYMHD0CD9Do6t
XWt6/kto1ZYyiyEj01Rd20hf1YNCOX6CJ/71jA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KTG+OhFcRwZLQ+h0AE3D9vIJ9wtU3mIbhOhF3OpaB2FrcY+gooBNqmjGVLVR4pEpd2QE435xbgvc
xY95HOytJ3oc9OQcSIF8qaASwr0SRsg96stWDs9FyOGxcARlbWEj51B9FlW/0sxnEhHHgWFJ9SNW
kkAhyh4bNzUt6TDt5CTpiUwykuwSF6w17XANtH64Gmy+YeIs51p+Q7XO769gjqwDAjEzH6vglvTx
+WI+82KIPJD/NGWo9LusRlOY0JsuagUiib8vEhQXrmdWEkByzzZlkpQtREeOr/tcEdb4Rlt08pwE
mtwxYG7j4HlPelGjOGBW7QUPyQZ4+LqkxGoDPg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KZFlJRqsmRXvFfacag5/k29DkbgF1nG6RQr0eDGZP/6T8/sHyqHV3docdzurN61Po5j/YYKUEauG
qozPylaafHqoA7Nrya/U8FdX+vAQbLYXMKqswkyNcgYuK4o8awzAHIPUkKg3IKZGPFXSUI+bmCJF
FynisGmiN7QsLew8SEB7Tm/+VZrPnFxxJJtahygkIcvBmf6ymNv3nFjgPCEPXO5se7JFB/GcfbiJ
6DAXkLPrnOFhAuwCBWQ3ndRHZnvKvKlbZsCidHKEtHMDs7z6KZfjl4zvB+O0cvtvZqC9Ub/Jjko5
GSbDLz3zCeYbbJT0IA6JH2/T2bucfbLWOnEGBQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
dC0tSByvfZHQ5f+mv3i29gZvP77yf2/wvKCIN6ntKN9SK0eJTMr7xafT26eVHIF+p6J/qcGm9s6T
rp1wQze+YM55XqmXn0BtuPQKwzyFRnqBkeOFpAmK1l4+OUmMq8Gl9KyTTxhLVy3ezq4y/56OQ26k
GnUeiJl87N8+DUibqQs=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FMXPBaikVBYdIVbBPZJrhWLEWchFdaOWQCP2gxDQFgjMue6siiFsFGu2/dmWUkbB+6sUpD+fL0iq
ptIw4AujeRqLokgUMz4FyYI1Pxi0ntiw1OFUEFFJ+RlN15Cb2FnmBMmSxhZY4Qh4gUyRMInmaDW5
V7fwZAhby0NgVhVj5JFAoSjIYoEjb/CO2VycaiPpWaQG1ttPd3m43ZvUFPqh33Tom5tJ6zOgnZz7
IaEaSOANGpAsC9THZtsZUDg7Saz2syw56cvnkZjwEWOZoBj6LCnBJrPO6TIV+IneRiGgn14M/5R/
NmcWyKzr4aRH4+04xCxfcv98f/+TKq+FZrt0gw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Y5ybgz7aRt95dE9ofWAvc4XWt2bjWZKyslUeja3cXx13q6II1ud/jT+KfczIWj8dJbn4BW8N0a1E
8HE805OYtBJLBYJNuUPFaASmALt5++Hv0qNfQxqxQTYiX9I0hhHd+eVPFjJ8qjYWGUH2m/BbO3Vb
a7wE1EaajqvFkxcXohG84jIetJcZ27LnZou1OrjGC8ArKwF06BAABrbdKoYN14jbyKPGUy8atjWe
ibGCSiRQZHmqPIrga4NfR/NMtejkViz92wkmrLPmvkX67rNc2j9G6WkmbDKKS04epa41lQpWefKY
LJwf9McBBYDmtCUIa8KAMtdALVr1AtadyJfvBA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZaPZD+jm7VEjsEpO9csXcO5eWoDnFa7kpLRUAstwAv2p+iF0fulrx1uVxGIVYvODf/S9KBV68Z0Q
G3s3xlEAnI4Jfw48/Qt5821XwQuvC4I1eGGev/dNY40LcC4ebpU5nR1BSgr60JEOR2jmnTM1AZhU
7KpZsFEUlUItmOXSxFOBKyniw9LRJjJS84C3zeb9BpOr3oM6VczNZMISVoyBunj6BkvUn9uxj4TH
SpaUqU5Ln8t8tpQeVVYgzBOCxS+qMT8dfFgTX+NRQ7jveU181dcA6eeYtgJ3f7wI/jKvGohxo5Q+
b6/L+KamRTWIdySSLO3Nr3yCz0fA8J16V0bpIQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15408)
`protect data_block
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
G06DRqv6g+E44ugvjKRj3+eAy8/P
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "1";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "1";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 24;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 : entity is "yes";
end mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13;

architecture STRUCTURE of mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13 is
  attribute C_AINIT_VAL of i_synth : label is "1";
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 1;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "1";
  attribute c_depth of i_synth : label is 24;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_xdevicefamily of i_synth : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SSET : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_c_shift_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_c_shift_ram_0_0 : entity is "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_c_shift_ram_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_c_shift_ram_0_0 : entity is "c_shift_ram_v12_0_13,Vivado 2019.1.2";
end mcu_c_shift_ram_0_0;

architecture STRUCTURE of mcu_c_shift_ram_0_0 is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "1";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 1;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "1";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 24;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_opt_goal : integer;
  attribute c_opt_goal of U0 : label is 0;
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_last_bit : integer;
  attribute c_reg_last_bit of U0 : label is 1;
  attribute c_shift_type : integer;
  attribute c_shift_type of U0 : label is 0;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0";
  attribute x_interface_info of SSET : signal is "xilinx.com:signal:data:1.0 sset_intf DATA";
  attribute x_interface_parameter of SSET : signal is "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
begin
U0: entity work.mcu_c_shift_ram_0_0_c_shift_ram_v12_0_13
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => SSET
    );
end STRUCTURE;
