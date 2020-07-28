----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.07.2020 23:40:57
-- Design Name: 
-- Module Name: SCOPE_FSM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SCOPE_FSM is
  Port ( 
    resetn                  : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    SCOPE_FSM_GPIO_In       : out STD_LOGIC_VECTOR (15 downto 0);
    SCOPE_FSM_GPIO_Out      : in  STD_LOGIC_VECTOR (15 downto 0);
    SCOPE_FSM_TrigSrc       : in  STD_LOGIC_VECTOR (47 downto 0);
    SCOPE_FSM_Timebase_CE   : out STD_LOGIC;
    SCOPE_FSM_Timebase_SCLR : out STD_LOGIC;
    SCOPE_FSM_FIFO_Rst      : out STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull   : in  STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty  : in  STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn     : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid  : in  STD_LOGIC
  );
end SCOPE_FSM;

architecture Behavioral of SCOPE_FSM is
--signal xxx                : STD_LOGIC;
begin

    -- FSM
    proc_fsm: process (resetn, clk)
    variable state          : Integer;
    begin
        if (resetn = '0') then
            state                   := 0;
            SCOPE_FSM_GPIO_In       <= std_logic_vector(to_unsigned(0, SCOPE_FSM_GPIO_In'length));
            SCOPE_FSM_Timebase_CE   <= '0';
            SCOPE_FSM_Timebase_SCLR <= '0';
            SCOPE_FSM_FIFO_Rst      <= '1';
            SCOPE_FSM_FIFO_RdEn     <= '0';
            
        elsif (clk'EVENT and clk = '1') then
            case state is
--              when 0 =>

                when others =>
                    state := 0;
            end case;
        end if;
    end process proc_fsm;
end Behavioral;
