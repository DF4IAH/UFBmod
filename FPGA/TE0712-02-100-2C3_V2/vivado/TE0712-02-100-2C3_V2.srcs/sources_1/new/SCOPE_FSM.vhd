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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity SCOPE_FSM is
  Port ( 
    resetn                      : in  STD_LOGIC;
    clk                         : in  STD_LOGIC;
    SCOPE_FSM_GPIO0_Out         : in  STD_LOGIC_VECTOR (31 downto 0);
    SCOPE_FSM_GPIO1_In          : out STD_LOGIC_VECTOR (31 downto 0);
    SCOPE_FSM_TrigSrc           : in  STD_LOGIC_VECTOR (47 downto 0);
    SCOPE_FSM_Timebase_CE       : out STD_LOGIC;
    SCOPE_FSM_FIFO_Rst          : out STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy  : in  STD_LOGIC;
    SCOPE_FSM_FIFO_rd_rst_busy  : in  STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull       : in  STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty      : in  STD_LOGIC;
    SCOPE_FSM_FIFO_WrEn         : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn         : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid      : in  STD_LOGIC
  );
end SCOPE_FSM;

architecture Behavioral of SCOPE_FSM is
  constant GPIO0_OUT_enable         : natural   :=  0;
  constant GPIO0_OUT_start          : natural   :=  1;
  constant GPIO0_OUT_pop            : natural   :=  2;
  constant GPIO0_OUT_trigLvl        : natural   :=  7;
  constant GPIO0_OUT_trigSrc_LO     : natural   :=  8;
  constant GPIO0_OUT_trigSrc_HI     : natural   := 13;

  constant GPIO1_IN_running         : natural   :=  0;
  constant GPIO1_IN_readAvail       : natural   :=  1;
  constant GPIO1_IN_readValid       : natural   :=  2;

  signal FSM_state_dbg              : STD_LOGIC_VECTOR (7 downto 0);
  signal ctr                        : STD_LOGIC_VECTOR(15 downto 0);
