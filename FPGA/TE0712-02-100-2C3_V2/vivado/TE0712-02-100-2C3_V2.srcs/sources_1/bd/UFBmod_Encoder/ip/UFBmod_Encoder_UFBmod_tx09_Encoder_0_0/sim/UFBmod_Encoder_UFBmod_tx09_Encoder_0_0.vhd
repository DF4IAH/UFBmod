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

-- IP VLNV: xilinx.com:module_ref:UFBmod_tx09_Encoder_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 IS
  PORT (
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    decoder_rx09_chAll_sql_open : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_chAll_active : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    encoder_pull_FIFO_dump : IN STD_LOGIC;
    encoder_pull_do_start : IN STD_LOGIC;
    encoder_pull_data_len : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    pulldata_tx09_en : OUT STD_LOGIC;
    pulldata_tx09_byteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dds_tx09_inc : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    dds_tx09_ptt : OUT STD_LOGIC
  );
END UFBmod_Encoder_UFBmod_tx09_Encoder_0_0;

ARCHITECTURE UFBmod_Encoder_UFBmod_tx09_Encoder_0_0_arch OF UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_Encoder_UFBmod_tx09_Encoder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT UFBmod_tx09_Encoder_FSM IS
    PORT (
      reset : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      decoder_rx09_chAll_sql_open : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_chAll_active : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      encoder_pull_FIFO_dump : IN STD_LOGIC;
      encoder_pull_do_start : IN STD_LOGIC;
      encoder_pull_data_len : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      pulldata_tx09_en : OUT STD_LOGIC;
      pulldata_tx09_byteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dds_tx09_inc : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      dds_tx09_ptt : OUT STD_LOGIC
    );
  END COMPONENT UFBmod_tx09_Encoder_FSM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_Encoder_UFBmod_tx09_Encoder_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : UFBmod_tx09_Encoder_FSM
    PORT MAP (
      reset => reset,
      clk => clk,
      decoder_rx09_chAll_sql_open => decoder_rx09_chAll_sql_open,
      decoder_rx09_chAll_active => decoder_rx09_chAll_active,
      encoder_pull_FIFO_dump => encoder_pull_FIFO_dump,
      encoder_pull_do_start => encoder_pull_do_start,
      encoder_pull_data_len => encoder_pull_data_len,
      pulldata_tx09_en => pulldata_tx09_en,
      pulldata_tx09_byteData => pulldata_tx09_byteData,
      dds_tx09_inc => dds_tx09_inc,
      dds_tx09_ptt => dds_tx09_ptt
    );
END UFBmod_Encoder_UFBmod_tx09_Encoder_0_0_arch;
