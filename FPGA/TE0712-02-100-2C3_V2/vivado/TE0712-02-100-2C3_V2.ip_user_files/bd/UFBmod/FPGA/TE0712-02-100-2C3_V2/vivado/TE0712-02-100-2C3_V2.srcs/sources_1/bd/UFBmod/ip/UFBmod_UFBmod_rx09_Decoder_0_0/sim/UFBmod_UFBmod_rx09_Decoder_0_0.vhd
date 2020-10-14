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

-- IP VLNV: xilinx.com:module_ref:UFBmod_rx09_Decoder_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_UFBmod_rx09_Decoder_0_0 IS
  PORT (
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    signal_bins_rx09_ch00_mem_addrb : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    signal_bins_rx09_ch00_mem_datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    decoder_fft_frame_avail_ctr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dds_tx09_ptt : IN STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    decoder_artemis_rx09_ch00_mult_ce : OUT STD_LOGIC;
    decoder_artemis_rx09_ch00_mult_sclr : OUT STD_LOGIC;
    decoder_artemis_rx09_ch00_mult_inpa : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    decoder_artemis_rx09_ch00_mult_outp : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    decoder_artemis_rx09_ch00_mem_wea : OUT STD_LOGIC;
    decoder_artemis_rx09_ch00_mem_addra : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    decoder_artemis_rx09_ch00_mem_dina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    decoder_artemis_rx09_ch00_mem_douta : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    decoder_rx09_ch00_center_pos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_ch00_strength : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    decoder_rx09_ch00_SoM_frameCtr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    decoder_rx09_ch00_remainVal : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_ch00_u32Count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_ch00_FIFO_handshake : OUT STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted : IN STD_LOGIC;
    decoder_rx09_ch00_sql_open : OUT STD_LOGIC;
    decoder_rx09_ch00_active : OUT STD_LOGIC
  );
END UFBmod_UFBmod_rx09_Decoder_0_0;

ARCHITECTURE UFBmod_UFBmod_rx09_Decoder_0_0_arch OF UFBmod_UFBmod_rx09_Decoder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_UFBmod_rx09_Decoder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT UFBmod_rx09_Decoder_FSM IS
    PORT (
      reset : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      signal_bins_rx09_ch00_mem_addrb : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      signal_bins_rx09_ch00_mem_datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      decoder_fft_frame_avail_ctr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dds_tx09_ptt : IN STD_LOGIC;
      decoder_rx09_ch00_squelch_lvl : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
      decoder_artemis_rx09_ch00_mult_ce : OUT STD_LOGIC;
      decoder_artemis_rx09_ch00_mult_sclr : OUT STD_LOGIC;
      decoder_artemis_rx09_ch00_mult_inpa : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      decoder_artemis_rx09_ch00_mult_outp : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      decoder_artemis_rx09_ch00_mem_wea : OUT STD_LOGIC;
      decoder_artemis_rx09_ch00_mem_addra : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      decoder_artemis_rx09_ch00_mem_dina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      decoder_artemis_rx09_ch00_mem_douta : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      decoder_rx09_ch00_center_pos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_ch00_strength : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      decoder_rx09_ch00_SoM_frameCtr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      decoder_rx09_ch00_remainVal : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_ch00_u32Count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_ch00_FIFO_handshake : OUT STD_LOGIC;
      decoder_rx09_ch00_FIFO_accepted : IN STD_LOGIC;
      decoder_rx09_ch00_sql_open : OUT STD_LOGIC;
      decoder_rx09_ch00_active : OUT STD_LOGIC
    );
  END COMPONENT UFBmod_rx09_Decoder_FSM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_UFBmod_rx09_Decoder_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UFBmod_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : UFBmod_rx09_Decoder_FSM
    PORT MAP (
      reset => reset,
      clk => clk,
      signal_bins_rx09_ch00_mem_addrb => signal_bins_rx09_ch00_mem_addrb,
      signal_bins_rx09_ch00_mem_datab => signal_bins_rx09_ch00_mem_datab,
      decoder_fft_frame_avail_ctr => decoder_fft_frame_avail_ctr,
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_ch00_squelch_lvl => decoder_rx09_ch00_squelch_lvl,
      decoder_artemis_rx09_ch00_mult_ce => decoder_artemis_rx09_ch00_mult_ce,
      decoder_artemis_rx09_ch00_mult_sclr => decoder_artemis_rx09_ch00_mult_sclr,
      decoder_artemis_rx09_ch00_mult_inpa => decoder_artemis_rx09_ch00_mult_inpa,
      decoder_artemis_rx09_ch00_mult_outp => decoder_artemis_rx09_ch00_mult_outp,
      decoder_artemis_rx09_ch00_mem_wea => decoder_artemis_rx09_ch00_mem_wea,
      decoder_artemis_rx09_ch00_mem_addra => decoder_artemis_rx09_ch00_mem_addra,
      decoder_artemis_rx09_ch00_mem_dina => decoder_artemis_rx09_ch00_mem_dina,
      decoder_artemis_rx09_ch00_mem_douta => decoder_artemis_rx09_ch00_mem_douta,
      decoder_rx09_ch00_center_pos => decoder_rx09_ch00_center_pos,
      decoder_rx09_ch00_strength => decoder_rx09_ch00_strength,
      decoder_rx09_ch00_SoM_frameCtr => decoder_rx09_ch00_SoM_frameCtr,
      decoder_rx09_ch00_remainVal => decoder_rx09_ch00_remainVal,
      decoder_rx09_ch00_u32Count => decoder_rx09_ch00_u32Count,
      decoder_rx09_ch00_FIFO_handshake => decoder_rx09_ch00_FIFO_handshake,
      decoder_rx09_ch00_FIFO_accepted => decoder_rx09_ch00_FIFO_accepted,
      decoder_rx09_ch00_sql_open => decoder_rx09_ch00_sql_open,
      decoder_rx09_ch00_active => decoder_rx09_ch00_active
    );
END UFBmod_UFBmod_rx09_Decoder_0_0_arch;
