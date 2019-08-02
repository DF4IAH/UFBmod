-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  2 14:14:12 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_0 -prefix
--               mcu_clk_32mhz_locked_sr_0_ mcu_c_shift_ram_0_0_sim_netlist.vhdl
-- Design      : mcu_c_shift_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
R80NnScBgIZD14acGTeYZyZzlDoMDRJH97QvrM1z3/BPxjYOI5xO+RmLRE3ogivikKxeQqDB3hYo
CtT6MXJE8w==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
pzFf5UkhQCihEthT9/vXIu9qyyEco3ugn72RSG7p68vod9TXq7nS9azLrnGkzXHs3PQFBkq+3+ZG
PNN41vDN58/lK8pIjiAlp2V0xXr8ZRf/QoS3nU9pnZ3CEwxt9CGwUMks2MBnm+VSjWWRxbkUaTxZ
+kjzVWvQpUuyFFsOEs8=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xDcafb3KrEW7vk1Eyiww/9CKbzlKF9C0uKrVBz5bHy5+6GMNsnwfCSkgxU14+VriR3jhdDN7viwB
M3a2pKPouTEOz066rknyw5X/sQ4hniBD3iUl4NQWkHTGym3kv31ZUeZYdl5ODPvzfUJOWUvkAXp/
gf4rtgV5FBbGm8qJS4jxuFSsv4rhcb7t+cae5sULvX9h7Uh0lEoAlNX3YmEW0fWj4bhIgTdzT2gk
C1ytdGU/UAnitwmujc/k+32KWV0i/o3dHRhIc31iawLLSmuBJYefDEaLG6KE8nGHeuho45Se0dhe
7kIaZp4SW1wGf7C0xxqwh1cgZ7+6eWgYBqVY1g==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OrzITnToGC+ryHZVkpDHCj6CgE4vEVrPZ7Z829783FsE2zjugDCdpipuFZ7ikbeX4Bc52TEJ4mFm
0OxylPcCXPIE74pJ186gBXkmldW4bGFMhTmUHJ94bRAsyJjr329fm+j77y2NmfbHMVOsljahWWK4
OMppytgOrZcnsnsORsbXvvikZALiCB2t+Qc4RdHc3/98o+DDvRf+gwTZNX0GMOitJmVVvqxqw6No
K3aHL26WS+5291/TUz7aF7ySSp+k84h+0omwPrcy0Xc3URWaoYbqLrWiEi22RgQYitI1tEsa+afh
tv3h9WNr+65gWTbdbwWyOz1NeXJSaNV/mc+/Lg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
riYGAyaVfIXieMgcJVFsucQ9kUNBkyzgx5CLlDibSmqSJjCaDvK63ymwoZpsGDT9Rugub8H1Y8xX
XUpLlzZGCXrlWs6NgjXfNxVpLlkmz7GswYkQ6KhUkZhRuPh0HrpJPt1ne+1pTM6fzi5LXsyTv6sn
TisWpJPdsnmBDHgM6jupb4Iv3OG7/q/NPck9K59oFLN+AyKeQ/8pEy2j7xpMiFTRlE1OTJj2mjHF
yWQWyURMafr1KK5t9Wu7YuocfKiTo0f6okHNafEo/nNpObW1D/liUJlS5GVguNNbnFjSuun9SM4T
MXhUoU0rVPqSkeCGnTpMMYK0MY5IwmbyZXn/fQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
HyAIbEI1uxEAA90t6+VWFTmyUje1JDZQZoMv6A5VyFWA8tJ80b/Pwhc93aHby8xZos0WjlEANrxF
3hJ/l8XJYMVZWlVytBIRAZYGbhnMBOGo/5sjE6O2Ap0308iwfA50rb1ZITdKRqNiW+PlWkaGC+3R
QMUfNUa7cSm841V7mmc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GUEL70ZQ78wO25wq2V+5JNZcUKzj485nYHAlIxulC+dFYZ1T3bS7X0juNGn/cdIyRbeWgA5z1viA
KyiSR064Z0BmWFsIYHfLEP1CENE6B/DkEgUM//4pBnGxH0CUe8wWHQBcyJQAxQHemECYQ5/QfTqT
96OTv0jwZ8yRjX1vKXS1qZKREGwNAsV3Kgrd9M5oaNz3PuISlyOOLoxPx9Qvu0Z0QYAzZbksLAI6
oekHTbR7CXs/P7+GCnbyf0lD6RFUyKASz8PAAvPi/+knG0A5BGQv9W8rEQ1GlCyJMbWqS7UMYIM5
Aany0Gd6zUtHqzCJMTpR0Gv6o8IS9bMCD8CICQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gF3cjudhJrOB1X5QxC4fssg4KgpUvh0wmDEJtPe1d2pvfZL/4hNu7iZHgKFba5N7hAOwFjEPCWn6
/4hunOheLDtv4JUy8vio40Vbj0gDP6K3Vj4Rn+fLSUfJh2T2cPS6rg5Ry4rCxO1idKzzLQHYRYN8
vGieN1r4dNJP3+xDeqQnCdLrNk/mBjZKyml+mJXpxCIGS2LtX96TFIZplWb95BgsChN0V21JT1kB
VrQwgmtY0Db8u/lE243xSbUw+OrxOi7nTAL1cGJxLqfJR1YxwgdMRODhBf57qK1uKvhzaDnVLtEF
lt+EhG/6x6rD4MUvISq0Vrg+UwK8Jys+KEhp1g==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
mv6wg9amfVgLQUVtP6UN2OtnmktDR7Ak9Au3zjNzXxEe4UHv3WyHlYKy9+TNTN7sXPXeIAZHIzO3
IgWNKoDYmdzUkgYfV5mxpkmhTn3MdNruwizm3kVuXXViSmiYpH6FLLws7FGLbh7sx/R28EqywuJW
2+OhY35eVkY/s6wFvPW+vHQORoAHoMQ+IDDZJPpSaXzqAYS0/q7j0jRJmqtj6CPQpJOXOv6bk8ry
zJPl5Dum5QKBI+KXvXGrt+qgHIM8J3m+QVo/jffCxFd5OAPJetPACUpbGv7C33pSmusudXBxuz88
VvpYGMv2bpfMnkp/JeuMm7irXi1Y35e/b/wHSA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14384)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 is
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
  attribute C_ADDR_WIDTH of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 34;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 : entity is "yes";
end mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 is
  attribute c_addr_width of i_synth : label is 4;
  attribute c_ainit_val of i_synth : label is "0";
  attribute c_default_data of i_synth : label is "0";
  attribute c_depth of i_synth : label is 34;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_has_ce of i_synth : label is 0;
  attribute c_has_sclr of i_synth : label is 0;
  attribute c_has_sinit of i_synth : label is 0;
  attribute c_has_sset of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_sinit_val of i_synth : label is "0";
  attribute c_sync_enable of i_synth : label is 0;
  attribute c_sync_priority of i_synth : label is 1;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_width of i_synth : label is 1;
  attribute c_xdevicefamily of i_synth : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_clk_32mhz_locked_sr_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_clk_32mhz_locked_sr_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_clk_32mhz_locked_sr_0 : entity is "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_clk_32mhz_locked_sr_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_clk_32mhz_locked_sr_0 : entity is "c_shift_ram_v12_0_12,Vivado 2018.3";
end mcu_clk_32mhz_locked_sr_0;

architecture STRUCTURE of mcu_clk_32mhz_locked_sr_0 is
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_ainit_val : string;
  attribute c_ainit_val of U0 : label is "0";
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 34;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_has_ce : integer;
  attribute c_has_ce of U0 : label is 0;
  attribute c_has_sclr : integer;
  attribute c_has_sclr of U0 : label is 0;
  attribute c_has_sinit : integer;
  attribute c_has_sinit of U0 : label is 0;
  attribute c_has_sset : integer;
  attribute c_has_sset of U0 : label is 0;
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
  attribute c_sinit_val : string;
  attribute c_sinit_val of U0 : label is "0";
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 0;
  attribute c_sync_priority : integer;
  attribute c_sync_priority of U0 : label is 1;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_width : integer;
  attribute c_width of U0 : label is 1;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}";
begin
U0: entity work.mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
