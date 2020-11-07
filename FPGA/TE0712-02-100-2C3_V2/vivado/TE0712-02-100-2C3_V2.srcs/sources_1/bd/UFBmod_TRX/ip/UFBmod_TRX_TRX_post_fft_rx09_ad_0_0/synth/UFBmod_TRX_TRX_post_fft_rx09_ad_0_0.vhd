-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:TRX_post_fft_rx09_addr_decoder:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_TRX_TRX_post_fft_rx09_ad_0_0 IS
  PORT (
    clk_100MHz : IN STD_LOGIC;
    reset_100MHz : IN STD_LOGIC;
    addr_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tvalid : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    addr_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ena_ch00 : OUT STD_LOGIC;
    ena_ch01 : OUT STD_LOGIC;
    ena_ch02 : OUT STD_LOGIC;
    ena_ch03 : OUT STD_LOGIC;
    ena_ch04 : OUT STD_LOGIC;
    ena_ch05 : OUT STD_LOGIC;
    ena_ch06 : OUT STD_LOGIC;
    ena_ch07 : OUT STD_LOGIC
  );
END UFBmod_TRX_TRX_post_fft_rx09_ad_0_0;

ARCHITECTURE UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT TRX_post_fft_rx09_addr_decoder IS
    PORT (
      clk_100MHz : IN STD_LOGIC;
      reset_100MHz : IN STD_LOGIC;
      addr_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      tvalid : IN STD_LOGIC;
      din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      addr_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ena_ch00 : OUT STD_LOGIC;
      ena_ch01 : OUT STD_LOGIC;
      ena_ch02 : OUT STD_LOGIC;
      ena_ch03 : OUT STD_LOGIC;
      ena_ch04 : OUT STD_LOGIC;
      ena_ch05 : OUT STD_LOGIC;
      ena_ch06 : OUT STD_LOGIC;
      ena_ch07 : OUT STD_LOGIC
    );
  END COMPONENT TRX_post_fft_rx09_addr_decoder;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch: ARCHITECTURE IS "TRX_post_fft_rx09_addr_decoder,Vivado 2020.1.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch : ARCHITECTURE IS "UFBmod_TRX_TRX_post_fft_rx09_ad_0_0,TRX_post_fft_rx09_addr_decoder,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch: ARCHITECTURE IS "UFBmod_TRX_TRX_post_fft_rx09_ad_0_0,TRX_post_fft_rx09_addr_decoder,{x_ipProduct=Vivado 2020.1.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TRX_post_fft_rx09_addr_decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_100MHz: SIGNAL IS "XIL_INTERFACENAME reset_100MHz, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_100MHz: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_100MHz RST";
BEGIN
  U0 : TRX_post_fft_rx09_addr_decoder
    PORT MAP (
      clk_100MHz => clk_100MHz,
      reset_100MHz => reset_100MHz,
      addr_in => addr_in,
      tvalid => tvalid,
      din => din,
      addr_out => addr_out,
      dout => dout,
      ena_ch00 => ena_ch00,
      ena_ch01 => ena_ch01,
      ena_ch02 => ena_ch02,
      ena_ch03 => ena_ch03,
      ena_ch04 => ena_ch04,
      ena_ch05 => ena_ch05,
      ena_ch06 => ena_ch06,
      ena_ch07 => ena_ch07
    );
END UFBmod_TRX_TRX_post_fft_rx09_ad_0_0_arch;