begin

  -- FSM
  proc_fsm: process (resetn, clk)
    type state_type is (off, init, waitRdy, ready, run, trig, trigTmr, stop, pop1, pop2);
    
    variable state          : state_type;
    variable trgSrc         : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            FSM_state_dbg <= x"ff";
            state                   := off;
            ctr                     <= (others => '0');
            trgSrc                  := 0;
            SCOPE_FSM_GPIO1_In      <= (others => '0');
            SCOPE_FSM_Timebase_CE   <= '1';
            SCOPE_FSM_FIFO_Rst      <= '1';
            SCOPE_FSM_FIFO_WrEn     <= '0';
            SCOPE_FSM_FIFO_RdEn     <= '0';
            
        else
            if (SCOPE_FSM_GPIO0_Out(GPIO0_OUT_enable) = '0') then
                FSM_state_dbg <= x"80";
                state := off;
            end if;
            
            case state is
                when off =>
                    FSM_state_dbg <= x"00";
                    ctr                     <= (others => '0');
                    trgSrc                  := 0;
                    SCOPE_FSM_GPIO1_In      <= (others => '0');
                    SCOPE_FSM_Timebase_CE   <= '1';
                    SCOPE_FSM_FIFO_Rst      <= '1';
                    SCOPE_FSM_FIFO_WrEn     <= '0';
                    SCOPE_FSM_FIFO_RdEn     <= '0';
                    
                    if (SCOPE_FSM_GPIO0_Out(GPIO0_OUT_enable) = '1') then
                        FSM_state_dbg <= x"01";
                        SCOPE_FSM_Timebase_CE   <= '1';
                        state := init;
                    end if;
                    
                when init =>
                    FSM_state_dbg <= x"02";
                    state := waitRdy;
                    
                when waitRdy =>
                    FSM_state_dbg <= x"10";
                    SCOPE_FSM_FIFO_Rst <= '0';
                    if (SCOPE_FSM_FIFO_wr_rst_busy = '0') then
                        state := ready;
                    end if;
                    
                when ready =>
                    FSM_state_dbg <= x"20";
                    if (SCOPE_FSM_GPIO0_Out(GPIO0_OUT_start) = '1') then
                        FSM_state_dbg <= x"21";
                        SCOPE_FSM_FIFO_WrEn                     <= '1';
                        SCOPE_FSM_GPIO1_In(GPIO1_IN_running)    <= '1';
                        state := run;
                    end if;
                    
                when run =>
                    FSM_state_dbg <= x"30";
                    SCOPE_FSM_FIFO_RdEn <= SCOPE_FSM_FIFO_WrFull;  --  During RUN roll-out old data when buffer full
                    
                    -- Select trigger source
                    trgSrc := to_integer(unsigned(SCOPE_FSM_GPIO0_Out(GPIO0_OUT_trigSrc_HI downto GPIO0_OUT_trigSrc_LO)));
                    if (trgSrc > 47) then
                        trgSrc := 0;
                    end if;
                    
                    -- Trigger check
                    if (SCOPE_FSM_TrigSrc(trgSrc) = SCOPE_FSM_GPIO0_Out(GPIO0_OUT_trigLvl)) then
                        FSM_state_dbg <= x"31";
                        state := trig;
                    end if;
                    
                when trig =>
                    -- Start after-trigger timer
                    FSM_state_dbg <= x"40";
                    SCOPE_FSM_FIFO_RdEn <= SCOPE_FSM_FIFO_WrFull;
                    ctr <= x"0399";     -- 1021 complete entries - 100 samples before the Trigger
                    state := trigTmr;
                    
                when trigTmr =>
                    FSM_state_dbg <= x"41";
                    if (unsigned(ctr) = 0) then
                        FSM_state_dbg <= x"42";
                        SCOPE_FSM_FIFO_WrEn <= '0';
                        SCOPE_FSM_FIFO_RdEn <= '0';
                        state := stop;
                    else
                        ctr <= std_logic_vector(to_unsigned( (to_integer(unsigned(ctr)) - 1), ctr'length));
                        SCOPE_FSM_FIFO_RdEn <= SCOPE_FSM_FIFO_WrFull;
                    end if;
                    
                when stop =>
                    FSM_state_dbg <= x"50";
                    SCOPE_FSM_GPIO1_In(GPIO1_IN_running) <= '0';
                    
                    SCOPE_FSM_GPIO1_In(GPIO1_IN_readAvail) <= not SCOPE_FSM_FIFO_RdEmpty;    -- During STOP available data is shown here
                    
                    if ((SCOPE_FSM_GPIO0_Out(GPIO0_OUT_pop) = '1')  and  (SCOPE_FSM_FIFO_rd_rst_busy = '0')  and  (SCOPE_FSM_FIFO_RdEmpty = '0')) then
                        FSM_state_dbg <= x"51";
                        SCOPE_FSM_FIFO_RdEn <= '1';
                        state := pop1;
                        
                    elsif (SCOPE_FSM_GPIO0_Out(GPIO0_OUT_enable) = '0') then
                        FSM_state_dbg <= x"52";
                        state := off;
                    end if;

                when pop1 =>
                    FSM_state_dbg <= x"60";
                    SCOPE_FSM_FIFO_RdEn <= '0';
                    if (SCOPE_FSM_FIFO_RdValid = '1') then
                        FSM_state_dbg <= x"61";
                        SCOPE_FSM_GPIO1_In(GPIO1_IN_readValid) <= '1';
                        state := pop2;
                    end if;
                
                when pop2 =>
                    FSM_state_dbg <= x"62";
                    if (SCOPE_FSM_GPIO0_Out(GPIO0_OUT_pop) = '0') then
                        FSM_state_dbg <= x"63";
                        SCOPE_FSM_GPIO1_In(GPIO1_IN_readValid) <= '0';
                        state := stop;
                    end if;
                
                when others =>
                    FSM_state_dbg <= x"99";
                    state := off;
            end case;
        end if;
    end if;
  end process proc_fsm;
end Behavioral;
