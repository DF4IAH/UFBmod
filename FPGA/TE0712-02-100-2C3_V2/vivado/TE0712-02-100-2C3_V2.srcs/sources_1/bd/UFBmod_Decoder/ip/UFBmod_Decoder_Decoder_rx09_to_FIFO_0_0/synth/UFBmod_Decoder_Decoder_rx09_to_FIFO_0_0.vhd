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

-- IP VLNV: xilinx.com:module_ref:Decoder_rx09_to_FIFO_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0 IS
  PORT (
    clk_100MHz : IN STD_LOGIC;
    reset_100MHz : IN STD_LOGIC;
    decoder_rx09_chXX_msg_mem_b_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_chXX_msg_mem_b_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    decoder_rx09_chXX_FIFO_handshake : IN STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted : OUT STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req : OUT STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_grant : IN STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en : OUT STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0;

ARCHITECTURE UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Decoder_rx09_to_FIFO_FSM IS
    PORT (
      clk_100MHz : IN STD_LOGIC;
      reset_100MHz : IN STD_LOGIC;
      decoder_rx09_chXX_msg_mem_b_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_chXX_msg_mem_b_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      decoder_rx09_chXX_FIFO_handshake : IN STD_LOGIC;
      decoder_rx09_chXX_FIFO_accepted : OUT STD_LOGIC;
      TRX_pushdata_rx_rf09_chXX_req : OUT STD_LOGIC;
      TRX_pushdata_rx_rf09_chXX_grant : IN STD_LOGIC;
      TRX_pushdata_rx_rf09_chXX_wr_en : OUT STD_LOGIC;
      TRX_pushdata_rx_rf09_chXX_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT Decoder_rx09_to_FIFO_FSM;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch: ARCHITECTURE IS "Decoder_rx09_to_FIFO_FSM,Vivado 2020.1.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch : ARCHITECTURE IS "UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0,Decoder_rx09_to_FIFO_FSM,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch: ARCHITECTURE IS "UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0,Decoder_rx09_to_FIFO_FSM,{x_ipProduct=Vivado 2020.1.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Decoder_rx09_to_FIFO_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_100MHz: SIGNAL IS "XIL_INTERFACENAME reset_100MHz, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_100MHz: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_100MHz RST";
BEGIN
  U0 : Decoder_rx09_to_FIFO_FSM
    PORT MAP (
      clk_100MHz => clk_100MHz,
      reset_100MHz => reset_100MHz,
      decoder_rx09_chXX_msg_mem_b_addr => decoder_rx09_chXX_msg_mem_b_addr,
      decoder_rx09_chXX_msg_mem_b_din => decoder_rx09_chXX_msg_mem_b_din,
      decoder_rx09_chXX_FIFO_handshake => decoder_rx09_chXX_FIFO_handshake,
      decoder_rx09_chXX_FIFO_accepted => decoder_rx09_chXX_FIFO_accepted,
      TRX_pushdata_rx_rf09_chXX_req => TRX_pushdata_rx_rf09_chXX_req,
      TRX_pushdata_rx_rf09_chXX_grant => TRX_pushdata_rx_rf09_chXX_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en => TRX_pushdata_rx_rf09_chXX_wr_en,
      TRX_pushdata_rx_rf09_chXX_din => TRX_pushdata_rx_rf09_chXX_din
    );
END UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0_arch;
