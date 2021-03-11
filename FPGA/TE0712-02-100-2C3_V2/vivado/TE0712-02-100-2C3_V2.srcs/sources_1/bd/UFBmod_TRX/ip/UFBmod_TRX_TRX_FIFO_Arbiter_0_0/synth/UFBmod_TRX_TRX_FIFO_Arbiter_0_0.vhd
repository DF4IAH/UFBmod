-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:TRX_FIFO_Arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_TRX_TRX_FIFO_Arbiter_0_0 IS
  PORT (
    clk_100MHz : IN STD_LOGIC;
    reset_100MHz : IN STD_LOGIC;
    TRX_PUSHDATA_ch00_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch00_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch00_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch00_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch01_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch01_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch01_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch02_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch02_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch02_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch03_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch03_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch03_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch04_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch04_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch04_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch05_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch05_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch05_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch06_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch06_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch06_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_ch07_req : IN STD_LOGIC;
    TRX_PUSHDATA_ch07_grant : OUT STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : IN STD_LOGIC;
    TRX_PUSHDATA_ch07_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    TRX_PUSHDATA_wr_en : OUT STD_LOGIC;
    TRX_PUSHDATA_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END UFBmod_TRX_TRX_FIFO_Arbiter_0_0;

ARCHITECTURE UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT TRX_FIFO_Arbiter IS
    PORT (
      clk_100MHz : IN STD_LOGIC;
      reset_100MHz : IN STD_LOGIC;
      TRX_PUSHDATA_ch00_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch00_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch00_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch00_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch01_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch01_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch01_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch01_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch02_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch02_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch02_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch02_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch03_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch03_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch03_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch03_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch04_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch04_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch04_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch04_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch05_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch05_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch05_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch05_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch06_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch06_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch06_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch06_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_ch07_req : IN STD_LOGIC;
      TRX_PUSHDATA_ch07_grant : OUT STD_LOGIC;
      TRX_PUSHDATA_ch07_wr_en : IN STD_LOGIC;
      TRX_PUSHDATA_ch07_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      TRX_PUSHDATA_wr_en : OUT STD_LOGIC;
      TRX_PUSHDATA_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT TRX_FIFO_Arbiter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch: ARCHITECTURE IS "TRX_FIFO_Arbiter,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch : ARCHITECTURE IS "UFBmod_TRX_TRX_FIFO_Arbiter_0_0,TRX_FIFO_Arbiter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch: ARCHITECTURE IS "UFBmod_TRX_TRX_FIFO_Arbiter_0_0,TRX_FIFO_Arbiter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TRX_FIFO_Arbiter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_100MHz: SIGNAL IS "XIL_INTERFACENAME reset_100MHz, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_100MHz: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_100MHz RST";
BEGIN
  U0 : TRX_FIFO_Arbiter
    PORT MAP (
      clk_100MHz => clk_100MHz,
      reset_100MHz => reset_100MHz,
      TRX_PUSHDATA_ch00_req => TRX_PUSHDATA_ch00_req,
      TRX_PUSHDATA_ch00_grant => TRX_PUSHDATA_ch00_grant,
      TRX_PUSHDATA_ch00_wr_en => TRX_PUSHDATA_ch00_wr_en,
      TRX_PUSHDATA_ch00_din => TRX_PUSHDATA_ch00_din,
      TRX_PUSHDATA_ch01_req => TRX_PUSHDATA_ch01_req,
      TRX_PUSHDATA_ch01_grant => TRX_PUSHDATA_ch01_grant,
      TRX_PUSHDATA_ch01_wr_en => TRX_PUSHDATA_ch01_wr_en,
      TRX_PUSHDATA_ch01_din => TRX_PUSHDATA_ch01_din,
      TRX_PUSHDATA_ch02_req => TRX_PUSHDATA_ch02_req,
      TRX_PUSHDATA_ch02_grant => TRX_PUSHDATA_ch02_grant,
      TRX_PUSHDATA_ch02_wr_en => TRX_PUSHDATA_ch02_wr_en,
      TRX_PUSHDATA_ch02_din => TRX_PUSHDATA_ch02_din,
      TRX_PUSHDATA_ch03_req => TRX_PUSHDATA_ch03_req,
      TRX_PUSHDATA_ch03_grant => TRX_PUSHDATA_ch03_grant,
      TRX_PUSHDATA_ch03_wr_en => TRX_PUSHDATA_ch03_wr_en,
      TRX_PUSHDATA_ch03_din => TRX_PUSHDATA_ch03_din,
      TRX_PUSHDATA_ch04_req => TRX_PUSHDATA_ch04_req,
      TRX_PUSHDATA_ch04_grant => TRX_PUSHDATA_ch04_grant,
      TRX_PUSHDATA_ch04_wr_en => TRX_PUSHDATA_ch04_wr_en,
      TRX_PUSHDATA_ch04_din => TRX_PUSHDATA_ch04_din,
      TRX_PUSHDATA_ch05_req => TRX_PUSHDATA_ch05_req,
      TRX_PUSHDATA_ch05_grant => TRX_PUSHDATA_ch05_grant,
      TRX_PUSHDATA_ch05_wr_en => TRX_PUSHDATA_ch05_wr_en,
      TRX_PUSHDATA_ch05_din => TRX_PUSHDATA_ch05_din,
      TRX_PUSHDATA_ch06_req => TRX_PUSHDATA_ch06_req,
      TRX_PUSHDATA_ch06_grant => TRX_PUSHDATA_ch06_grant,
      TRX_PUSHDATA_ch06_wr_en => TRX_PUSHDATA_ch06_wr_en,
      TRX_PUSHDATA_ch06_din => TRX_PUSHDATA_ch06_din,
      TRX_PUSHDATA_ch07_req => TRX_PUSHDATA_ch07_req,
      TRX_PUSHDATA_ch07_grant => TRX_PUSHDATA_ch07_grant,
      TRX_PUSHDATA_ch07_wr_en => TRX_PUSHDATA_ch07_wr_en,
      TRX_PUSHDATA_ch07_din => TRX_PUSHDATA_ch07_din,
      TRX_PUSHDATA_wr_en => TRX_PUSHDATA_wr_en,
      TRX_PUSHDATA_din => TRX_PUSHDATA_din
    );
END UFBmod_TRX_TRX_FIFO_Arbiter_0_0_arch;
