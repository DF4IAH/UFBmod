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
Ve7oXPdEHndUM67cukYH6puibCCPvQ0+OCOMyxz3WIlE/MIdYLzNyg3aCHzd0ssBzeQl0STg84Og
fRrugyHihpxwm8glLwQbD/bXvHIcIIbuLKspSRZJZvRe6heiQn0PgskMfxRXWbFcykkgwTOTJph+
c7Ou+rhEpYVJIonX6dxJooabKsU9fzIinXNs5qDwIKG3aAAUIb/IdEl9zYRhoec7TpMuvDCR1IFE
FDhBBMc6RzDCriJAdhyoXyUK2QFFJEu5ZAmM8USo7ss5pvedombNuRumvrHsLegkuFY29rzemE9v
ReiSAOMG7O7lvf3yka/g7Uyns4keGawfFfh+ZPHkHYNFRQib+1Am7qj0U+AB1Tn4fC1PvbsMKFUr
brCfEZP8Zg59BiC536b5Gbb4HJiDc7wS1nzDjVpSJDPXHBmGGgXoneQyo/0jt3pNBVdEBuzsJCKF
wU+vR+xZilt8MrOj8T6g3x9nU1Hb7FljMwA0rth7lUDvIf7AvzsXmaFzVyg0reeNvXYO4vwbnpJq
EeqmG0gwO5H4SZLyZcL27i3k67VrVONq15XuX1nQ0VlpMp3eOonxxGghom4+aGhXuzGWuUPl0Rt3
890rW5k5ADjQTqGrJCN/87OUelBD197/JFkfGCOGTBBw2R7enY/wXuv07ZtTBn/KL5sVUZKQyzT5
BL4wu9KP3pYf+fkWlcQYK0X2KkWK3VJxbfYqZ6Q5zrIrKYJILj62Ufi6b/kVVbkN+V36xVibXj1Q
yA4VJw4yU2tbCFgdI6xZHpGgeLMr2Vshj7e6tZoLTevwMd9xnepz9buTtAjIcKvR7P6buJxqK9EE
a2BAhLzW6JagUt6JD1F8klChJPAbNkqqTTdOyVRCR8ZCWO9khKg1jIzV5+JgkSi02oDedJaS5pE1
ALLYUYkdBP6mb/Sp+8ByRWkmkDUviaIMKU/a4U9L+oINLRy/qPcGyl/c1cJ0I6BrQSRVQSgc57QR
+ZtibNjcrI2YsKI4+BTv5VLh7uH36FaOWuqlw5ocXe26u0/ELuRBtx/U0xyJ7bfkiVXRbMm5yCUi
i94RHCXs/yDe9+UpW+m52SIYCNH0SlN0UQjRkvQOknIrr8yDKwW4Em6ULs0KBaufjvOWAH0wmd9a
NgpWtRRpTnZST60Tdnv5x80HDIM3JuiZ/E4v81WthR0IN8rw300lP2QfBXAH/ZPpqIX4ZJ8sUbYT
fGnGtwKo+b8eJnBDywZHhXDDciIR58ab8Bc7vFRnJdQhXZIP+ukcpGk7nJzPjrXI+w1rc7jwS/4q
wQV47pbDkcNAhRez81AJTLgh4lVAN/HpNaYh+B/mCR25UdqRWiexI2tdJSVkg/xJoqDZ8njyOiNp
SLLUFBAR9bYO+92wNWFC+1QZERBNuhzqWK7Tk268MWJljXaxiLRDvQ6k5f5FX/0XXYtqGanYAMwb
CG6sdnx7tcRPz2kH4Isp7vNAs+FF++VMP8pFUgEotU4IJ29b5rZkCF1VOJILR2PXu1eI7Hzf6aON
7Du2vO8ZGbw8cn0CwdOQ0iZmeiA1IoFnpXmOpwSJLhOpgkA4dHRfuU+EsKPvm/PJPyxOW26VQWgQ
pRXIg7PHPgECr8vvqJmsQ3YdplwjDPurjkyDWBFD50X9GRj2mmuXolu0/h6OGjOUjBjNBEIZfrwK
4ro8wOP8wnkm1ktv5xFlSlKVmQCgGNSsoelJLHA2q7CJgDu4ynk5b6AQ4ITsbMHTkWkej8X2bUY+
ABPwvF/KOphycF2zM/DAHytTfX/vGVlrHtH3tpb+TsCbez2P8ndNZxCoVFVt5m+rQs0vBMhxAqJs
XJzKdQwTFMtIqqcDiRTsnkW14tSOnFM56/6R7DqF/A/S4BTQ+E93d+co+HU0n/aZ9nyET8U6KbdJ
ENVuOLwwJgb+2wgoWWHsnXanN6rC9TD78mvU/JAGzMrPyZgNO8wd37xvSqBAE+MvtgLXuBWacGn7
OXS+JNxnMAaoCGSn5yMyIo19hTHj/+QQPkUOIAJIDvCryT2pmwy/X/ruJAG+S3CP5ApYEK3G9gb4
PR6nroRzlM9zQfN7vhNzXO/i5b83JZ5aqxrmYgTBmFQm3NgQVCvaih5v7iTzabbXtHrSVc9xYg0x
3UKewX4EFaQGRSGSzzODVxAcHpXf5k2KARHXYeRcLicPJCX49xkx/+wp04RlZPxvquGWRrsjKVSQ
+kPRRGBCjw7VM/zC17DoyXZnKL2qmu090c09KPrGNUmes3bBqMGyM67II+VVi9xedHf2Wt5wz1w3
gjBV6SmEPsRWHSWShgejvkLzjZJ9cj2MGrYwfkUZtlV8AccAwMH737+0Scdp5T99EolrFswjV+/D
07wv1yQsXDeXX9cdPHpBxWMW8dE6FWT5TTM13+dg9Z34beHJBRmUNzI9feExSiYh90ZrVVsNM+T4
97WJejN+KqGkIHvcNve2idT3yxs9P1atM0Rc+yEWDvEWY4eqr7JmqmsC17smhQy8f1EGA0bdQWkT
M5A38+ZrFttNedKA7QQa0aOFo7mCkelyDKFNnzbJLcunPn34xEiU1Cl3TEak9i5zFFvFjjq1a7wW
DvghqZASZxhI1HjlLz5d71vg9W18HGa/8GWAuxJhgLrpPmV4qDECdxXe/IidhNBWBrX1DfXmIK7j
LFXvnOfV3HOkxDByhcKSX5YOSpDY0mlahVvx2Vwlfc/YngBz6dHa59ncenB9W1cbgNxnW9iwyoB8
JEz+E9bO5pwouADYrg9A54fziIdXre0VLkqpDZoYBt9cfRjgar5xCJsua6EZ3FOrDbbch+vZkRPD
YKoyu43L7Ez91J/so3BFjS1GhusK/khunh/9JdDvxIwW4xHyUW7pSnmZtXZfR4sjZeGRCbOB/7pD
Cz0YUAIq5pgCvKgN9gZudmPPwe2pISZ6Vs4GQXSsH2PIsbOqC2shxM4zjZSACygZGW+9T91ogXx6
EpumMq7ljZWEIkSxfOgQ0GFsG2riMwFkPvndpvEI37iJDawEMgiC01pq84DpJM+yl1Eg2fZljsdd
b6AUlCGQMTqCT9xWfi8HF43xXbYChsUyDiE5aA1Ok5KkJUOtNe5wVPM3qfvd/BmZDkn2fOF3nDzo
7nPDf89LroIux6u5KDSrPpxFnnNsRJSCQWte3jZMiE2zRAuR6afT0lafFkuHUKnK2OIkvGGM8d0I
28KzusKzZ5URN/gwF7Qa8PN+vnL/RCkt3oY6brbDN77txKa7z0ZV5tntHtG4JEPmvoNkgki43UVh
1P6l8SUbdKeFQx9dOOssUbZyHFwP2u12GsD6LqBxv/5wsvQFfUBwKNrjknbl9l9yrTZSZ5ecFqbk
yR6GyXrU/J/XpA012PHwnzedoG9CIp7c7NT4cQHVlP9O4D0tviTMKQJ/W3SNSmwEs6VR7LFfuiNI
fQuEEX7OdhooYlmHJ7BwfmtbeYg9u1gU7/+2Di9kHxq51YKC4J49MYrTI/7azGJ3p0nI3JNt7zj8
gc8XgMtTOmroVsTSwZf2OymCWMgYa+jKahLVoLm5oXal0njD1M93e+UNKq/00HtgQaUlI/cbWyzk
GzmEuOTRMSYhUKcicupNmZiR1TCWvX/K890MnfNpOaB6zdMMopcZqturikzlBhaz/9LDl0+MOVss
mtm/pP2GkCIzWTTZLuC0QuI2qY2hhzsQZ+AGEygXt/gO/h86TiSTixbd7VSIqTy0pkrpzni30+i6
kifoNaaKQPOe0hjq08vnvuhe1MF65oVI2rvqN9Xa31FoyyI18Q92ozOkW098RG04iq+CY3bdkGBz
wjclyz9kSJSLZDrMop1kEYk2rMbUD847SjW+4SYtcsCSGZYC/MdgGvN+j3Vib8yZKz1yHC1I3+wM
kQJzzOZsT6Md4YuvyRJNA01SFBW/S/EPc2X62Ee5MICIrgsMKgovY5le/N0LixcsuWdQIzPa9QA+
HwOSKOSl5+ny9+10ZaGegvgUQqZGOPBPFImyRbxFdNLMCiAfEBcoOcBwNxNc7bWMz7XM9fzCxmP8
NEwFDYczfXlSrjKcHw00M+41hIZNHJbYuMDaix79dEIJDL8ERnogwbtVoVJX2NqQ/ThERIRWfpp/
bY6xsD4v8qk3jrBsS4Ef3u6prOFG/4a2Eui5PBI+1m6FSD8HaiMNNVP0jm2MVzSMveR4Eaupeg7f
3GkjuyKq+56Vvk6ibRehoGb8EeKHfFByJYSLdDb1Ptf9dX91gHfYHef6PJKkoZdddiKooMDFMr/z
9XEpbEdyFT/7uPQc3aidl6bsD4IEdbqgdVpDUvSNUnbBuCeikTAglpW9tk4tzvoN2dXvEcF2qcYA
aURawlf69EzNLfs0gxzrw+3gwsEOHY8QrR5LS3oaovh3yN60g+Q5QBzVFaY4WS3Zc/fNNIc3/qPZ
+HUGzyulPet3CoVKW5S8r6d28lJltIOuYLo2ieAmD52j4ytIi7qjeyGrpvmhV7DI72YD7rYIbr9C
q0Zuba4Gbsdl44XVcPOLWOKpdJPO0lXjrDiKWKbHTJaekYmLA6hcWqrD4N65lTq8bvQqDgciawT3
BCRMr5BP5e2/9ocgtHbUcHo5q55u+EIxaPW5/CjYhPlIsoxL2pK1s07wOis0p/3VwMpagYhyGLS5
2U475CtNXrclEUNu6f2Af/bvCzWAkQaENzFn0/FytHh+31o+ZxK9Lc7QmX6EswBGjVKIEgK23aSb
1a17vl1Z62TITCwluMvMMe9Qj1PpeE9qK7+gpLXAgUakdorQn1ia/+8Jgu/W8BDcFY51fcXnYJBa
4Xoyq+ypBv+oma2Bkj6SvPYPs9tRT6MbK+qt4ZaxSfIAdYO9Ruzonei9SO7inC+XS3WXF2FM23wP
W0oecNTdFSWQcGyHk4ckMASrq3U/loFsYaIkMIxKsRWyFZ+DFe60832jBoz2J9KIl61jmXA8BIf0
diC9rOLxnJSXb7jDIvBdikj78af/A4xwi0j5ZpunU40hY2FXg2v/itWeDjj8opq8dFo6KAu6eLRQ
k/fOHeBNB/xg8OCgfxSL2KsQ9Bxe2seQYsZafWbyRwWFgXjPzVs7c6vMjF591g88ruxmLBLP7b7A
YHPzZLnelTu+P/h08Gw9cwnJPtG0fxYRwHcWvf7x9JluipYVQl+WJ2EJxkxGw+fxu2F/qeaYeHNI
/VJ5hJeEtbo0wvjyl+72ngYn+pXc/wkMQCvyD0YfM0Q6SqbTJFVqNk07NsJEwGyWnvnRA1ADeVPx
s86KQ/x/fapV2HC6t0FAlzjj+EUUJ3afPBAkUprygJGfe6bi0o5siTl5fyYApEphsHLfU6YPNGCR
9+PQ9LE/h11UdIhRQqhWRUkKyL/IOqMwJTbfj203lpl0Y6waq8Uf8FTn1Qy99wZFswBVuFawF6GX
84MhQxmZ98+l8LEeWr11e5Ajs4C9mAgUyRy/TkvOZmgQ9M4vIzZnURVDu6Rwz5CsDHgCFXlZeEb2
tpRRm8cIfy8pAk/6Vfmg36+MiwQFq+241vQYmTMHIVob/xm3pWr5q3yb3wIpsHe85twtrWid9vYs
aFALipInf2H/4Pl9qGoKtbS99Ekt42bWLfSMF2zqhe7FPMF4NtXO2uoyDtNOwVW+u1aFBYLDM6g3
Rvc7nKJRYwi7fq1AlsdXtsx8dJ656JcpERtHiytnKU+7ThKd4Zk/FuLZjGFKkedj9r8s6aQuqyHl
cceO5BwlPp9B86ySMMgzAIOX+z1mXmZT6kCWg7vKQZIHI7HQdnIvXKH+S5a0Yo3f6qmKGBNG0bzK
PihbgQ/lFLVvtKTGduMGR2bGkF+ttpbp8hAh+WvDwKFGWgTVLzJXj0Q/Ze1rIA8AjkAo9zT84W8b
91zxGYlp1wxA8ijd9FRUWcBjO8KBKSDYLFMhK3s05NV81jXt/hpcBYVwQEM16e7yjiRR6gAQ3WCz
UTIYrApK+9aEDrmFsQPVfqdChuM0qcfDCKJE4eltqn9XR9UHQRaGCG+WOhR4TCF4jwZFod5OAzXS
UFs88T1yTNt2tqJgxOBkdvvW0bIyck+KdR+DwqEzUqYRN6DTBqwv2d84/M6KlB93W9LZpC5xfVCq
3MMpQEpNVc3T7qCi5EtmXdAgnPJ7Ms4i3zO1R430D6MWebg+8ol/bUPNn6WQu6jktusXJzYC4bwe
hqkYiuskSMLZsvcyAFyMNigD/gVM4cx14RVRNFChgc991h+J3LkPymYlHHCtqnnOU9VpMW5J2+l8
yGGXpwnRnORcZ2XwPSoLfUouqhwl4TTkEsFl++WYtVX7cByVH5XDa49V1pu1SSJM5eQlxmUnt80Z
YHPzAr6762FJWcEU0GM73G8nLuQSApi+ncyE7deg5578/J3s2RHSC3e/dUAKMm+I/o8YXOLgju6C
whCljcDtEzRm77dHpVU3JK7MEDq+WWnHs9+/yYmG6IfZr1Jap+QxewayeNwNQxsgZivHLOHynhOR
iSfWVzLD9D7lAJtB4F39fXkCaDNPiMb/JJpqeV2ME2714DKClF0J4nhwf5tG2OIBQf7XHCcJu1ki
S5Acusi/m3ft5a4Ol12aXXTjT5V0m2+yBmca2LRysVqT5lbQ5MIxmk2ZqXuHQErXK4DxTYQPzDlk
Mh8ZStFajUQJ8bpTOM2yrMfDwjUUFKfbXbXtB4NLmr73ZZ5EdSLc1hEmw4e2N1ytU/JcE44VFXWf
I9nZEUrRuwSJ1zISdht5nyNrTfRoS6t/lPI4iae+hJUYpCVTYISvG9wQKkX41mv6yzyW8b2vxBLx
M8lfn6ZdWFdpcS/GsVJykJBwTRJyLAm/4F29fZMTQW8UiCMIaseI+6GpAnk0uBJdo0ftCH2sgBQe
BUkMZlIrPZRVgbF11sd4yaFMCDghFMYvWX5SiiAd1MEVvxWX+HNHgy2aiIOr0wph8em8O0lvVplq
JdudiekZmRFUnL97gf148z+aN7GX+Ft2uiZ4ZThtlS6sv0UxFeb2WD1kBQ89uLuwyGijbAMW3p7q
8Ybp8gpbq2aM//iBsLZqaZyhvPcG22PbEE1O8t9HsR0fBN2Qe4TvUcxihGE9A/MYYDPQ21QV2+jL
SqKkdyi7vxFTGMuHlKn94Adblxip1UP3urpzOOJMx0hvoFRYAWD6tt3cQbPJrNKWMQNa7JQ1js3i
Z0Hp1AbPF9YrDIJ2VVY71BPFIGbVb252XyYguWVRjmlkLSCZZf7RoE0gVjNEDqaXUuQpcv6pxwn/
hWFDecTcllMqgu23ICF2mJpa6d6RBgFnE4Iyce5a1yblJbWPlaKG6kYG0mHu8XsjCEsZAHgZ3ol2
qBCz8gDSObxsdb/IE8umdqALQPxN7kRsPkT0jXxMbyk3Gt9n7aJxd5rZpUnDXV99t3yNVNuVBdhQ
u2J4XVr4VwNs1dwHM31qk3LqDoSsmk6nRWoCY/Ny9+2ObbaeAG6RMpCUMS2BlCnaYno3PGmuaLge
4Sz2tpLHXblzwYalDnX3Fnr/NHWUoIZA+BDbja5+ldd4F+NMlkQIBnDeKcdSLK+QIkFXg5Jv99yZ
PrMtc6qWjBPODNLv6FYLt2ulXZz4XBoQO9xQo6nNTJ89DFeOoOqaOgZZ1VibAuopMrpQQTJP85LG
ZdasqFYUQCdU6w4NuGXmxoAiD4n0oaoS+bLgALezQtCVjIK6o39rJBEnV9kS6IeU/zLyNRPVKIXL
JeJBOq818v7db4RxZX7Eu7fev3vdO1WYz0NJsi1jEeRAE4YcOHVQE2TLd/VgrnbZRmrps+6W20kU
joo9wMkWKJLeYC2ONptfmTyAEY2z23ovIl79d4MdED1WfQ6acKps1qrDyGhnprTRzbH49bNUDY7o
R5WrWAt0JDfe3N2iR9Gi3vuDAbKOFUbcvTqaVPx631m+4pHvG5aPw5QpVtW/1LnUxoeWDgcjJhfy
pfdCXb7zEgymKxSfr/d02mYOAHwnno0ksOeqHGP7aiV9kNv8Hc295SBUkwXLxegqKTHGlc3LrkfT
1BNZMpLR8RnRXoMeth6sGEgFbk8JuZWKVN4lgvuFFUo/suNZHqPoaq+3coGMEReULUco7sHjRq/z
DUmVmRBvDmbb9aTLXhe/UwXay9+Sx8FhtXhk2oAm6G0yPGtgb1T6nJXW9PrVL0dIXP6pjrIfWWns
MG1/jJRqgnxJd51BCsPw36/Ik3nqW2kgM0z1hYe1TO12teoEVB4i5/9haSqo75oXPyhxxnf78rdx
3G4WU/DjSe6b4sWruMH76jCW2JpFcM/NxmWPaz1xwbeQdS8pq3OgkvsgFRTv61FrEZduqSpN466r
n6kCJp8vqakYEzS7XqdRy5NyY5hpyw3+lbQP5eY0yVbqtgWJKXSCWRiXSi/i0LNPAnZ9gk/ZfN77
cPRh7MgMGDrx/Ws/adPVvRhNuumloCxxxMzWCl0hY/v00rwFmYQvN3d/q0Mi6xE8dKd8Q5rWo83N
QBFyuP9oQyLXF0o/LvqbpOia0KkOjlEBkVdW+EaHJE0u1x6WJkMoEFTxO5xxo48CMweTRX2CpaK2
8h+sbRF8UL4gzv/hLune7OG3sXGcMOhPEchRw3o4JBPyy83u602UoWukBG65PeQiRraSxt45hKwB
2v8a2pgA/PLwMrCAE7shoDNNZ6/Iu+EN1y95D9AzjN+o2Y4MUgRjxzMxsN+P2DD0dPfm76OXZSIs
qHWGLAteiAztmcQpmObryT7JT0ZIFCJ8nZWEIsxQrD4T8ATQxYzLoA0PELpsUawCrXgE54k/SQZY
PcCMkByu5vOZW0euQWwgmM5/YS/2r1oerDVbmb8/+ds48Efpkq03cAHfTX5a4YxT0XfNDumRMv9z
Q8ow4nPOOSAgT95NmgUoP9qSh+i9tJXGcEorU8JXy0hWuLLBHrzfFpgu+H/XBMVYfcQ7TNEtoZ0D
u3iJzRqlMfj3CHlNgO/6pTvLkTQ6E9JXbhrbfYtRpxDZuvjLl6DSbjlBhpN1TCM2djmtTVfBY1Pt
9pyksobgyUaFYfdhrXs4X8DeDowbF/46bwUlh7aouNl+k/kTRfmXjStoxwzy35UMqnaFHp9pf2fo
nrJSnBduqbGmibdTkI56feVxAe38YSwvSQjK0dFLx12/TNjfNCi76Yr29VihIisuAmG2MlQ7Akr3
nvvz1ViakoIKUE8gyC2HDZcPn1cgRX7VsUnWLqU3PTNnnYHh4WBLENFQQHTQ6XJgMUW+LEAKmsgK
TQmY/nBAzRWX8EHoW2IFW0KTWom/0wXi93ecwvNUb/HbdlBelPnxne6lHuhn9lvRwnAsnf7tkzn0
dkc0khDVTfdSdxOMiecVg9ipt6bDPJ5wy2+Es08XL7tnT83FRjzI65WsAIZiMMrl1iH7BzzhfGVM
nBzHadSXdq4F7IZpScVU3YDaALdxMetAjB/0kpH19k5Qq2Pgh0KP4ObN9jqJ7Kg0WSpaaJlHSSNo
qh0T31TiF7SElzxmkz+FZ0lOLvnS0Kl4xVtRf9DW/M7ZZF8uYa5N69Uku0gxR3S3Ma4YgyTFZJjo
n3/DbFM8I90XhOn4JJTQSAF4jK/GQUchYpLrK+OVcTeEOroPNRaIMWUWsfXw7UYH1h20E37EMu8x
xVvM5prn2JwB90yHh6VWhXOvSZULVQF09q55AKUZjM7bjAUv5FK2f6Wo2H2eqZZ5shhpA7Cn/+4X
jwfusxnshH2E0KKIeRGrmU34Lq4NQkTHUf8IqUYa9f3o3EyYt8JHP1HXFpayFv/7uftMTuBdzFZG
O9EGa4OuZ6mUT3/O6lFC4y6JfZ0wL06frWyrjZEv2DYofTL0GtD0ioF1R0NsOzsg3qV7XAUi/070
Y3cCBxtbe+w09xfvDZXIZeBtcbcpCqDfCaVEycaf0Ax1rbLFbXk9PXL6LHVfZXZRfu7OJXkpJH6x
CBJ1vxgMtt/qUUDA5c9Hxep5u4ocwUOwsr0YXq9WU7SvDKtBgmmn0rSvlM/OXErTbV5/et1mWGmE
0YsCPRrBNFr0mnBISiThXLZI/mwVcgEabhaR7+ObPiwLtUznbq0PKs+4qn6EfYRM9EbtsmO+dQGZ
/eG7j9ZBDM1fnzHtVUztxJgJ1yDnYdPBc/F4xVUcksRuL/2EYWddULbALJpNM0WC2xOe+x81ag2v
s3hZKeNwGEA/1gFNpW6+H2J+9JBH3cW/BoyiRjji62uOtlw6qtloWjpc9rB81CtSrhdNpt0ULjGS
N0lcxaFluEBouV946+Sphu80BDRm5x8p+gVJtGeW3sPCKs6EABFj/lIm3pF9Iy8q1iJBKbCakQaL
23QlZGajEQeQqrVS1eBFQp9arg71ftr95Sp//dMq6oc8awQxf7IqSiMP/0V5Wg1OxEm5H8NXDNO3
jjWe1Hb7OnjPWzr3K+7AbGcv91R4Yq8o8SC90kYJ4Occw30OGsjYlx2UqPzrfeELPcjYfXlnCBai
uSDe/KFx8kPaucn6x/3jygpq2U//g976AtWKL0CqQO/kP/oT3D6/A2+F6EWe3L8WjtkZQRY3eEIv
fw6Q5/tjmyQ2t87Q6dhcPx0jFDPxp0jrulh0djGGNuTa+wgVWAowtqBajXpL++ZvVR3zZ5MgnXTM
j7KkpiENbg5Afh7nl4onHbjzXJrsoXCezeW3gTgSJGgyzc6BhyLInVettHUjQReEIkpcLaekpxxZ
bRr0qqAIp4oEvVpmkyINxZ1Efs+xenpgnS/wuAs2hqwoKO/2WnRG5QRjOCWu/fQm8AxdO0MrCVRK
ymnMuzTcmPgVOvVVLCxy2zNm/V7IWeOdRbgYpUCg1Fr/QWKlPWI+9koAQw+4/15F8MRN/8a1ISAS
TjO7cg9uQhVQYdJ9BA92nBeKeTLQeLxUigI3H9lPWbYrnOJxZb07LwhqJWz0LuCuKU8QIADeyM1H
Cd3L8DVUSPxdV/8KA3K8KIjfe2PgPVGd+4UlRMTeDGKs1OcSRQGZWb6w7oenqyClRD2dE5RXOtvT
QGdSGelp3sunEBl8QvpND0KZlm+EfU8PAdZKElze/GTTRgBM6ACJLTbn/whb8pL58A3C4f1SZbGY
JWqS+oVtMMqae7Ytq71Pm4h9gkUA/roD5PgC7rosQsimarp+sOFg+8rKRxwBUaCYv9Wq16+qaIim
0idaXZbOd2IPSQXYjQra2i8wAzwmBnCsGJXVcNZm/DkbDDESZTV5EH4uaoS9/ZNyG2PYbpsUFr0d
FPjT5TgxpKxMd9oFIS2N3/fSlivMhWmVr30DV5+f7XczfHe8x+8zrBw6oMnLn6xcsV61f5/jPvjg
MdYEqIYxY0PARv6/P+HYCBkU0zQW6GL1um7c7WZ60BBLoL8YUHRyi/yEeq1oZo0B+Lujqmbw+DjO
SSLr7yjUqvKHeGn4JyaLm0EdZIwXohQUIiLzq1bECKLBxZun2Xd3lDglAgqWomlJVyNJRiLKS8Ry
pLCmud2Jrf2kId5bbKooTSnSYcg8oEtxLSytfjSrfSaEwfDJu1BH+xyNtwtaEpB28bdAeZWowf7+
hor1Fh+QfA+Rq7YSlKBHv7E2B1P2PMb5SciXe6ogYFtSN8/9QjI+2qfLgCqAF5n8Mdyc/o1QDvcD
d+tu8+me0OqoUvbFrt4TOD5lACK5cSVmLsZ9p7/UZrVI1cjVRfDVHIJ34yq9SjMKf8cFa8JvP9oc
TUEJIKZC9ExpdqvsCETnFWJGeqGuDZnRkm8MHSqJ+SN6mQ5ECoeoM+6m1vfX0Ajdkqadh2qyHMXt
wxHXlzvJ4sw88JIUlscEMbeUf1tWNuNOKvQmPxldHXG0UcI1YIOMI3SfaRRk8eEiyLosU1fM+Bn5
Jln7arDYx6kEXuGBNh/Pm+QUejKiUheheOGYa46Tv6DC6l/uKMFHJYfCjmM1bEvACWo/vsMHaefy
wgZtCZ/pJU1Vlkksrfd65ASM95YbiJWGBt/9Kum1VxHVJXsBaDdCO7y/IMOZPOd7Z2JUdYW43Kpe
5bJ0mA4/4Cj94SfoczA6oW4N2VQJs+p7F4+bb08UoUnNT/DQvtCzKZNpRW51wTlyRoOvMzPhoPn0
+XMUYAdrbJU05CUTznRjFT7X02TzYmFGEqHFbBVAWTtnW3iDx6IkqXSC6CCBnOp31Z2fzARCeK7f
3PwXLKzd99N1zzwV73MnSP7qRLuvUsC5Tk6fYut0CCe2jRnXrBfB31A1QVzTgfxR1LIe/NbITnB7
oLdtIp/d+G+ECmvWwKKP05JCOSnjHwP3hApCbVSidIIB2b35r7RAxeVeMPDLEw7YuIUuqgsRrHMs
9ZKkIS6BSuFGcOym7lHkQKu1nW/TSgDr8TR6y1k3zAZfK+pb2UMOE/Rg0AzQ3xcPBEKOZ26WVD+q
3ud9cz6pBrtSOs9n17adAJoNH0Y5KS872l8PpPPLHFk+VQx4TtH3udK7beaI3LKyXGvbhqUQSh22
t0toLw8GFZlQCsz0ZuAbX4TKR0fpsazpBszmq4CJzivJNg2vRsTAEiAGcRm+BjT6ZmOLePx9py0Q
+ijN8MB8gONpP/5ilY8UmI3QDk6qhTqQRY6bU79pJ7FUz3Og2fVXDnUMAFrmLrl76DwBscjBLZtS
l6i59DQLPrMF/BqOaKMP594yscodL8nO4zI4EJlfDl9b9rpBLORpVthFTUS/Tyjm5lffUG7JeB7T
OH+LJ92aJJQrHdQdbOUDiF1Ru47iT8+LkjooVo1Tus4l2p/Xw5j++p1AnmLA0mvXVpMALxuBTSIf
PBPqSeT0IIgczs8vvq0Q4bjJ2pju85NWclVUAQ7gttmEpsS8Pkj5dB+Lvz0sPVUF8JzlP6bOQ9rA
b7WxtKKfyfui6q3GVzcGLOCtxpSBLG5VifzwE9P2ZRTPhMNLtrMnalJdMqEuaOIHCOhEzlzV/WjE
OzzxU85xo7ugbqe+oM/7+SJzRp0BzcSpFONDkoDzzHv/gf1fqkpAHcahzHQV21Rxf4/qF7IZDERK
AUTfJNharJwaMXolLAa/uzzBPRSxfQfzSDfHPLh7GdT/lYMzlP5XXXBu3YZnlUowy6xieCIJt6YB
zkScZ6xK7vPRoD42XXFxPNGyR6G49U43uBuHhgwlW0/RAmYLPduG2Tu22cPGs7ho+0S+OgJ0N2lN
qJBRak8zHiU1vEOU5gix8UXTBJmLL6tETbkqXPcypPHJj64Vc4/S9I+e5bujGOsUW0/c/0Uc6H8O
Ex+QkTMWYQtGNQ/Q33BtlzBcDQTAwd6QDzqA30MZuT23PAZv6cxfO0ud4gmvlHE2Zv/iixMdDDmN
LehbKtodWa/nMbS8SeGr3maAVJJsP2Aj+IXmT0Gt0CN7VYnYMkPgqdx4E9jafvZgsxbm7Gg4/j40
t4jQ9Cfyy/6qYWvwNe50rx8+vhn78wtVoQXrA6HQDmA9Cx7FV2dpsHODbLHmti+MVC099Bg28KKW
TRxUs/xePSsoLSYapnfTwWQDauTzWpkhrXk872soh9Rq8CaHoKEP5kA4dN4wkqCsp97/WAaQo3I7
1E8KzIy2KY4/zJ0sK6h4P7r86e9g5GqlgLlKT1UIuaLdEiiZmGBZII8G0gCR+EGqOEd/07eqUbro
opLDqAyLKcb6Wy+0qanz7OWpe+DqOXoCZpLfH2Cu9mH5VDJVnCZoV9Ip3DA74EX+f6NHsy+0ozzq
aEnUJ8rulAzy5rHmh9q+ofcfWZtslNptrTVbJ4uu9hBOT62R0Xwkcs8C8eKgW0k7r5Qd3CdjtJnT
5wlLvV0Z2lhnxGsK9EPmMFZiFVNbv8YIpekJZUZJcPqoJo+VYEd5UATCrWXrwh7lS0YhL5Pbfwz0
HW/ZHwjAdJG3wHcHnd7k167KhpNcBzdiezXyt0ZWUdwy2Sa8ruGeMhNzVs8ePybnIXSzsOyhJ/Ys
oeuo8FTI1YQM4zpTN0q+qr02WuKu2IVJL0ZrU4d3YhG+2w5KkntnZHZfsCfycH5mXQBIuJakWOUs
M9Ti/GMA6MnP9HzGaHnSIpySmOC9/T+MhtbgwYcSyD9RChcqVVEOCOYLRxOXb8jFzNAZmSsxj68v
hVSCdo14gKWiH4nxRcD+O3a00KTSq+OQhYoTuP2bQ0TI54cIUfkWjDp8GQy5DjD+2INEEvGGWDuT
vp0Pjo3z9XhQdf+uihnLuk2FNCnDVHLgKsUW5zWHDZQe4tCxMEqdaKzDbYh/J0i9M7GMk915/XpC
PDdR9XckQ8pGT/D0/KsKw4izjh9DYi7r094Req+JYC/IxyOi4OigQP7WDJarNCZ0faeTukpyIMly
8ddJahHLAPuV76Zlglwp6ZIkfEjFLi5TCdySiUQ0oXp9f3dQynRtfDsLz0eiNZRd0ee7no7k0ExB
adLJynH8g5jczPdYaAj+jMZfzVnuiQliphBfWJNAJMDd/E8pl/neiElciwI93SGcyzVMWekU7MVm
P8oozPgVv/9JtVEqdvpv9FhCVPc7rzMwfm82quXCHfYupslEhPl4/QIEBXk7V1+ppEPVvzKbtkp4
ba9pFTrFFJexbpiGcdmchrYVJPum+iEHbzDm1O8R3xYTxE7iCvwvjiVC43r//XuBiaN4CxTlqC95
UYYlPiusquUWgES3vh233vVADEEeI9BxyXS2h6Oasa9ci+sPaew/RkxXZo95aFtpJ2XqDTduJFUv
R7h+wbvi4VfAPKAzITqjad2DmkzAt3fziatdi2ye3jW7AFnFX1uw6/UlEd6M5ZYNXHlWnGNzCzkH
E7KqydBSHDMsNaq3WRRTQxM7xiMk8qnKEKaTev1Whrw3qLyigOfuoNxIDaVdMHBshcTu15GZ4T4G
jjUvdbzUtgqY3X96UxYlASqyuTTtxPdoDAklfUd0xz+SlNUwnZMPWfwcwjLyXovlWuVq5ctofdz4
D+LjSl0pobZndDn0JftEewDhNnsqvFHKrNlqV7O95f9AKECD4qsAo+vzXyf+DWaBbvRHDdLjrBhG
ahfqMiHJTxyIYy26UEGiL1kxDoHRjaiLP8i1DuzVGnJwb/sXzrX8tW+VahdLMva4W5Co9ZmWHnCK
r5d8XWlAOlFGQii2J7ze2rrDT9NKRLAZQSiGNkoWMA1XtCGgbkf1NR8Dt+BLdTdlRB/emFATtcZe
TAQNG6T7GNOPwM0hc4BgHrWVkV0kICBsg+tR9KKvd7QR0hfbYCj4EppbPIVSWJJgj+P0clh1PkEl
JUsr6KKZZl76rPisb8po8Aidx1Rx6eKMish4WYQ7mDfeSEg5IYP6A/ClLwCrvU4h5/Sg4c39egU0
ZFC4P54D6+7sLtA0fOkftTJcT5E6/gdh0vBliLgBS+IhvvqwFb4bn+af5qowBPI2r7/lpvcpYkBA
7o9/Cvp3D2sPMd9TZrpYzxhW2RGzibRgAPQrq1jKcjDCNneurjJXEl5iJBCs2DpsGhbvzW//1XSa
X1pMnptz1UR4rIov5J3hX3B3QoNw/7wmN5a4/EuHTqYEZuE4BxCaG0pwR6VR2FbQqcaLOW+B9sYx
YdecGf0IV8KfOmgxGY1DfD9dIZTbaDs4mzF78I4ZzSc+F+jVnQ9ub66bUrG4m4Udp1jj7mh4Cq4K
Eo6ouCmj95IP4Wq8vDb94qESkoAVS7OQhLHCLQXtI8wglw8BRzsTwMK7zvq8PaMgYb37msB39RU+
2U0O4c2WBjo/MBp446HmAx54JOkvBHMttHIbMCpoBMm7TQkrSyawRcFg86I7pqoy65lE29UhIH+H
KtB0NlVoIf6l7udUFGmGaBbSDAPuNEc0gJSPG0vOUHZPKJ9icUF2/xx8Zt0Vx4k7iLMPp6VD2aiP
8yX0xetX+wCPtAJCkad6cDe6LZoSfW2fV+bHkhBXLzRDmRPg4swdEf7iJrRcuDPibK1EPlQk87LD
8K5KGrb+Pqiph3Qh8c2iC6AEG6xTc+g0SAjda0hmAyDY71MU1k3JhR2mKj0Mxz4zG7+TOy5T9imp
slXABZvvmXKsNmWW7a/llKN3vOHrogXrQd2jfQiaMuyFkKUjm1FFuELs8E3gK0JsGYyXkDcKRkVj
OW7nuKWGT0NSidCrSRW26A0Z+cEKqMWcITR8BxotSENz4l2mJEW+afiP+202K1VlXOSlQoHoKCTk
3C+26JmzOIcwKVvpqx/OhkHKUWm6DT6iksUxrfrxCtTXbKlMz/oNNRnMS2jkPDjTQCalUaA1JswJ
6F0KoCRJobb5jUhf4mOd5+/9n4FJdCXsPVD3SYL8jH+zfAbxDGHoWy6fSwcIuvBStoVn15+Z+1OG
c+exJAbrc00/frJvh7uXWcYGhF+Irl7QySvmiNKiKUnXIKWX4SBoDPUxpM0xXP50IAsONAzRoY0W
VDq2zfnHwR4eI/ZdfhEfTilp6nubsLU7uyMAnjMjNEkW2U4CBzH/HL4DrZVjyHroREIv/0j162G2
vPIrz3Nz8G4N5Qm8Ic8/2SNpIQf2XEk2KA2ZRK7QlTWjTWz6xpkfGp+gzmw7dn5Nhc9ZMdVVATXk
wVvbdpk+KcK5fRmMc7xNK4dIdSpKhWwsIqG5RD0a1QK8uha1G8ksdF0ihBP+2WmBuQrA90gr/WDt
9rcllcL+TNT4G5wAroOuRSKbMv3Y+0LjbolFVoMlD8JI61gcM5wmF6DOGhkmqtp/0caYWtTnvAOj
DxmfoszRIttJBV90MPmpQS+PIZDwlH+v1eHOAFcx7mwO4tBRBRm/87hSRZjm3s9tsE4C8Qdslb+d
/SQX26l6kWx+LU4h0Ha9pqXCuowVmtVAT+FSoPOOhuRubPbdSvYqUSlE5usStmqNpDKNYJ7o5FCe
szJf+xO70HQ49ROCsrTnPdG5gEa9k5uzb1MGmiUGaV6HuCXP1o/yKdaZy0MY1+e36be1zNoPawyN
ZKTnYsSUYpXWUV7G2TqqY3TNR/qw6deGUygbdzYPT1jC+I69kzk3IV0LJFEviKznP//ucMzhnFrd
qnMjZKD72PtShUL8Q6EvPHu47qFEuDehY9ixWusXzu1sx03wuQYJpy9xNI5hKu0Dr35A6MoqIAPP
aMzIBy7/ZotBK0PLTzBJs1ivu8GtfLPEtu5sXTwHyFxAYxljsCQXYXYkbFqIc3s3KJPKWjkLt9w/
Xz09kLxMfZjhLthEUpqCPKRqgJFe3/DLLm7T0m1tqoYXFwFSiwkhCgzDga+h3z+J0vrsquqAXXGi
TEH4BfRRGFIMYl9FpTsOMXcvER7kpaQPtbMv3s5fCXNrChFx2d9n81raSJBVydmjL4gz3Q8HRqi0
jFOATLcUlXNHO8E7KeRFa8KFNiUm7sPnk60BLvBfgFEGMVO0f2nYtg+/cgVyyHA+ziknDqHHIMj2
BUMvTE72JYSp7KsC2BMhnctrrkei6UzEm4Qq1D1bKCWVispPVOJL6apVyzwdzmlciubz352OAeys
V5i4MxW5zTxnfghR+KrRq1YVkxqgslcm2wrcOaGgdMcOsQUpYYBQ+NuDptOHFVIxD9n/3SGuOvFz
xJPS/2XHdjQ8mUa5SJvWYlkj9kO7NuXQSy80ncE3XM4i3fIQw7a8pxso+J7ozkWTu5WNU7DGPcHX
lz4vS8qHEGIflbZwZJtJjKV96JpOkRo7GNgPQi/kf7GzDArEkdXnmPYfYa6fggT+y+PBWqC/WaNH
IdLGAv7jxiPvjf2AWvUasYtUNvn6AGHe2gIRbddJdgndLgsaKdjprDaqlzDQSClWiJLBHuGOn58s
xRFmzEAjkxiRT6ZLa3DScIj26Lovu6Iz9irFXwged5YE+kJ67LhPPuB8SkkSPq6PmF+J16geusBU
3I4m/Z8I4VJfWFQgud70p3bH165Ky4bI0zJh2AqbBrrVLl+Jln6OnSCE+R3AYAeoN4w5hq2c71mM
hZOxgQhzcN+TUU3IGAWijml5zVW7r67ouR/Xpw7Q11PRjLrem4ktzgBmCQDCcdBP0LxRrFwPLNRR
NvT2TbIknDk7SuZVc9LyRZEBskdNOht+i8APT5vnfaPTib/qoj6FpbDmPlfASNvji+fuYiDTnUNX
7JqLI99lc5EIyPmhsunl9a2/0mPwoaTVR25sM+Yi1VOYt6ADYluIsNZomOK06u8Bh+PsdOdPfQvG
VWlSHXOVbmc8dALyHdJxE5CqiKKGkL1+AZZGu5KSywGITwqns/AXLbO38A/FWhKqj9CoAMroMEqx
kja/fbMDoTRhjPNbFKjvdJGgyVILyNPriv1WSiMjqpgBWUWpTNIGzaPgdzakauxL1TiyHHBdic69
52nqZI47nD6gP4FiXWJnyIA8HXgfftWupQBGNlWNuZ17vJ+h8MwI8gTI/QVQ1pLaLf0RCy8BVw9W
D2ZUaoKrfvWxa7MFwm4QHKrbAQFqv/S2ObM6H0BM+VPKABrhy3c/1AnpiS28i/WOnVNWdVVJSovg
CUWNPcwfdGSqoCpri7J7T9HlVnCAJdMHGHDpaXhemOwkCwYdgyA5BXIYbaTTuhnJiHC9lSdu4FHu
waCRtnDuZuQEgvrTsmQ9MKM/WawJgb6X21EOcQhEx9wIJqexwRiSplmUbRRiqm5jsZAXh0PiQNSl
A+G2pM3p/ZT+Sx/rkkkbAYdwTm0r
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
