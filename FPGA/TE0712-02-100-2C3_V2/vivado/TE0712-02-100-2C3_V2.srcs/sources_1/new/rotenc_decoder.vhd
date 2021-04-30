----------------------------------------------------------------------------------
-- Company: DF4IAH Solutions
-- Engineer: Ulrich Habel
-- 
-- Create Date: 19.04.2020 18:45:06
-- Design Name: UFBmod
-- Module Name: rotenc_decoder - Behavioral
-- Project Name: UFBmod on Trenz TE0712-02-100-2C3
-- Target Devices: 
-- Tool Versions: Vivado 2019.2.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- This implementation does decode I/Q signals of a rotary encoder switch. The I/Q code is gray encoded. The implementation
-- does find out the knob rotation direction and enables a following counter (connected by the user) for one clock in the
-- up or down direction.
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


entity rotenc_decoder is
  Port ( 
    clk             : in STD_LOGIC;
    resetn          : in STD_LOGIC;
    rotenc_I        : in STD_LOGIC;
    rotenc_Q        : in STD_LOGIC;
    cntval          : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end rotenc_decoder;

architecture Behavioral of rotenc_decoder is
    signal rotenc_In_d0 : STD_LOGIC;
    signal rotenc_Qn_d0 : STD_LOGIC;
    signal rotenc_In_d1 : STD_LOGIC;
    signal rotenc_Qn_d1 : STD_LOGIC;
    signal cnt_i        : Integer    := 2**28;
begin
    process (resetn, clk)
    begin
        if (rising_edge(clk)) then
            if (resetn = '0') then
                rotenc_In_d0    <= '0';
                rotenc_Qn_d0    <= '0';
                rotenc_In_d1    <= '0';
                rotenc_Qn_d1    <= '0';
                cnt_i           <= 2**28;  -- 0x40000000 minus 2 bits
                
            else
                -- Concat counter value with I/Q to binary bits
                if    ( (rotenc_In_d1 = '0') and (rotenc_Qn_d1 = '0') ) then
                    cntval <= std_logic_vector(to_unsigned(cnt_i, (cntval'length - 2))) & "00";
                    
                elsif ( (rotenc_In_d1 = '0') and (rotenc_Qn_d1 = '1') ) then
                    cntval <= std_logic_vector(to_unsigned(cnt_i, (cntval'length - 2))) & "01";
                    
                elsif ( (rotenc_In_d1 = '1') and (rotenc_Qn_d1 = '1') ) then
                    cntval <= std_logic_vector(to_unsigned(cnt_i, (cntval'length - 2))) & "10";
                    
                else
                    cntval <= std_logic_vector(to_unsigned(cnt_i, (cntval'length - 2))) & "11";
                end if;
                
                -- Counter
                if ((rotenc_In_d1 /= rotenc_In_d0) or (rotenc_Qn_d1 /= rotenc_Qn_d0)) then
                    -- ROTENC switch was turned
                    if (    (rotenc_In_d1 = '0' and rotenc_Qn_d1 = '0') and (rotenc_In_d0 = '1' and rotenc_Qn_d0 = '0') ) then
                        -- Direction left turn = down
                        cnt_i <= cnt_i - 1;
                        
                    elsif ( (rotenc_In_d1 = '1' and rotenc_Qn_d1 = '0') and (rotenc_In_d0 = '0' and rotenc_Qn_d0 = '0') ) then
                        -- Direction right turn = up
                        cnt_i <= cnt_i + 1;
                    end if;
                end if;
                
                -- Update delayed register values
                rotenc_In_d1 <= rotenc_In_d0;
                rotenc_Qn_d1 <= rotenc_Qn_d0;
                
                -- Negate logic and phase in
                rotenc_In_d0 <= '1' xor rotenc_I;
                rotenc_Qn_d0 <= '1' xor rotenc_Q;
            end if;
        end if;
    end process;
end Behavioral;
