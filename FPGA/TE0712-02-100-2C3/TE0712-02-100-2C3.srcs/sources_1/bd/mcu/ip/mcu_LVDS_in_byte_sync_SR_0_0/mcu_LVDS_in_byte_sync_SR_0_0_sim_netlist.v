// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:45:38 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_LVDS_in_byte_sync_SR_0_0 -prefix
//               mcu_LVDS_in_byte_sync_SR_0_0_ mcu_c_shift_ram_0_1_sim_netlist.v
// Design      : mcu_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_1,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_LVDS_in_byte_sync_SR_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_128mhz000_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}, PortType data, PortType.PROP_SRC false" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
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
  mcu_LVDS_in_byte_sync_SR_0_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_LVDS_in_byte_sync_SR_0_0_c_shift_ram_v12_0_13
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

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
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
  mcu_LVDS_in_byte_sync_SR_0_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
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
C8c0ZRrmEE+CIQUwGE294W8dmxt77ztI7eNe38dfaADpcgt4K8fU3X4S7MqMMJgrFW+7U1/VMx8j
APa8Thbd9rS6BsV7iYftGqpMmMAXEEU4uPOPhP5FLLW33acUOFYpLBXnAXbhkDp7a9V974J4dSFb
dm67LcqwZbOMz53k/A3XZFp71ypZ2djCgCgFFRWpqynUgaLLqgzxxi+tl92ry+PvXSUHN0Zunt11
riJAKqdhT3In3sEwY5djABWTsfeDmnrWH1aBmYURnzLnNs7/+dE5REVyg1FWvGiBXdloCGM2QekY
8/6LqxrDWpu71f4imbl2VZhYhrcrpO2ezXGCeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r7DQSeZqOFXJ9biu6vFp7eFBq1iPTlwlc/PLRfrdOD3ZYEx+r5ktenD7nGwNuoWxEJv4gJ2Q8rna
fltxF+okK/arUROkFVLURIg+CGAxWNRVnOXuYJ+cESiDnynpVIObwuTAJn+U124hy54NMOVRZqhQ
hddC1FYCLRjqMwzm3icM0h7x1drvHZXQgRis9pb+A1stxqGQ11ykXX0/IwA7mg31BSrHHgxb2MFL
j6dHqqNRSFJcJUjIY54hoJ9FU50kKOVJg6doCID/JQXGrIQHuk+fJqT1xEc+xrQfN3tLcTkWnLCz
Sq5ibiSsE6gASUu/yQL8cRjEtiLbP4Slm2ebUg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
`pragma protect data_block
t62j8T+SZQ7dpPJSl224SX8n1CX4I1qwxaeeRtqMA0Xs1bHMDCEoawtuUBbPUnD2lKU96q13vHZb
ioqb2+ImnHoq/G3SXH94LhbdnxgfjQII4pQSeQO1lbhV/IkLhAc2QrU4TlQqckwzIzbV/WELUl2V
pqgc+DiPQhfxs8bxutIEspfg8+E0cCCP2Thp3oVvCKxO1GMHKguQTBSWsN9B3TbaQNlRsPV6kspI
TkjQOVyef4j0T6wZCt4EJl7A/guaGkiztF++RHtwgTKUotWFq2cybU8Pxj8ujVcHSwL7AA1yXWE0
EZiDM9gde3beYoZvkJIXuzms8mKo2cgIhdtrYwIckh/azJDMc6QoGfijBX2p2/vZx8UQYyMXcSxO
6OmH6iN4cMFc6mNH7hfVLQ7bF6qbsW8NHoHm/lcWNfKly5lO/c9dYfYmcg/ZpSaxYPPdfewvCsZj
hwUwn8IHE9Y4H2Imjd5c7fbOXzzBGkZaTNqGWVNaigrG/XnX8X2d6PSIB8XRSbIZoR0LX6dPt5wW
aezBGe5RfhT1UPqKDjGw5ijDeHvOzzFj77V9WVR5p5ZAUxhl9CNgfBycZMr4P8JAzkdscVZ26Zdi
C4gtHQMLRYMAu4m7E9/mf2DyT39YArjStFH6wH6B3gcuN/yRpC+u9yqY0c5DaLUhf3Q3I7Ps0mp7
1hSEfq1DErOLejwULLYDNuI3pj3LRNlGSMNJa0gXvUCBqsCcFL60WOarAItrp4PaR7K1C9N9LhTj
9m9kYVD6LtNKVoPh4bsZP4hvuDwzbf2fGZsULCIcD9UZIKIEfEiw1SkA7b9qo1ykRchAWIBuDO/q
cYuOYWw6JHftaNYFB22LyMZ4JAYBW3MOnVOUcHR+7/kqNPRNk8laqLDhccDROq+hCY8hn1hfkDbA
ytJAJ5DXn8kkVz7tyDv9ZhVFERbO/4VpcJPhCbweTzV5MIPQ+qqqajgviZbOHipIY9lMH7ZLkDwx
ygNk1f3uLfDIa54QV6y0YzFhUIu7I3gz4tXwsoxcGhyYNDbDTNB4owMUXvW53nvA50MAoEfEDAfZ
6dxhZFNnlIiurcB9nHrbJRjis1cahzs4zidla0mooSIyg/Gg8Xh1Huy9gP/TuqrQK+sH8MF5NxGm
KhzbBmnpewU0R+rELExUXGihNkuzGfe1pewu9fu7NJYtqETEgWO4tkb3oRog7GGQK7ElV/RzORMn
OpkdB32o3Z6J85O4nAB0wrq1tqTudUjU6udeQclULz+htiIgGGvDGgR7O5xRalziAnwdHE/aD4EG
ogq+iobiJgodjtAICJ51LG3dAOvTSP51sZGIImTPe0XeabW8AZeA30Iz68KcDIR1avXfFvUnzv8U
H+7UER7oz6CTMKa0hsfnfR5z9ruOYugPioNmZHAsS+z9mYnRHNbZauYLAsdqWgQoN7Mcq4NZ9H2R
9hQ2aos8Ry2sMQeXixTjlzW3DWOS0Z2rONX9/J5pGfGK0fek+9vSJ1bvR0qIBN+20R61+Cg+JwlR
Iv7g+3oo9GIXqHQKNk4c8tZXi4fuMxbwqdnjhabBk2aw13/I/khVI3TeSpy45E8GezpIZaS/rcj8
rG5hibS15HQV/0/h68iEnHh8vJ92+GH08XSu3fRksaDkm4NniAj+9zrwVvM7li6UsVX7fubn93jr
GlPTgblJHaWOnTYo/NLJj3nju5X1QoKmBfygwy/lYYK+R/4Gl6dh+h1tUirHAM4u7j513Gsb+c4r
OKl0q1Bp93A/1F07Uddsk1jrh4+qO2WexBRI1/4r49S5NbBOFoDGk5sYYImyBL2YB9QNUFTbV/Td
MkUqY68pzKC5f4+CepebgZbaV6U9YrJqssUNSUKgvkKniRZOqoYAIfSGB9GKZxcE7jYgaE3kJBuh
P8eDSlMkXuGT7OYEy6IRtc8in1fxVq02I/QLaQO81zx9CuemsM5BwmNG1Y0bpUrzFNIZugVyf93F
XfeVicfIJJPpFYnw8xXyc8JbraMNwwkDeko1EMHS8r4j+WESPWWbMnPQ2qoUAdXJeDNw0758bRNu
iN5JcwTTQEm2FUSNxFSWAC1a8/vURzzQuCffIpsTHoJKbO4gQnoyezyY6xU3NP/y2mwYK+aL7fd6
FcN7q/tIC45BEF0CrC3z6myxoLVeyVN/pT+vzgLSp6UXToTgfQyyRZZJT2KWKT/97ohzBWEX2oS0
b1RMN203GyOGoi6/nEBo++wQYkODhrs9sWaeW95AS3dCIApk3wLwBan4YNn9vVdvmsDQWz6sLw6A
4fDQduBapUDhzY3BGqFGgv6HQukqsd8Sb0p1TCPzns7tOh5I15bnsFXKPa1biAZAbBd5Uqziy+Sr
ahqnUJM74IEBfwDNFKW1m2Sokf+HH6IrL3BYCEf+iA1e9xk3WH6cO7yLui1V1CW7M00h4jc14P+A
sYWV8ZNBl/3Ozw/1P+ppt/Ud8aPoFx/R7kuzfHA8I0pACU8nbjLXB0GLULwWAvOkFivEgE7JJ0TB
FCtfo5+34mYD69bBZb+tgGmO4iuXrPYz8erDxn1RWvn+rI6MIoilTczesot0u/bsbZX2xLJ61X1E
UbFFa841GH964nP7n4Un1gIxWJQ4BS4FWM04K4QesnzRBf89fiZSMAuHdZu5inzs+nrv2O4o4Pjb
rLVEuEe1EZl5f89BGXHW1s0YgK936S5ZGl3NHGZubQHeyWJSbUcfyjN/0FeRlUIAo0qyxUF78CJo
xGq/UyY3bDNFHTbHqV6CuscEzcbXvp9nwmFpxF1SsFW7BhmidMCEsb1PNqPI2KLDd8b7XTi++Urj
R/MpFJ8lwcHvtN9+Lte90giKeIl/lke2qpu2K3Ky/OSE2OkH/ozcol0bpFUmuWoGNjCLP2L9EYBK
Fkqf1QgU9u7y3Gyjv0lheD40WnX3wI0mfIFlfIkMoUGHrH6ITiYi5/1uHNtRrLbTG0c6hFSDngX7
Pq395+utWRdM0XS+N73f2Iz/fFV4+3eJTbNa43FCQIozQAvQ2/BPBvlzmbW+C9a6zQyVPuKltCeI
HJMeZOR6FqNmR1DlDCRbqoP9wiT8kTCyd2SOC1kqf7cD+n0LjRHFr1skcLh59daEM3Vn0BLRjlvC
+xL30PRfLBosfVfoxdqRSe9QbLUlLczaDithibuus/pR5BBEO3oFweEIZNkWmA2aVkIv59KqRxCa
bviPSohUJLGHfzjU3v9WqqH0bEJx4a8NT9dy7NWonUKOFXb1yPQkRqcXw/5Wz7L01YAeELPLk/ZN
CwnQ8rHxk8ib4SGwtao4r80VAIlys1hz6D02j9mIE1K5dzoWZY/MpqfdlAalh4XzFbRsXNRe/96f
dapGmVFKlKcWroU4bYf8RT3X/Z37+JtwKn5H86bH0GU6hWYac/DubmGO/kMCNokO81fwK37gaq0I
EmenzihSjU2R8Bjahun03U/IWsIchngU8lCypjItper0ZbxnV3qbqHmbyAhOSkmScSaM4GoHHT9E
izdO2LiRn4SV90gzg7wSV9EwbQsZsqZHl/OEqfLu44FNPgdBPrWdOxGBnU5MHwGyqXLufiw3Gt3w
S8cc8Iy2Ml49G5PvnzgoE5Dtm0prpoOdvu6QAWI5BA1GmVhx8mGuBhDy5PG0MgiaN/f3rJ26SDAe
t1Qq9FGcXX+QB1mOsxFlTBJA5KpW+ySGacu+s66KHZncwwjJ+T3AROuUxACHnAuICr7r1zEJNCFh
LEYmksT0ls9ehvQOofPwVePXXbyjjDMBW2LuNRscU0LMeGGh1/1nWTOJqx6GWfxRKu5p6eEO2hiT
YuG9hxSXS2X/MB0oq+NC+hT/8Lot4RK5++zyBQ46hwL6tDYsSh3UA5qwLAwnX+TGMHx6CVqxeIDW
5KCsmyDQiLXBKh9CsKY7Y317kEiB6oyyPq5T8dhM+HLKiCG3FvY6GXIe6V6QbdaP9/E7ky66Ww81
C6pwHIJT0RQ13Hf3zNap6JKIMu1hk5UWdsG8lH23CMOwFWWvXaXQXbiU6spfRLZf+dRucRa0yfWg
gpl6SkS9mvW+6F7BYVinw1u+TvgHP9iM6pdSSv2SYYMvlfrYJHFdTU5sz5dvGxN1EfeJK2IKAgF2
fXJFXalG/UkuvWEWxKJ7J2b0s5XEosgaw/4NmZdjvaSpTuXZ88IfWV42/shAqgyJreNSp/hJaiUe
PcE6UTFqZlFBZ4Yn97ljsXajIJBYzi9Acwh5XlsuengYHt8il18CgFs8ABFCd/1jPMakGlsG/p1j
9UVA97wja5uZ1DioqdNnohOBHbrSEvWVtqhdORIQt5uCXBcfaWHcp/uROsm4cCWy2Sgk7MVltkDz
Kp2Q63kaDNIBqHFXnQSSvNUWTaccP9cbqOS3yAsNmYpZ+txcdQ//2UUWEXKKGr/tcWlW1le3ugj7
vNWRiJVSR5umSu7FJRVkUXNJ8bKOyfphjbtChtP4/3sNa8uwuPuqwfeK20j1aYFIZ26x8HWJN4xx
A7sTkfGgEv8EgMGZY7Hs9Ih/c8bR3j5jzvx1EF+ubSU3OpMqko2QsroL/bRu6aloRoFHQ/kom3Wy
tOxheAMA7wldj5bxENBRGsKZj7Ogn95cvbl3Y7Fjij2K9ImUQsgsUA9D9mRtpmMqEH4lvKiJFv+2
42tcLw4ZDtZXWQDukMcFecFwBX9mpUzz76UwCjO+yxzL7HVIuH3XwEoijFRJPihLqyxk5XMBs2eZ
69C658ayIC1EtIoAqu37HuBZIDDPFPgk4AavPQ1J3cWEKJxIAhD6fgQVaL4+qlsJ7pM9jVTNytDI
I5WhQla2yYKwBRD0ct5vs8L3kcPVQNEg6Oo2L8GNcEbs5v7cH8e4GeqsxRr4JRZHIdjHWIBiy1UQ
YuQ63ZpV5EQT5MJWYnM6w1MJDAKoR7h936yOGOLSgU6eim6FO7wQoVsC+L7vVQuK78bC6iEdV28w
KPjmHrGcLuffNBeABoc2Ay5Pcew64xL4IragYaNJhhLO4ankYZj2JNxAhhexgcW0pUuwY0Erw5wo
c2/A3gyNw9TV3wLfxiCJr+IAyTZk4sQGlj2W4yoiOTMxvGkm1zNsNmhXi9+59EJUGzcN6gKDzh44
630EMITFTRFfcc/W2Yfx8hD/mePW5FPZGZcgcah+0NSBEr/rUs6Yh721S2vZoHamTdEvbvAZrI0c
HVM9OhjcqgB/UTHNq7CfSxWEw3vSHrNjqMOFG5fHcEVI7wmP8EJZ/K8de/MGoN9viJ3Yk96LKcKf
jFpv0ZtPm+MVq9oEU8VRLBkvmYrKyBaOINZSV4qdhsQpwurxrQc2tBL7SsfCBU8P0ZJgdpOJ/B2D
Lzr4fNnmKORq+h1djznugmwJ0WKs9V6JTRMBcEMOJucmJjKMNCw618blk9RsG7n537Lk3d/kPhfI
fti0LeTjbETPe+AP8zQP1jiqXI7GY8CKfjGvpzUshak4
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
