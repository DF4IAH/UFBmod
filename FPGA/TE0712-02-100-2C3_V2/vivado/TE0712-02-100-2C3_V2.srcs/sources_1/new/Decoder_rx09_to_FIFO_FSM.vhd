----------------------------------------------------------------------------------
-- Company:  DF4IAH-Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 09.09.2020 13:14:24
-- Design Name: UFBmod V2
-- Module Name: UFBmod_Decoder - Behavioral
-- Project Name: UFBmod
-- Target Devices: Xilinx Artix-7 FPGAs
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

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity Decoder_rx09_to_FIFO_FSM is
  Port (
    -- All Clock Domain AXI 100 MHz
    clk_100MHz                                      : in    STD_LOGIC;
    reset_100MHz                                    : in    STD_LOGIC;
    
    -- Decoder message Mem-B
    decoder_rx09_chXX_msg_mem_b_addr                : out   STD_LOGIC_VECTOR (  7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_din                 : in    STD_LOGIC_VECTOR (  7 downto 0 );
    
    -- Decoder <--> FIFO-Mgr handshake
    decoder_rx09_chXX_FIFO_handshake                : in    STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted                 : out   STD_LOGIC;
    
    -- FIFO-Mgr <--> FIFO
    TRX_pushdata_rx_rf09_chXX_req                   : out   STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_grant                 : in    STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en                 : out   STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_din                   : out   STD_LOGIC_VECTOR (  7 downto 0 )
  );
end Decoder_rx09_to_FIFO_FSM;


architecture Behavioral of Decoder_rx09_to_FIFO_FSM is
  --signal ;  
begin
 
  -- UFBmod decoder for the RF09 receiver
  proc_Decoder_rx09_to_FIFO: process (clk_100MHz, reset_100MHz)
    type StateType                                  is (
                                                        init,
                                                        handshake_wait,
                                                        read_length_prep, read_length_ws1, read_length_get,
                                                        pushdata_loop_begin,
                                                        pushdata_loop_read_prep, pushdata_loop_read_ws1, pushdata_loop_read_get, read_length_write,
                                                        pushdata_loop_end
                                                    );
    variable state                                  : StateType;
    
    variable dual_ram_Int                           : Integer  range 0 to (2**8  - 1);
    variable loopCnt                                : Integer  range 0 to (2**8  - 1);
  begin
    if (clk_100MHz'EVENT and clk_100MHz = '1') then
        if (reset_100MHz = '1') then
            loopCnt                                 := 0;
            decoder_rx09_chXX_FIFO_accepted         <= '0';
            
            decoder_rx09_chXX_msg_mem_b_addr        <= (others => '0');
            
            TRX_pushdata_rx_rf09_chXX_req           <= '0';
            TRX_pushdata_rx_rf09_chXX_din           <= (others => '0');
            TRX_pushdata_rx_rf09_chXX_wr_en         <= '0';
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    loopCnt                             := 0;
                    decoder_rx09_chXX_FIFO_accepted     <= '0';
                    
                    decoder_rx09_chXX_msg_mem_b_addr    <= (others => '0');
                    
                    TRX_pushdata_rx_rf09_chXX_req       <= '0';
                    TRX_pushdata_rx_rf09_chXX_din       <= (others => '0');
                    TRX_pushdata_rx_rf09_chXX_wr_en     <= '0';
                    
                    state := handshake_wait;
                    
                -- Loop entry point
                when handshake_wait =>
                    if (decoder_rx09_chXX_FIFO_handshake = '1') then
                        decoder_rx09_chXX_FIFO_accepted <= '1';
                        TRX_pushdata_rx_rf09_chXX_req   <= '1';
                        
                        if (TRX_pushdata_rx_rf09_chXX_grant = '1') then
                            state := read_length_prep;
                        end if;
                    end if;
                    
                when read_length_prep =>
                    -- Length of the message
                    dual_ram_Int := 0;
                    decoder_rx09_chXX_msg_mem_b_addr    <= std_logic_vector(to_unsigned(dual_ram_Int, decoder_rx09_chXX_msg_mem_b_addr'length));
                    
                    state := read_length_ws1;
                    
                when read_length_ws1 =>
                    state := read_length_get;
                    
                when read_length_get =>
                    loopCnt                         := to_integer(unsigned(decoder_rx09_chXX_msg_mem_b_din));
                    TRX_pushdata_rx_rf09_chXX_din   <= decoder_rx09_chXX_msg_mem_b_din;
                    TRX_pushdata_rx_rf09_chXX_wr_en <= '1';
                    
                    state := read_length_write;
                    
                when read_length_write =>
                    TRX_pushdata_rx_rf09_chXX_wr_en <= '0';
                    
                    state := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    if (loopCnt = 0) then
                        state := init;
                    else
                        loopCnt                             := loopCnt      - 1;
                        dual_ram_Int                        := dual_ram_Int + 1;
                        decoder_rx09_chXX_msg_mem_b_addr    <= std_logic_vector(to_unsigned(dual_ram_Int, decoder_rx09_chXX_msg_mem_b_addr'length));
                        
                        state := pushdata_loop_read_prep;
                    end if;
                    
                when pushdata_loop_read_prep =>
                    state := pushdata_loop_read_ws1;
                    
                when pushdata_loop_read_ws1 =>
                    state := pushdata_loop_read_get;
                    
                when pushdata_loop_read_get =>
                    TRX_pushdata_rx_rf09_chXX_din   <= decoder_rx09_chXX_msg_mem_b_din;
                    TRX_pushdata_rx_rf09_chXX_wr_en <= '1';
                    
                    state := pushdata_loop_end;
                    
                when pushdata_loop_end =>
                    TRX_pushdata_rx_rf09_chXX_wr_en <= '0';
                    
                    state := pushdata_loop_begin;
                    
                    
                when others =>
                    state := init;
                    
            end case;   -- state
        end if;
    end if;
  end process proc_Decoder_rx09_to_FIFO;
  
end Behavioral;
