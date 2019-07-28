-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: trenz.biz:user:SC0712:1.0
-- IP Revision: 19

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY msys_SC0712_0_0 IS
  PORT (
    mcs_clk_out : OUT STD_LOGIC;
    mcs_clk_in : IN STD_LOGIC;
    reset_out : OUT STD_LOGIC;
    GPIO1_O : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    GPIO1_I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ext_sda : INOUT STD_LOGIC;
    ext_scl_o : OUT STD_LOGIC;
    mon_GPIO1_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mon_GPIO1_I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    sda_i : OUT STD_LOGIC;
    sda_o : IN STD_LOGIC;
    sda_t : IN STD_LOGIC;
    scl_i : OUT STD_LOGIC;
    scl_o : IN STD_LOGIC;
    scl_t : IN STD_LOGIC
  );
END msys_SC0712_0_0;

ARCHITECTURE msys_SC0712_0_0_arch OF msys_SC0712_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF msys_SC0712_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SC0712 IS
    PORT (
      mcs_clk_out : OUT STD_LOGIC;
      mcs_clk_in : IN STD_LOGIC;
      reset_out : OUT STD_LOGIC;
      GPIO1_O : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPIO1_I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ext_sda : INOUT STD_LOGIC;
      ext_scl_o : OUT STD_LOGIC;
      mon_GPIO1_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      mon_GPIO1_I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      sda_i : OUT STD_LOGIC;
      sda_o : IN STD_LOGIC;
      sda_t : IN STD_LOGIC;
      scl_i : OUT STD_LOGIC;
      scl_o : IN STD_LOGIC;
      scl_t : IN STD_LOGIC
    );
  END COMPONENT SC0712;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF msys_SC0712_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO1_I: SIGNAL IS "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_I";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO1_O: SIGNAL IS "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_O";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_out: SIGNAL IS "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_out: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_out RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mcs_clk_out: SIGNAL IS "XIL_INTERFACENAME MCS_CLK_OUT, FREQ_HZ 100000000, ASSOCIATED_RESET reset_out, PHASE 0.000, CLK_DOMAIN msys_SC0712_0_0_mcs_clk_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF mcs_clk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 MCS_CLK_OUT CLK";
BEGIN
  U0 : SC0712
    PORT MAP (
      mcs_clk_out => mcs_clk_out,
      mcs_clk_in => mcs_clk_in,
      reset_out => reset_out,
      GPIO1_O => GPIO1_O,
      GPIO1_I => GPIO1_I,
      ext_sda => ext_sda,
      ext_scl_o => ext_scl_o,
      mon_GPIO1_O => mon_GPIO1_O,
      mon_GPIO1_I => mon_GPIO1_I,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t
    );
END msys_SC0712_0_0_arch;
