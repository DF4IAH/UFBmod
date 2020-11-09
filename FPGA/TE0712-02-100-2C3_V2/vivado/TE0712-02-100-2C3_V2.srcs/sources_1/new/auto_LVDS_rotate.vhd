----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 20:06:10
-- Design Name: 
-- Module Name: auto_LVDS_rotate - Behavioral
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


entity auto_LVDS_rotate is
  Port (
    clk                 : in    STD_LOGIC;
    reset               : in    STD_LOGIC;
    
    LVDS09              : in    STD_LOGIC_VECTOR (31 downto 0);
    LVDS09_valid        : in    STD_LOGIC;
    
    LVDS24              : in    STD_LOGIC_VECTOR (31 downto 0);
    LVDS24_valid        : in    STD_LOGIC;
    
    rot09q              : out   STD_LOGIC_VECTOR (31 downto 0);
    rot09vld            : out   STD_LOGIC;
    
    rot24q              : out   STD_LOGIC_VECTOR (31 downto 0);
    rot24vld            : out   STD_LOGIC;
    
    LVDS_rx09_synced    : out   STD_LOGIC;
    LVDS_rx24_synced    : out   STD_LOGIC
  );
end auto_LVDS_rotate;

architecture Behavioral of auto_LVDS_rotate is
  component barrel_rot32 is
  Port (
    clk                 : in    STD_LOGIC;
    reset               : in    STD_LOGIC;
    
    rot                 : in    STD_LOGIC_VECTOR (4 downto 0);
    d                   : in    STD_LOGIC_VECTOR (31 downto 0);
    
    q                   : out   STD_LOGIC_VECTOR (31 downto 0)
  );
  end component barrel_rot32;
  
  -- FSM barrel
  signal rot_09_val     : STD_LOGIC_VECTOR (4 downto 0);
  signal rot_09_in      : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_09_in_hld  : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_09_out     : STD_LOGIC_VECTOR (31 downto 0);

  signal rot_24_val     : STD_LOGIC_VECTOR (4 downto 0);
  signal rot_24_in      : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_24_in_hld  : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_24_out     : STD_LOGIC_VECTOR (31 downto 0);
  
  -- Marker bits
  signal mrk09ok        : STD_LOGIC;
  signal mrk24ok        : STD_LOGIC;
  
