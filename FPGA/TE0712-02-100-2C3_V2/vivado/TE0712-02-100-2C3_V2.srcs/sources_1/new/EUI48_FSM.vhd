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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EUI48_FSM is
  Port ( 
    resetn                  : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    EUI48_onewire_tri_i     : in  STD_LOGIC;
    EUI48_onewire_tri_o     : out STD_LOGIC;
    EUI48_onewire_tri_t     : out STD_LOGIC;
    EUI48_FSM_start         : in  STD_LOGIC;
    EUI48_FSM_run           : out STD_LOGIC;
    EUI48_data              : out STD_LOGIC_VECTOR (47 downto 0)
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
    proc_clock: process (resetn, clk)
    variable counter        : Integer;
    begin
        if (resetn = '0') then
            counter := 0;
            ow_clk_0_of_4 <= '0';
            ow_clk_1_of_4 <= '0';
            ow_clk_2_of_4 <= '0';
            ow_clk_3_of_4 <= '0';
            
        elsif (clk'EVENT and clk = '1') then
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
    end process proc_clock; 


    -- FSM
    proc_fsm: process (resetn, clk, EUI48_FSM_start, EUI48_onewire_tri_i)
    variable ctrBit         : Integer;
    variable ctrByte        : Integer;
    variable state          : Integer;
    begin
        if (resetn = '0') then
            ctrBit              := 0;
            ctrByte             := 0;
            state               := 0;
            EUI48_onewire_tri_o <= '0';
            EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
            EUI48_data_r        <= "000000000000000000000000000000000000000000000000";
            EUI48_FSM_run       <= '0';
            bitLeft             <= '0';
            bitRight            <= '0';
            byteMakShift_r      <= "000000000";

        elsif (clk'EVENT and clk = '1') then
            case state is
                when 0 =>
                    if (EUI48_FSM_start = '0') then
                        state := 1;
                    end if;
                    
                when 1 =>
                    if (EUI48_FSM_start = '1') then
                        state := 2;
                    end if;

                when 2 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- before Standby Pulse
                        EUI48_onewire_tri_o <= '0';
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        state := 3;
                    end if;
                    
                when 3 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- Standby Pulse
                        EUI48_onewire_tri_o <= '1';
                        state := 4;
                    end if;
                    

                when 4 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- Start Header
                        EUI48_onewire_tri_o <= '0';
                        state := 10;
                    end if;

                    
                when 10 =>
                    -- Start Header
                    byteMakShift_r <= "010101011";
                    ctrBit := 0;
                    state := 11;
                    
                when 11 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- bits left side
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '1';
                        else
                            EUI48_onewire_tri_o <= '0';
                        end if;
                        state := 12;
                    end if;
                    
                when 12 =>
                    if (ow_clk_2_of_4 = '1') then
                        -- bits right side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '0';
                        else
                            EUI48_onewire_tri_o <= '1';
                        end if;
                        if (ctrBit = 8) then
                            state := 13;
                        else
                            byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                            ctrBit := ctrBit + 1;
                            state := 11;
                        end if;
                    end if;


                when 13 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- Start Header (drop SAK)
                        EUI48_onewire_tri_o <= '0';
                        EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                        state := 20;
                    end if;
                    

                when 20 =>
                    -- Device address
                    byteMakShift_r <= "101000001";
                    ctrBit := 0;
                    state := 21;
                    
                when 21 =>
                    if (ow_clk_0_of_4 = '1') then
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        -- bits left side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '1';
                        else
                            EUI48_onewire_tri_o <= '0';
                        end if;
                        state := 22;
                    end if;
                    
                when 22 =>
                    if (ow_clk_2_of_4 = '1') then
                        -- bits right side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '0';
                        else
                            EUI48_onewire_tri_o <= '1';
                        end if;
                        if (ctrBit = 8) then
                            state := 23;
                        else
                            byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                            ctrBit := ctrBit + 1;
                            state := 21;
                        end if;
                    end if;
                    
                    
                when 23 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- SAK input
                        EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                        state := 24;
                    end if;

                when 24 =>
                    if (ow_clk_1_of_4 = '1') then
                        -- SAK peak left
                        bitLeft <= EUI48_onewire_tri_i;
                        state := 25;
                    end if;

                when 25 =>
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
                        state := 0;
                    end if;


                when 30 =>
                    -- MSB of register address
                    byteMakShift_r <= "111111111";
                    ctrBit := 0;
                    state := 31;
                    
                when 31 =>
                    if (ow_clk_0_of_4 = '1') then
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        -- bits left side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '1';
                        else
                            EUI48_onewire_tri_o <= '0';
                        end if;
                        state := 32;
                    end if;
                    
                when 32 =>
                    if (ow_clk_2_of_4 = '1') then
                        -- bits right side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '0';
                        else
                            EUI48_onewire_tri_o <= '1';
                        end if;
                        if (ctrBit = 8) then
                            state := 33;
                        else
                            byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                            ctrBit := ctrBit + 1;
                            state := 31;
                        end if;
                    end if;
                    
                    
                when 33 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- SAK input
                        EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                        state := 34;
                    end if;

                when 34 =>
                    if (ow_clk_1_of_4 = '1') then
                        -- SAK peak left
                        bitLeft <= EUI48_onewire_tri_i;
                        state := 35;
                    end if;

                when 35 =>
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
                        state := 0;
                    end if;


                when 40 =>
                    -- MSB of register address
                    byteMakShift_r <= "111110101";
                    ctrBit := 0;
                    state := 41;
                    
                when 41 =>
                    if (ow_clk_0_of_4 = '1') then
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        -- bits left side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '1';
                        else
                            EUI48_onewire_tri_o <= '0';
                        end if;
                        state := 42;
                    end if;
                    
                when 42 =>
                    if (ow_clk_2_of_4 = '1') then
                        -- bits right side
                        if (byteMakShift_r(8) = '0') then
                            EUI48_onewire_tri_o <= '0';
                        else
                            EUI48_onewire_tri_o <= '1';
                        end if;
                        if (ctrBit = 8) then
                            state := 43;
                        else
                            byteMakShift_r(8 downto 0) <= byteMakShift_r(7 downto 0) & '0';
                            ctrBit := ctrBit + 1;
                            state := 41;
                        end if;
                    end if;
                    
                    
                when 43 =>
                    if (ow_clk_0_of_4 = '1') then
                        -- SAK input
                        EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                        state := 44;
                    end if;

                when 44 =>
                    if (ow_clk_1_of_4 = '1') then
                        -- SAK peak left
                        bitLeft <= EUI48_onewire_tri_i;
                        state := 45;
                    end if;

                when 45 =>
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
                        state := 0;
                    end if;


                -- since here data comes in
                when 50 =>
                    if (ow_clk_1_of_4 = '1') then
                        -- Data peak left
                        bitLeft <= EUI48_onewire_tri_i;
                        state := 51;
                    end if;

                when 51 =>
                    if (ow_clk_3_of_4 = '1') then
                        -- Data peak right
                        bitRight <= EUI48_onewire_tri_i;
                        state := 52;
                    end if;
                
                when 52 =>
                    if (bitLeft = '0'  and  bitRight = '1') then
                        EUI48_data_r(47 downto 0) <= EUI48_data_r(46 downto 0) & '1';
                        state := 53;
                    elsif (bitLeft = '1'  and  bitRight = '0') then
                        EUI48_data_r(47 downto 0) <= EUI48_data_r(46 downto 0) & '0';
                        state := 53;
                    else
                        -- Abort
                        state := 0;
                    end if;

                when 53 =>
                    if (ctrBit < 7) then
                        ctrBit := ctrBit + 1;
                        state  := 50;
                    else
                        ctrBit := 0;
                        state  := 54;
                    end if;


                when 54 =>
                    if (ow_clk_0_of_4 = '1') then
                        EUI48_onewire_tri_t <= '0';     -- IOBUF: o -> io
                        -- MAK / NoMAK left
                        if (ctrByte = 5) then
                            EUI48_onewire_tri_o <= '0';
                        else
                            EUI48_onewire_tri_o <= '1';
                        end if;
                        state := 55;
                    end if;
                    
                when 55 =>
                    if (ow_clk_2_of_4 = '1') then
                        -- MAK / NoMAK left
                        if (ctrByte = 5) then
                            EUI48_onewire_tri_o <= '1';
                        else
                            EUI48_onewire_tri_o <= '0';
                        end if;
                        state := 60;
                    end if;

                
                when 60 =>
                    if (ow_clk_0_of_4 = '1') then
                        EUI48_onewire_tri_t <= '1';     -- IOBUF: i <- io
                        state := 61;
                    end if;
                    
                when 61 =>
                    if (ow_clk_1_of_4 = '1') then
                        -- SAK peak left
                        bitLeft <= EUI48_onewire_tri_i;
                        state := 62;
                    end if;

                when 62 =>
                    if (ow_clk_3_of_4 = '1') then
                        -- SAK peak right
                        bitRight <= EUI48_onewire_tri_i;
                        state := 63;
                    end if;

                when 63 =>
                    if (ctrByte = 5) then
                        state  := 70;
                    else
                        ctrByte := ctrByte + 1;
                        state  := 50;
                    end if;

                when 70 =>
                    -- wait until start is being reset
                    if (EUI48_FSM_start = '0') then
                        state := 0;
                    end if;

                when others =>
                    state := 0;
            end case;
            
            EUI48_data <= EUI48_data_r;
        end if;
    end process proc_fsm;
    
end Behavioral;
