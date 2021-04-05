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

-- IP VLNV: xilinx.com:module_ref:FFT_rx09_to_Decoder_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0 IS
  PORT (
    clk_100MHz : IN STD_LOGIC;
    reset_100MHz : IN STD_LOGIC;
    TRX_channel_rx_rf09_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    TRX_post_fft_rx_rf09_mem_a_EoT : IN STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr : IN STD_LOGIC_VECTOR(41 DOWNTO 0);
    TRX_post_fft_rx_rf09_chXX_mem_b_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    TRX_post_fft_rx_rf09_chXX_mem_b_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fft_rx09_chXX_rowsum_accum_sclr : OUT STD_LOGIC;
    fft_rx09_chXX_rowsum_accum_ce : OUT STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_aclken : OUT STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_dout_tvalid : IN STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_divisor_tvalid : OUT STD_LOGIC;
    fft_rx09_chXX_signal_correction_mult_ce : OUT STD_LOGIC;
    fft_rx09_chXX_signal_correction_mult_ina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fft_rx09_chXX_signal_correction_mult_prod : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fft_rx09_chXX_signal_bins_mem_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    fft_rx09_chXX_signal_bins_mem_dina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fft_rx09_chXX_signal_bins_mem_douta : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fft_rx09_chXX_signal_bins_mem_wea : OUT STD_LOGIC;
    fft_rx09_chXX_frame_avail_ctr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0;

ARCHITECTURE UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0_arch OF UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0_arch: ARCHITECTURE IS "yes";
  COMPONENT FFT_rx09_to_Decoder_FSM IS
    PORT (
      clk_100MHz : IN STD_LOGIC;
      reset_100MHz : IN STD_LOGIC;
      TRX_channel_rx_rf09_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      TRX_post_fft_rx_rf09_mem_a_EoT : IN STD_LOGIC;
      TRX_post_fft_rx_rf09_mem_a_addr : IN STD_LOGIC_VECTOR(41 DOWNTO 0);
      TRX_post_fft_rx_rf09_chXX_mem_b_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      TRX_post_fft_rx_rf09_chXX_mem_b_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fft_rx09_chXX_rowsum_accum_sclr : OUT STD_LOGIC;
      fft_rx09_chXX_rowsum_accum_ce : OUT STD_LOGIC;
      fft_rx09_chXX_averaging_factor_div_aclken : OUT STD_LOGIC;
      fft_rx09_chXX_averaging_factor_div_dout_tvalid : IN STD_LOGIC;
      fft_rx09_chXX_averaging_factor_div_divisor_tvalid : OUT STD_LOGIC;
      fft_rx09_chXX_signal_correction_mult_ce : OUT STD_LOGIC;
      fft_rx09_chXX_signal_correction_mult_ina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fft_rx09_chXX_signal_correction_mult_prod : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fft_rx09_chXX_signal_bins_mem_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      fft_rx09_chXX_signal_bins_mem_dina : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fft_rx09_chXX_signal_bins_mem_douta : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fft_rx09_chXX_signal_bins_mem_wea : OUT STD_LOGIC;
      fft_rx09_chXX_frame_avail_ctr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT FFT_rx09_to_Decoder_FSM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_100MHz: SIGNAL IS "XIL_INTERFACENAME reset_100MHz, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_100MHz: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_100MHz RST";
BEGIN
  U0 : FFT_rx09_to_Decoder_FSM
    PORT MAP (
      clk_100MHz => clk_100MHz,
      reset_100MHz => reset_100MHz,
      TRX_channel_rx_rf09_id => TRX_channel_rx_rf09_id,
      TRX_post_fft_rx_rf09_mem_a_EoT => TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr => TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr => TRX_post_fft_rx_rf09_chXX_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout => TRX_post_fft_rx_rf09_chXX_mem_b_dout,
      fft_rx09_chXX_rowsum_accum_sclr => fft_rx09_chXX_rowsum_accum_sclr,
      fft_rx09_chXX_rowsum_accum_ce => fft_rx09_chXX_rowsum_accum_ce,
      fft_rx09_chXX_averaging_factor_div_aclken => fft_rx09_chXX_averaging_factor_div_aclken,
      fft_rx09_chXX_averaging_factor_div_dout_tvalid => fft_rx09_chXX_averaging_factor_div_dout_tvalid,
      fft_rx09_chXX_averaging_factor_div_divisor_tvalid => fft_rx09_chXX_averaging_factor_div_divisor_tvalid,
      fft_rx09_chXX_signal_correction_mult_ce => fft_rx09_chXX_signal_correction_mult_ce,
      fft_rx09_chXX_signal_correction_mult_ina => fft_rx09_chXX_signal_correction_mult_ina,
      fft_rx09_chXX_signal_correction_mult_prod => fft_rx09_chXX_signal_correction_mult_prod,
      fft_rx09_chXX_signal_bins_mem_addra => fft_rx09_chXX_signal_bins_mem_addra,
      fft_rx09_chXX_signal_bins_mem_dina => fft_rx09_chXX_signal_bins_mem_dina,
      fft_rx09_chXX_signal_bins_mem_douta => fft_rx09_chXX_signal_bins_mem_douta,
      fft_rx09_chXX_signal_bins_mem_wea => fft_rx09_chXX_signal_bins_mem_wea,
      fft_rx09_chXX_frame_avail_ctr => fft_rx09_chXX_frame_avail_ctr
    );
END UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0_arch;