begin
  barrel_rx09_i: component barrel_rot32
    port map (
      clk               => clk,
      reset             => reset,
      
      rot               => rot_09_val,
      d                 => rot_09_in,
      
      q                 => rot_09_out
    );

  barrel_rx24_i: component barrel_rot32
    port map (
      clk               => clk,
      reset             => reset,
      
      rot               => rot_24_val,
      d                 => rot_24_in,
      
      q                 => rot_24_out
    );


  -- FSM rx09 barrel
  proc_rx09_brl_fsm: process (clk, reset)
    type StateType                                              is (
                                                                    init, check_in, new_rotval, delay
                                                                );
    variable state                                              : StateType;
    
    variable rotval_int                                         : Integer  range 0 to (2**5 - 1);
    variable rot_dly_int                                        : Integer  range 0 to (2**4 - 1);
    
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            rotval_int          := 0;
            rot_09_val          <= (others => '0');
            
            rot_09_in_hld       <= (others => '0');
            rot_09_in           <= (others => '0');
            rot09q              <= (others => '0');
            rot09vld            <= '0';
            
            rot_dly_int         := 0;
            
            LVDS_rx09_synced    <= '0';
            
            state := init;
            
        else
            
            case state is
                when init =>
                    rotval_int      := 0;
                    rot_09_val      <= (others => '0');
                    
                    rot_09_in_hld   <= (others => '0');
                    rot_09_in       <= (others => '0');
                    rot09q          <= (others => '0');
                    rot09vld        <= '0';
                    
                    rot_dly_int     := 0;
                    
                    state := check_in;
                    
                when check_in =>
                    if (LVDS09_valid = '1') then
                        -- Live
                        rot_09_in       <= LVDS09;
                        rot_09_in_hld   <= LVDS09;
                        
                    else
                        -- Hold
                        rot_09_in       <= rot_09_in_hld;
                    end if;
                    
                    if (mrk09ok = '1') then
                        -- Keep in this state
                        rot09q              <= rot_09_out;
                        rot09vld            <= '1';
                        LVDS_rx09_synced    <= '1';
                        
                      --state := check_in;
                        
                    else
                        -- Search for a new rotval value
                        rot09q              <= (others => '0');
                        rot09vld            <= '0';
                        LVDS_rx09_synced    <= '0';
                        
                        state := new_rotval;
                    end if;
                    
                when new_rotval =>
                    rotval_int  := (rotval_int + 1) mod 32;
                    rot_09_val  <= std_logic_vector(to_unsigned(rotval_int, rot_09_val'length));
                    rot_dly_int := 15;
                    
                    state := delay;
                    
                when delay =>
                    if (rot_dly_int /= 0) then
                        rot_dly_int := rot_dly_int - 1;
                        
                    else
                        state := check_in;
                    end if;
                    
                when others =>
                    state := init;
            end case;
        end if;
    end if;
  end process proc_rx09_brl_fsm;


  -- FSM rx24 barrel
  proc_rx24_brl_fsm: process (clk, reset)
    type StateType                                              is (
                                                                    init, check_in, new_rotval, delay
                                                                );
    variable state                                              : StateType;
    
    variable rotval_int                                         : Integer  range 0 to (2**5 - 1);
    variable rot_dly_int                                        : Integer  range 0 to (2**4 - 1);
    
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            rotval_int          := 0;
            rot_24_val          <= (others => '0');
            
            rot_24_in_hld       <= (others => '0');
            rot_24_in           <= (others => '0');
            rot24q              <= (others => '0');
            rot24vld            <= '0';
            
            LVDS_rx24_synced    <= '0';
            
            rot_dly_int         := 0;
            
            state := init;
            
        else
            
            case state is
                when init =>
                    rotval_int      := 0;
                    rot_24_val      <= (others => '0');
                    
                    rot_24_in_hld   <= (others => '0');
                    rot_24_in       <= (others => '0');
                    rot24q          <= (others => '0');
                    rot24vld        <= '0';
                    
                    rot_dly_int     := 0;
                    
                    state := check_in;
                    
                when check_in =>
                    if (LVDS24_valid = '1') then
                        -- Live
                        rot_24_in       <= LVDS24;
                        rot_24_in_hld   <= LVDS24;
                        
                    else
                        -- Hold
                        rot_24_in       <= rot_24_in_hld;
                    end if;
                    
                    if (mrk24ok = '1') then
                        -- Keep in this state
                        rot24q              <= rot_24_out;
                        rot24vld            <= '1';
                        LVDS_rx24_synced    <= '1';
                        
                      --state := check_in;
                        
                    else
                        -- Search for a new rotval value
                        rot24q              <= (others => '0');
                        rot24vld            <= '0';
                        LVDS_rx24_synced    <= '0';
                        
                        state := new_rotval;
                    end if;
                    
                when new_rotval =>
                    rotval_int  := (rotval_int + 1) mod 32;
                    rot_24_val  <= std_logic_vector(to_unsigned(rotval_int, rot_24_val'length));
                    rot_dly_int := 15;
                    
                    state := delay;
                    
                when delay =>
                    if (rot_dly_int /= 0) then
                        rot_dly_int := rot_dly_int - 1;
                        
                    else
                        state := check_in;
                    end if;
                    
                when others =>
                    state := init;
            end case;
        end if;
    end if;
  end process proc_rx24_brl_fsm;


  -- Marker bits
  proc_markers: process (clk, reset)
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            mrk09ok             <= '0';
            mrk24ok             <= '0';
            
        else
            -- rx09
            if ((rot_09_out(31) = '1') and (rot_09_out(30) = '0')  and
                (rot_09_out(15) = '0') and (rot_09_out(14) = '1')) then
                
                mrk09ok <= '1';
                
            else
                mrk09ok <= '0';
            end if;
            
            -- rx24
            if ((rot_24_out(31) = '1') and (rot_24_out(30) = '0')  and
                (rot_24_out(15) = '0') and (rot_24_out(14) = '1')) then
                
                mrk24ok <= '1';
                
            else
                mrk24ok <= '0';
            end if;
        end if;
    end if;
  end process proc_markers;

end Behavioral;
