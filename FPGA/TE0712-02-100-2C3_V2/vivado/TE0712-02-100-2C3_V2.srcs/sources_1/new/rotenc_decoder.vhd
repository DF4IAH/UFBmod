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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rotenc_decoder is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           rotenc_I : in STD_LOGIC;
           rotenc_Q : in STD_LOGIC;
           cnt_up_dwn : out STD_LOGIC;
           cnt_en : out STD_LOGIC);
end rotenc_decoder;

architecture Behavioral of rotenc_decoder is
    signal rotenc_I_d1 : STD_LOGIC;
    signal rotenc_Q_d1 : STD_LOGIC;
    signal cnt_en_pre : STD_LOGIC;
begin
    process (resetn, clk)
    begin
        if (clk'EVENT and clk = '1') then
            if (resetn = '0') then
                rotenc_I_d1 <= '0';
                rotenc_Q_d1 <= '0';
                cnt_en_pre <= '0';
                cnt_up_dwn <= '0';
            else
                -- one clock delayed clk_enable for counter
                cnt_en <= cnt_en_pre;

                -- default value to be overwritten when needed
                cnt_en_pre <= '0';
                
                if (rotenc_I /= rotenc_I_d1  or  rotenc_Q /= rotenc_Q_d1) then
                    -- Rotenc switch was turned
                    cnt_en_pre <= '1';
                    
                    -- 4 quadrants in right direction = up
                    if (
                        (rotenc_I_d1 = '0' and rotenc_I = '1' and rotenc_Q_d1 = '0' and rotenc_Q = '0') or
                        (rotenc_I_d1 = '1' and rotenc_I = '1' and rotenc_Q_d1 = '0' and rotenc_Q = '1') or
                        (rotenc_I_d1 = '1' and rotenc_I = '0' and rotenc_Q_d1 = '1' and rotenc_Q = '1') or
                        (rotenc_I_d1 = '0' and rotenc_I = '0' and rotenc_Q_d1 = '1' and rotenc_Q = '0')
                    ) then
                        cnt_up_dwn <= '0';
                    -- 4 quadrants in left direction = down
                    elsif (
                        (rotenc_I_d1 = '0' and rotenc_I = '0' and rotenc_Q_d1 = '0' and rotenc_Q = '1') or
                        (rotenc_I_d1 = '0' and rotenc_I = '1' and rotenc_Q_d1 = '1' and rotenc_Q = '1') or
                        (rotenc_I_d1 = '1' and rotenc_I = '1' and rotenc_Q_d1 = '1' and rotenc_Q = '0') or
                        (rotenc_I_d1 = '1' and rotenc_I = '0' and rotenc_Q_d1 = '0' and rotenc_Q = '0')
                    ) then
                        cnt_up_dwn <= '1';
                    end if;
                end if;
                
                -- update delayed values
                rotenc_I_d1 <= rotenc_I;
                rotenc_Q_d1 <= rotenc_Q;
            end if;
        end if;
    end process;
end Behavioral;
