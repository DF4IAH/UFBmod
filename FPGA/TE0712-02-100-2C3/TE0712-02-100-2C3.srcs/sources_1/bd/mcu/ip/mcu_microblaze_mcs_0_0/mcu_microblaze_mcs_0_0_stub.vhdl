-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 29 19:31:42 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_microblaze_mcs_0_0 -prefix
--               mcu_microblaze_mcs_0_0_ mcu_microblaze_mcs_0_0_stub.vhdl
-- Design      : mcu_microblaze_mcs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_microblaze_mcs_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    FIT1_Interrupt : out STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    PIT1_Interrupt : out STD_LOGIC;
    PIT1_Toggle : out STD_LOGIC;
    INTC_IRQ : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mcu_microblaze_mcs_0_0;

architecture stub of mcu_microblaze_mcs_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,UART_Interrupt,FIT1_Interrupt,FIT1_Toggle,PIT1_Interrupt,PIT1_Toggle,INTC_IRQ,UART_rxd,UART_txd,GPIO1_tri_i[7:0],GPIO1_tri_o[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f021,Vivado 2018.3";
begin
end;
