----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2020 12:38:37
-- Design Name: 
-- Module Name: EUI48_FSM - Behavioral
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


entity EUI48_FSM is
  Port ( 
    reset                   : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    EUI48_onewire_tri_i     : in  STD_LOGIC;
    EUI48_onewire_tri_o     : out STD_LOGIC;
    EUI48_onewire_tri_t     : out STD_LOGIC;
    EUI48_FSM_start         : in  STD_LOGIC;
    EUI48_FSM_run           : out STD_LOGIC;
    EUI48_data              : out STD_LOGIC_VECTOR (47 downto 0);
    EUI48_state             : out STD_LOGIC_VECTOR ( 7 downto 0);
    EUI48_abort             : out STD_LOGIC_VECTOR ( 7 downto 0)
  );
end EUI48_FSM;

architecture Behavioral of EUI48_FSM is
signal ow_clk_0_of_4        : STD_LOGIC;
signal ow_clk_1_of_4        : STD_LOGIC;
signal ow_clk_2_of_4        : STD_LOGIC;
signal ow_clk_3_of_4        : STD_LOGIC;
signal bitLeft              : STD_LOGIC;
signal bitRight             : STD_LOGIC;
signal byteMakShift_r       : STD_LOGIC_VECTOR ( 8 downto 0);
signal EUI48_data_r         : STD_LOGIC_VECTOR (47 downto 0);
begin
    -- Counter for OneWire clock of 50 us
    proc_clock: process (reset, clk)
    variable counter        : Integer;
    begin
        if (clk'EVENT and clk = '1') then
            if (reset = '1') then
                counter := 0;
                ow_clk_0_of_4 <= '0';
                ow_clk_1_of_4 <= '0';
                ow_clk_2_of_4 <= '0';
                ow_clk_3_of_4 <= '0';
                
            else
                -- default settings to be overwritten
                ow_clk_0_of_4 <= '0';
                ow_clk_1_of_4 <= '0';
                ow_clk_2_of_4 <= '0';
                ow_clk_3_of_4 <= '0';
    
                counter := counter + 1;
                if (counter = 1250) then
                    ow_clk_1_of_4 <= '1';
                elsif (counter = 2500) then
                    ow_clk_2_of_4 <= '1';
                elsif (counter = 3750) then
                    ow_clk_3_of_4 <= '1';
                elsif (counter = 5000) then
                    ow_clk_0_of_4 <= '1';
                    counter := 0;
                end if;
            end if;
        end if;
    end process proc_clock; 


    -- FSM
    proc_fsm: process (reset, clk, EUI48_FSM_start, EUI48_onewire_tri_i)
    variable state          : Integer;
    variable ctrBit         : Integer;
    variable ctrByte        : Integer;
    begin
        if (clk'EVENT and clk = '1') then
            if (reset = '1') then
                state               := 2;
                ctrBit              := 0;
                ctrByte             := 0;
                EUI48_onewire_tri_o <= '0';
                EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                EUI48_data_r        <= (others => '0');
                EUI48_FSM_run       <= '0';
                bitLeft             <= '0';
                bitRight            <= '0';
                byteMakShift_r      <= (others => '0');
                EUI48_state         <= (others => '0');
                EUI48_abort         <= (others => '0');
    
            else
                case state is
                    when 0 =>
                        -- wait for release of start
                        if (EUI48_FSM_start = '0') then
                            state := 1;
                        end if;
                        
                    when 1 =>
                        -- wait for start signal
                        if (EUI48_FSM_start = '1') then
                            -- Reset abort register
                            EUI48_abort <= (others => '0');
                            state := 2;
                        end if;
    
                    when 2 =>
                        -- Sync of last quarter
                        if (ow_clk_3_of_4 = '1') then
                            -- before Standby Pulse there has to be a 0->1 transsition
                            EUI48_onewire_tri_o <= '0';
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            ctrBit := 0;
                            state := 3;
                        end if;
                        
                    when 3 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- Standby Pulse
                            EUI48_onewire_tri_o <= '1';
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            ctrBit := ctrBit + 1;
                            -- Duration of Standby Pulse 800 us 
                            if (ctrBit = 16) then
                                ctrBit := 0;
                                state := 4;
                            end if;
                        end if;
                    
                    when 4 =>
                        -- Sync of last quarter
                        if (ow_clk_3_of_4 = '1') then
                            -- Start Header is low before sync pattern follows
                            EUI48_onewire_tri_o <= '0';
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 10;
                        end if;
    
                    
                    when 10 =>
                        -- Prepare Start Header
                        byteMakShift_r <= "010101011";
                        ctrBit := 0;
                        state := 11;
                        
                    when 11 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- bits left side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 12;
                        end if;
                        
                    when 12 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- bits right side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            if (ctrBit = 8) then
                                state := 13;
                            else
                                byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                                ctrBit := ctrBit + 1;
                                state := 11;
                            end if;
                        end if;
    

                    when 13 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- Start Header (drop SAK)
                            EUI48_onewire_tri_o <= '0';
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 20;
                        end if;
                        

                    when 20 =>
                        -- Prepare Device address
                        byteMakShift_r <= "101000001";
                        ctrBit := 0;
                        state := 21;
                        
                    when 21 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- bits left side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 22;
                        end if;
                        
                    when 22 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- bits right side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            if (ctrBit = 8) then
                                state := 23;
                            else
                                byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                                ctrBit := ctrBit + 1;
                                state := 21;
                            end if;
                        end if;
                        
                    when 23 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- SAK input
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 24;
                        end if;
    
                    when 24 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- SAK peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 25;
                        end if;
    
                    when 25 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- SAK peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 26;
                        end if;
    
                    when 26 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            -- SAK '1' means ok
                            ctrByte := 0;
                            ctrBit  := 0;
                            state := 30;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    

                    when 30 =>
                        -- Prepare Command READ 0x03
                        byteMakShift_r <= "000000111";
                        ctrBit := 0;
                        state := 31;
                        
                    when 31 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- bits left side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 32;
                        end if;
                        
                    when 32 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- bits right side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            if (ctrBit = 8) then
                                state := 33;
                            else
                                byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                                ctrBit := ctrBit + 1;
                                state := 31;
                            end if;
                        end if;
                        
                    when 33 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- SAK input
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 34;
                        end if;
    
                    when 34 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- SAK peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 35;
                        end if;
    
                    when 35 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- SAK peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 36;
                        end if;
    
                    when 36 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            -- SAK '1' means ok
                            ctrByte := 0;
                            ctrBit  := 0;
                            state := 40;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    

                    when 40 =>
                        -- Prepare MSB of register address  0xfffa
                        byteMakShift_r <= "111111111";
                        ctrBit := 0;
                        state := 41;
                        
                    when 41 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- bits left side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 42;
                        end if;
                        
                    when 42 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- bits right side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            if (ctrBit = 8) then
                                state := 43;
                            else
                                byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                                ctrBit := ctrBit + 1;
                                state := 41;
                            end if;
                        end if;
                        
                    when 43 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- SAK input
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 44;
                        end if;
    
                    when 44 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- SAK peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 45;
                        end if;
    
                    when 45 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- SAK peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 46;
                        end if;
    
                    when 46 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            -- SAK '1' means ok
                            ctrByte := 0;
                            ctrBit  := 0;
                            state := 50;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    

                    when 50 =>
                        -- Prepare LSB of register address  0xfffa
                        byteMakShift_r <= "111110101";
                        ctrBit := 0;
                        state := 51;
                        
                    when 51 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- bits left side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 52;
                        end if;
                        
                    when 52 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- bits right side
                            if (byteMakShift_r(8) = '0') then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            if (ctrBit = 8) then
                                state := 53;
                            else
                                byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                                ctrBit := ctrBit + 1;
                                state := 51;
                            end if;
                        end if;
                        
                    when 53 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- SAK input
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 54;
                        end if;
    
                    when 54 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- SAK peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 55;
                        end if;
    
                    when 55 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- SAK peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 56;
                        end if;
    
                    when 56 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            -- SAK '1' means ok
                            ctrByte := 0;
                            ctrBit  := 0;
                            state := 60;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    

                    -- since here data comes in
                    when 60 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- Data peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 61;
                        end if;
    
                    when 61 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- Data peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 62;
                        end if;
                    
                    when 62 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            EUI48_data_r(47 downto 0) <= EUI48_data_r(46 downto 0) & '1';
                            state := 63;
                        elsif (bitLeft = '1'  and  bitRight = '0') then
                            EUI48_data_r(47 downto 0) <= EUI48_data_r(46 downto 0) & '0';
                            state := 63;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    
                    when 63 =>
                        if (ctrBit = 7) then
                            ctrBit := 0;
                            state  := 64;
                        else
                            ctrBit := ctrBit + 1;
                            state  := 60;
                        end if;
    

                    when 64 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            -- MAK / NoMAK left
                            if (ctrByte = 5) then
                                EUI48_onewire_tri_o <= '1';
                            else
                                EUI48_onewire_tri_o <= '0';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 65;
                        end if;
                        
                    when 65 =>
                        -- Sync of middle bit time
                        if (ow_clk_2_of_4 = '1') then
                            -- MAK / NoMAK left
                            if (ctrByte = 5) then
                                EUI48_onewire_tri_o <= '0';
                            else
                                EUI48_onewire_tri_o <= '1';
                            end if;
                            EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                            state := 70;
                        end if;
    
                
                    when 70 =>
                        -- Sync of starting quarter
                        if (ow_clk_0_of_4 = '1') then
                            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                            state := 71;
                        end if;
                        
                    when 71 =>
                        -- Sync of left position
                        if (ow_clk_1_of_4 = '1') then
                            -- SAK peak left
                            bitLeft <= EUI48_onewire_tri_i;
                            state := 72;
                        end if;
    
                    when 72 =>
                        -- Sync of right position
                        if (ow_clk_3_of_4 = '1') then
                            -- SAK peak right
                            bitRight <= EUI48_onewire_tri_i;
                            state := 73;
                        end if;
    
                    when 73 =>
                        if (bitLeft = '0'  and  bitRight = '1') then
                            -- SAK '1' means ok
                            state := 74;
                        else
                            -- Abort
                            EUI48_abort <= std_logic_vector(to_unsigned(state, EUI48_abort'length));
                            state := 0;
                        end if;
    
                    when 74 =>
                        if (ctrByte = 5) then
                            state  := 80;
                        else
                            ctrByte := ctrByte + 1;
                            state  := 60;
                        end if;
    

                    when 80 =>
                        -- wait until start is being reset
                        if (EUI48_FSM_start = '0') then
                            state := 0;
                        end if;
    
                    when others =>
                        state := 0;
                end case;
            
                EUI48_data  <= EUI48_data_r;
                EUI48_state <= std_logic_vector(to_unsigned(state, EUI48_state'length));
            end if;
        end if;
    end process proc_fsm;
    
end Behavioral;
