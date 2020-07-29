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
    SCOPE_FSM_FIFO_WrEn     : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn     : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid  : in  STD_LOGIC
  );
end SCOPE_FSM;

architecture Behavioral of SCOPE_FSM is
  constant GPIO1_OUT_enable         : natural   :=  0;
  constant GPIO1_OUT_start          : natural   :=  1;
  constant GPIO1_OUT_pop            : natural   :=  2;
  constant GPIO1_OUT_trigLvl        : natural   :=  7;
  constant GPIO1_OUT_trigSrc_LO     : natural   :=  8;
  constant GPIO1_OUT_trigSrc_HI     : natural   := 13;

  constant GPIO1_IN_running         : natural   :=  0;
  constant GPIO1_IN_readAvail       : natural   :=  1;
  constant GPIO1_IN_readValid       : natural   :=  2;
--signal xxx                : STD_LOGIC;
begin

  -- FSM
  proc_fsm: process (resetn, clk)
    type state_type is (off, init1, init2, waitRdy, ready, run, trig, trigTmr, stop, pop1, pop2);
    
    variable state          : state_type;
    variable ctr            : Integer;
    variable trgSrc         : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            state                   := off;
            ctr                     := 0;
            trgSrc                  := 0;
            SCOPE_FSM_GPIO_In       <= (others => '0');
            SCOPE_FSM_Timebase_CE   <= '0';
            SCOPE_FSM_Timebase_SCLR <= '0';
            SCOPE_FSM_FIFO_Rst      <= '0';
            SCOPE_FSM_FIFO_RdEn     <= '0';
            
        else
            if (SCOPE_FSM_GPIO_Out(GPIO1_OUT_enable) = '0') then
                state := off;
            end if;
            
            case state is
                when off =>
                    ctr     := 0;
                    trgSrc  := 0;
                    SCOPE_FSM_GPIO_In       <= (others => '0');
                    SCOPE_FSM_Timebase_CE   <= '0';
                    SCOPE_FSM_Timebase_SCLR <= '0';
                    SCOPE_FSM_FIFO_Rst      <= '0';
                    SCOPE_FSM_FIFO_RdEn     <= '0';
                    
                    if (SCOPE_FSM_GPIO_Out(GPIO1_OUT_enable) = '1') then
                        SCOPE_FSM_FIFO_Rst      <= '1';
                        SCOPE_FSM_Timebase_CE   <= '1';
                        SCOPE_FSM_Timebase_SCLR <= '1';
                        state := init1;
                    end if;
                    
                when init1 =>
                    state := init2;
        
                when init2 =>
                    ctr := 16;
                    state := waitRdy;
                    
                when waitRdy =>
                    SCOPE_FSM_FIFO_Rst      <= '0';
                    if (ctr = 0) then
                        state := ready;
                    else
                        ctr := ctr - 1;
                    end if;
                    
                when ready =>
                    if (SCOPE_FSM_GPIO_Out(GPIO1_OUT_start) = '1') then
                        SCOPE_FSM_Timebase_SCLR <= '0';
                        SCOPE_FSM_FIFO_WrEn     <= '1';
                        SCOPE_FSM_GPIO_In(GPIO1_IN_running) <= '1';
                        state := run;
                    end if;
                    
                when run =>
                    SCOPE_FSM_FIFO_RdEn <= SCOPE_FSM_FIFO_WrFull;  --  During RUN roll-out old data when buffer full

                    -- Select trigger source
                    trgSrc := to_integer(unsigned(SCOPE_FSM_GPIO_Out(GPIO1_OUT_trigSrc_HI downto GPIO1_OUT_trigSrc_LO)));
                    if (trgSrc > 47) then
                        trgSrc := 0;
                    end if;
                    
                    -- Trigger check
                    if (SCOPE_FSM_TrigSrc(trgSrc) = SCOPE_FSM_GPIO_Out(GPIO1_OUT_trigLvl)) then
                        SCOPE_FSM_FIFO_WrEn <= '0';
                        state := trig;
                    end if;
                    
                when trig =>
                    -- Start after-trigger timer
                    ctr := 512;
                    state := trigTmr;
                    
                when trigTmr =>
                    if (ctr = 0) then
                        SCOPE_FSM_FIFO_WrEn <= '0';
                        SCOPE_FSM_GPIO_In(GPIO1_IN_running) <= '0';
                        state := stop;
                    else
                        ctr := ctr - 1;
                    end if;
                    
                when stop =>
                    SCOPE_FSM_GPIO_In(GPIO1_IN_readAvail) <= not SCOPE_FSM_FIFO_RdEmpty;    -- During STOP available data is shown here
                    
                    if (SCOPE_FSM_GPIO_Out(GPIO1_OUT_pop) = '1'  and  SCOPE_FSM_FIFO_RdEmpty = '0') then
                        SCOPE_FSM_FIFO_RdEn <= '1';
                        state := pop1;
                        
                    elsif (SCOPE_FSM_GPIO_Out(GPIO1_OUT_start) = '1') then
                        state := off;
                    end if;

                when pop1 =>
                    SCOPE_FSM_FIFO_RdEn <= '0';
                    if (SCOPE_FSM_FIFO_RdValid = '1') then
                        SCOPE_FSM_GPIO_In(GPIO1_IN_readValid) <= '1';
                        state := pop2;
                    end if;
                
                when pop2 =>
                    if (SCOPE_FSM_GPIO_Out(GPIO1_OUT_pop) = '0') then
                        SCOPE_FSM_GPIO_In(GPIO1_IN_readValid) <= '0';
                        state := stop;
                    end if;
                
                when others =>
                    state := off;
            end case;
        end if;
    end if;
  end process proc_fsm;
end Behavioral;
