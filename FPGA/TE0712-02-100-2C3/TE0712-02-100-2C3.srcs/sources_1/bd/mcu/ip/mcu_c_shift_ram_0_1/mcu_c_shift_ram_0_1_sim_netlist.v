// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:45:39 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_1/mcu_c_shift_ram_0_1_sim_netlist.v
// Design      : mcu_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_1,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_c_shift_ram_0_1
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
  mcu_c_shift_ram_0_1_c_shift_ram_v12_0_13 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_shift_ram_0_1_c_shift_ram_v12_0_13
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
  mcu_c_shift_ram_0_1_c_shift_ram_v12_0_13_viv i_synth
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
AwkNtoTq8AkRTR9gG+AaGt0uHQMTANOuVKBr6/PgdCBnnlG/+1wCirGXIV68Mx1MARPciEdo7dRe
BPZHtmA9I5Cbyoufd82xWLPGqvinYaBnH9pZyPr2OBoJpyELJTASNpCC/I1SY5E9XpeOfPkgKVGT
sSp23QM5dZr0CQb2U2EhhsDOHvFjTqOXZG3THLMAEJ18ilguBIojyJoz1xg9pqq9zKFo+K99VXpr
6GcN2NYmb0RGJXyOUEnmVESjP4AX1TOHN4v09bjfNdcMc8CN+ZrV1auXgnuaJFtcGPHEY1TrJS7e
d3paT+qeSqNN52b1b/ldU5lMxWxj9jhV9o/WYA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LzwKyg/8CwgWQlVIzWXaZFfIE3Yvfm/KXQ8jNhLjOSi2PcpjiHK/ztDO78LBlEAWV3SKYwVqVUm9
NtTVvvOsloJ8c7qBBbrsmdyMmInfSjFs6xmGivfCz1SJ8WZsRmuprbCMQGOPJZ6VRISbjpsd5SHT
BArnWe/dg5xzShW8z4oWMKhvsw+wwV+0mFmk/LdlUE/DkS+ssVTzoJI7Jp5qGcA7wcFqDzMyTu1a
H3AAd8nftg9JTJ2v5pKgs3dn6HgMiIqaQelkYsGp1zjgUbn0eqbnqTrya+Pg0YLlPsG0Ae9qEXJt
CVY6CaOXP2pK1CxYLZHozJsOhroaIzdyOtmX3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4192)
`pragma protect data_block
I2GiE5RA5IHKpwORncQTvrZ7HiBROjUdUBrtb3ULRJPW4cU47rZrfhePv1RD2RZ/2sG0iYlsV95H
hVQDKyG0DmfTRvuXz5JlKqIINZJhfumlB9pTZ3eD7EN1bRhB46gXZZDq3QuyK+tfjgmaksFcbs8y
mnabanYqfUnWxvoZr5Z/jeuBHZ7JL8qQOOLptaP1SYiwDGnLvvzslk3MZTGUP3WEoGPxKkayJDoL
7D7Vv0Dkv7NrWLbXn0u/BAbD4JEnbpKn0kIEPaYTLCUx0zZXvWckSmus0HbAjl9w7rM6Mfqr1FJn
v70ycCuJXyV0BigyAypQs6DNxsaHU11S+AHhYczfxoo9rgBRRJQgKOWRbXRX8CkjqVGRp4eozjjl
439O/iYNjD5vKrprHHoqy9MN3/CoULOB//SOMX9zNDi9zkyUASsupzaOvWsQIyErjE8x8T5aJ7UL
psIX7vdEFRjJxaFUm0JE2aeFoB4XYF/OYbjApqputdwlAPRJc2Kh1VJwCuxr5cAIsQvUqz9plKZm
/3m+wnKpmTcYP+JEdWStPdcIlpbefPwH4rqxlDSknP5FEIyV4aEY42YRQd8ovR2dVNSIRDmdJEfX
l1ZznzxW+iAe8+oh5b7hMGhEzPnMNUjg7l855g7GPOqG5om8BYzB/Fe9sUv8S+em5huQQzMGDNvx
WEv7qL189xgbjXA+AmgyFopzEATmnzJL+U22NhZngWIqQSUptwixANnjys83yPtzgc1Bp0vRNIrp
sRtU4Qu7sIavHhWukztAhDwyfxKrjC9s/kEKGkZcOyCOUS4rFKITcnX2E2l4UJkkJvkLhFLB/3gw
xtYhLKA4VtDfm/yHVgjvQzTyXZ1Dgg6dZtM+9FdKzS3yQkz216oBRH+1/Z5RtV2wgM81btaJzkZ1
EhhmYvcUNJDNObTwMhtvONLxj4JyT0lTzFGu050SWEwpVDHRfbDteqUxPNyNC2uqQMTy3EvsA4g9
zkSkI7Ksjc/yp9ZebMtdFCnl7JZFSFK3nOhmxAzF8SVjpZbCX76jC1yhKbmtDw4k5SqYBuuwMJSo
SnFSlThPz3rl+qZv3AWgA+LL9Cgm+nGzvsum3yDXng5prv260bDcJ6dsfFgE7ejcGQpvMrNJiyWR
ekzEy9l3flqJqF7kam312P7bfRD19GJu7WRsVems7PQUkqDkDYCny9EhKw9GSertOFBxjgmBy+Ku
b+L/PrJT1bIAPXz4T26XhgIKBkf03Yx+Mh2696IsmHMAuJhGBL8BiBu0iFnuGTAG8ghG7+7G2kiY
Fj59Z7N897W09o+2CUsSsuMSb6y/2SEHb6lNHlrJQt3BHTS4CzJk7HE4x79+dyei21EGCPw2LHgp
S0eht8KAr8s3WYW+Zh/tAFYqqQ9oHmWrS1HIUmYV2MquLSXfyJbMnSByKz80TWxG8UHB/1T4+cjk
Zxn/rWFsb6ctmLpUV0Sc5nz4PbOk5gl2YDRtyw4kVr66ppk4x9h2+VNWjryzczyxUZ6eXAjMjHnk
V8VBODhNTS+iyVUMpp+peIZ0DO5lE3nx3kSEOPDMiS2yApdb6z2vUYHLt6ycRw2vcWxjofXkgnxd
h/AMJjVs5g2Kneat4lq4WizU2hm+Bb9sHmn/azKgdl4ClH54Dh05BYSUsAc/BxBzK+fKf0gYxWlc
8UsRzOEf11rdeE+E1F6TP1VoYS0cAPNfLmGhWBhv1YPYUv2/SeOtACF7AgCm0ZvSqGGss+/z646K
xto25g66ag9D5lAWCBZuMqzk7I5wlZsfiikLUHYxqMEGCsNMPU32k8Wgqp5X4yyZd7L6STSFbvfH
1ADoaFBLwSPIDPwDcuThmJWrgmq7XcquOwHowc5pP6Z27goiC0bMt2CVUDs9e4eAMRvjtOssoIWu
1Q7LabwmXO1zkAjSNgiGaDaNyYRUoszGHL/9XqprP/Jt5zxzv4FZ+E9KQTP61/9X90n4fWWMeZUD
GSRWvXzi+7kfwQepntKgXU8UKer7qJTkqdNzsejH0WKAEoZNstwv1MSShLrVBFYiwHqlf4Q2RVOs
kX92g3YGJZ99exrt232oLt6tRXRR6d8GB7EnTVFnuW8iZz81gIe9WpewHQjXuooyGCkkyKFWMZq4
kHLYCmA7fYnFEQzv66NP/thWWW9O0DLgX/MSeC0PI/qXYmOwjhDOnNnIzPcL2zbcwKlhwfLE1KIC
uFCHYXiNJkaSgcTYCOku256zy1neyLJ/xbUCwDm6/4Pja9h9yD7o38EDJM5jrUHdXRo1KFVkM/Qe
CYX/aSHEX1GXf7LEgGqdDbnQlRvZfAqe9IDO11X9bpkLVbB+/9ndwz2Se5WM9dk9vhBfJYb8kxZR
hoCN7iIZQCsOTge4teUfAcnxiTM4Vx7YW0iEObxOkFufmAi9AzowTyMAgMSqaHKTwvZfRA40DRAN
BsrXRJl7u3CngGbTezyumo/DirfKN7BL6RJwWgBUBEdWZ4jq+ai5AJ35kd/ozweGZkwMeduuM7Sn
uqDeCERtTXPNoWsjtaquvPtuog/+6H+FsDNAu90HOgaN/O3e+OBt74ex2KA5/QlCMOfRXjneBxtL
NJpkDfZbhtF3Z1lFklLYc1BX2l6+sepd4Mmlx9fUfejPxfyaOARNVui80FWhT2+iYgjUYTnssfNe
p9nZDpqElh3JRd8PLO17R6a1gd5gNpI/dsg57b/mSaUReh7MJsHmMZzNScWnApEndOihc1YRoQfT
pDYKqhLTothS58JXJfWrbZT+JpnIc288rmxGg51r1sgM+Iu92v4tZ1dSf4z4vXMB0fJg6Pi3PrnM
SilIEY07cOFlk8MAJ0Wj03B35twmXMW2zdnLZ68ifQke87dMs8/ebzchbqTe9wIeyevSG3bevaur
MVWMHLePLzARO2TchyNFekup3aeYc4Ab9xAtEpjxJIP4Z51bXQGcQHwP2PPmN5LsvPQtbUiedAVX
423I4KdZ+pZSru4iDnuE4rN5VKYXFkQ8PXcG0vOkKF/VdiTGJwFySe34Lrp7zfnZc0upQZdbBgws
YZmiNtzEgMGpUvoFQQi3/fixH4uS+BAi1sI5ftjsUfyFYGkGz+iuPVaegJsn2laAAPSgt4eQFSPu
E4o18vxwNIAT1Xrduks6P01189Ju+ph83ZYpPKDqLTd9NzQF/jVwWclsbRD8UCpCS5/b3rWS95i8
QpsLH/39m5WpDNiiq8om4SsSWCY+SS0BNm5QFKhzaGgydy/rltXzDWVMIVczcHi6GhAvVaZkVV7T
matjE4nMm+e7kdEQp3zsB9OZVqb4kophvDrsiIm07dC+ZTSfBuUCCkbvxx0iwLUsvSg6WmKPiliR
t9SYxjRraZVsZfIf74u5DD4Pes9R8UUVG15G2RHanCelnoMk4flfrBX9l7VUb5hgFdbSblqMxMWY
ZGpPcCarDjk43vTjBNHBUHmxX/zKhBXJdlhASsdUY1yEqzCQ95gYjF7LEb05nhyVPOYoJQrE2iKp
+6IbMvOmtaNKJY/V73yF7Cbv/1q5h8XtFkCW05GuKp4LJtg4peNzzc5O30eIlDh3nNFBZjQsVHsQ
IT2TEMgG0UrPaiK+4WZhFc3qVY9ba1GVQln0NeECRdK1he0zn7BNFb4/HnmUH61ZYawGPN/ZO2SC
hvbWbW+wbJ5EWgEQSfkW8Ek5nPU8LAatQ++VeU9pLOMz7TvWo13NVHFilJmg1hsqE1CBfIaX9i+r
jImOrcVA2MEXTqaTTIyhLCGF84nRO9vxVGr0iLYQS7T0BwUwdrbl6D4dcCmCRLB94wRF+8bzEQk1
KaOJbTOeJ1ToMc02dtYLXB2XQtn3r9+p/0hgwfEfciQQzTo0KWl1retiY6SikJlPdeBK+EZbe9Zc
ESAq575n+PSb3vomBUXLNuBH+auFPo8+1UAAQupYgHmTdDkYVzc243/bAedP9XsIjR1Smvvj4akk
/I+dvtPIIOHU6nxS/9BrsfRGHo+WCT8/2UWre+cOfoWP80qyoYf3301N5THBQKb1h5D/UEhxWx/n
j0qM9n9tbVFi/39vpWHDKgk0SVqvTfW0v++WR52sL5N/FtY5E4qKlRNpGLtcd4lp/KOa3lU0sHJ9
XEU2SzUy5ldTy6w3maP9meQdTL/xF1EorPzaH9L0ac9pGveVEX7miq4YLTPsQyeF7R93By86BAGy
ZYc3LZ2S9T7tnLZVzpvEzALLEINTPWN6ArNdlZDX/R5bQc8h32b/YLVUDObm2KXICbAH3/jVTw60
yzhQiYQTphvhnllhL+uDQStt/iqH6Zk1NY/y4J7YfAWNP20x54npHQHkvi+q5/MopIBjUH8pofZA
gRM9EEEZ8xae2VttuRALsHjHw3bBpFcz8hNrms6XIrPIMM1AhjASBbh1R4YrbEfEIlhOotJGuQ63
vPS7toYVTBUjwtig2L/5Ef+XZIxjfRhqF0wEqlQD/JAoFjxsgvYIAAfAqWa12C8FOsTb2vGgH2Ii
1fU9M3gJ5sEPgLcH11CLr502J76bL1vQjF6Vt+Cav4OeM49/LX80RyJcT4Yfzxm3OVFQdWWhTWWQ
6WOUtknYNXaj2wF0p97y2ZKfJ/qIW9QWSCPWqXx9MqLVVMJZrc9IsyT/BpPckMOtWj18gC/VAW3M
rfIsi/rHcE26QzKqGXSwGoZP/9hwFn4UyuFwox1GQlGsUF7T82DND/2VjncALysQqYm/rjDcqIzJ
ed4XNEFlR06UXKnQT6YV4sbXAb0r+wUYUYsvcPYkjIyogBvehWJ5O3D/EWRP4NFtjOFPjPnYp5ks
ZKVNSulNaAWX1o5JylDKucRDoF9E/d4Sc0uFoWcyTAiu2KWAFnW24N1s6Cjds4DaX1Ax7pu/eJkd
IW1aK72CPrFt/cFhlGnsSiTYHwG5dNkQOOCR0JdbWPgtabUenTEQbAeodm7QWs8DuzwtDR6z9AoA
do6Ilytf59YH/14wMUmSrlvE2X0pbmF+RVgK61yJpUJqjng6vS3XYW4TsGOXQLnaQHZhD3URW/MT
R0DhqjeFbv23DENGk2eH1smCeHplYtkQ/rLPwJDbArkOKIahER9NOD5fHhYRWXGDennrQ3PWcgef
RkFuAMG+GWOX8fFVMoOM+R5k3Cf1qrqZ5Cw5FfaYZ6WGTrC6KBCTXpiKunLarcDlIRXvvb6xl8KI
fzbFLWhhxheZkNCtehQLywM/b0g0JtGPjXz0NuCbG3ITkYy0RpuYPyILkdnFgWVqVf3gjAw+rjed
4vf23eDjmkP5ygqVs6DNyLhOCJd+weOfDmDMjXWw3ODnVaVJY/zBYUdb/2yx5FNzF8bS0sV8B7kc
g+aiRMqRy95MG/ps2qLS8ZW0Vw/tkneEuC9D9XcJ70sAHm1giRinJRDmfZ/HLY1gTPvHctgdhzUR
XtfOQamHU5/cl6nR1ZeYLZn5jguw2NDTOn+q+QarmirTR8O0LJfv6JC77p3Uo/AQshnBn2+cK74X
6XOQB1SsyMPoTPfN1ndG+6WuztPz+3nG5in5lmN3jNPIO9JV/vD1GbNnBatEVgEl3GLoaZsJF8/B
wVsrM5/RmzJXfaqCIQ97h/nnRLx0GaEZBxddfIT+Yg==
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
