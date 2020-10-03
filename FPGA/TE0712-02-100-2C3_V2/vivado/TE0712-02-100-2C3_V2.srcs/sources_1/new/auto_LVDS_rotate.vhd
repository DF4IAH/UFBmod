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
    reset               : in  STD_LOGIC;
    clk                 : in  STD_LOGIC;
    LVDS09              : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS09_valid        : in  STD_LOGIC;
    LVDS24              : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS24_valid        : in  STD_LOGIC;
    rot09q              : out STD_LOGIC_VECTOR (31 downto 0);
    rot09vld            : out STD_LOGIC;
    rot24q              : out STD_LOGIC_VECTOR (31 downto 0);
    rot24vld            : out STD_LOGIC;
    LVDS_rx09_synced    : out STD_LOGIC;
    LVDS_rx24_synced    : out STD_LOGIC
  );
end auto_LVDS_rotate;

architecture Behavioral of auto_LVDS_rotate is
  component barrel_rot32 is
  Port (
    clk                 : in  STD_LOGIC;
    rot                 : in  STD_LOGIC_VECTOR (4 downto 0);
    d                   : in  STD_LOGIC_VECTOR (31 downto 0);
    q                   : out STD_LOGIC_VECTOR (31 downto 0)
  );
  end component barrel_rot32;


  -- FSM inbox09
  signal inb09_in_r     : STD_LOGIC_VECTOR (31 downto 0);
  signal inb09_out_r    : STD_LOGIC_VECTOR (31 downto 0);
  signal inb09_rdy      : STD_LOGIC;

  -- FSM inbox24
  signal inb24_in_r     : STD_LOGIC_VECTOR (31 downto 0);
  signal inb24_out_r    : STD_LOGIC_VECTOR (31 downto 0);
  signal inb24_rdy      : STD_LOGIC;

  -- FSM brl
  signal inb_lock09     : STD_LOGIC;
  signal inb_lock09d    : STD_LOGIC;
  signal inb_lock24     : STD_LOGIC;
  signal inb_lock24d    : STD_LOGIC;

  -- FSM barrel
  signal rot_in         : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_out        : STD_LOGIC_VECTOR (31 downto 0);
  signal rot_val        : STD_LOGIC_VECTOR (4 downto 0);

  -- Marker bits
  signal mrkok          : STD_LOGIC;


begin
  barrel_rot32_i: component barrel_rot32
    port map (
      clk => clk,
      rot => rot_val,
      d   => rot_in,
      q   => rot_out
    );


  -- FSM-inbox-09
  proc_fsm_inbox09: process (reset, clk, LVDS09_valid, inb_lock09)
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            inb09_in_r  <= (others => '0');
            inb09_out_r <= (others => '0');
            inb09_rdy   <= '0';

        else
            if (LVDS09_valid = '1') then
                inb09_in_r <= LVDS09;
                inb09_rdy  <= '1';
                if (inb_lock09 = '0') then
                    inb09_out_r <= LVDS09;
                end if;

            elsif (inb_lock09 = '0') then
                inb09_out_r <= inb09_in_r;
            else
                inb09_rdy <= '0';
            end if;
        end if;
    end if;
  end process proc_fsm_inbox09;

  -- FSM-inbox-24
  proc_fsm_inbox24: process (reset, clk, LVDS24_valid, inb_lock24)
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            inb24_in_r  <= (others => '0');
            inb24_out_r <= (others => '0');
            inb24_rdy   <= '0';

        else
            if (LVDS24_valid = '1') then
                inb24_in_r <= LVDS24;
                inb24_rdy  <= '1';
                if (inb_lock24 = '0') then
                    inb24_out_r <= LVDS24;
                end if;

            elsif (inb_lock24 = '0') then
                inb24_out_r <= inb24_in_r;
            else
                inb24_rdy <= '0';
            end if;
        end if;
    end if;
  end process proc_fsm_inbox24;

  -- FSM barrel
  proc_fsm_brl: process (reset, clk, inb09_rdy, inb24_rdy, mrkok)
  variable rotval09_int : Integer;
  variable rotval24_int : Integer;
  variable state        : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
          rotval09_int      := 0;
          rotval24_int      := 0;
          inb_lock09        <= '0';
          inb_lock09d       <= '0';
          inb_lock24        <= '0';
          inb_lock24d       <= '0';
          LVDS_rx09_synced  <= '0';
          LVDS_rx24_synced  <= '0';
          rot_val           <= (others => '0');
          rot09q            <= (others => '0');
          rot24q            <= (others => '0');
          state             := 0;

        else
            inb_lock09d     <= inb_lock09;
            inb_lock24d     <= inb_lock24;

            case state is
                when 0 =>
                    if (inb09_rdy = '1') then
                        inb_lock09 <= '1';
                        rot_in     <= inb09_out_r;
                        rot_val    <= std_logic_vector(to_unsigned(rotval09_int, rot_val'length));
                        state      := 4;

                    elsif (inb24_rdy = '1') then
                        inb_lock24 <= '1';
                        rot_in     <= inb24_out_r;
                        rot_val    <= std_logic_vector(to_unsigned(rotval24_int, rot_val'length));
                        state      := 8;
                    end if;

                -- wait state
                when 4 =>
                    state := 5;

                when 5 =>
                    if (mrkok = '0') then
                        if (rotval09_int < 31) then
                            rotval09_int := rotval09_int + 1;
                        else
                            rotval09_int := 0;
                        end if;
                        LVDS_rx09_synced    <= '0';
                        rot09q              <= (others => '0');

                    else
                        rot09q              <= rot_out;
                        LVDS_rx09_synced    <= '1';
                    end if;
                    inb_lock09 <= '0';
                    state := 0;

                -- wait state
                when 8 =>
                    state := 9;

                when 9 =>
                    if (mrkok = '0') then
                        if (rotval24_int < 31) then
                            rotval24_int := rotval24_int + 1;
                        else
                            rotval24_int := 0;
                        end if;
                        LVDS_rx24_synced    <= '0';
                        rot24q              <= (others => '0');
                        state := 0;

                    else
                        rot24q              <= rot_out;
                        LVDS_rx24_synced    <= '1';
                    end if;
                    inb_lock24 <= '0';
                    state := 0;

                when others =>
                    rotval09_int := 0;
                    rotval24_int := 0;
                    inb_lock09   <= '0';
                    inb_lock24   <= '0';
                    rot_val      <= (others => '0');
                    rot09q       <= (others => '0');
                    rot24q       <= (others => '0');
                    state        := 0;
            end case;
        end if;
    end if;
  end process proc_fsm_brl;

  -- Marker bits
  proc_markers: process (reset, rot_out)
  begin
    if (reset = '1') then
        mrkok <= '0';
      
    else
        if (rot_out(31) = '1' and rot_out(30) = '0'  and  rot_out(15) = '0' and rot_out(14) = '1') then
            mrkok <= '1';
        else
            mrkok <= '0';
        end if;
    end if;
  end process proc_markers;

  -- FSM-outbox-09
  proc_fsm_outbox09: process (reset, clk, inb_lock09, inb_lock09d)
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            rot09vld <= '0';

        else
            if (inb_lock09 = '0' and inb_lock09d = '1') then
                rot09vld <= '1';
            else
                rot09vld <= '0';
            end if;
        end if;
    end if;
  end process proc_fsm_outbox09;

  -- FSM-outbox-24
  proc_fsm_outbox24: process (reset, clk, inb_lock24, inb_lock24d)
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            rot24vld <= '0';
          
        else
            if (inb_lock24 = '0' and inb_lock24d = '1') then
                rot24vld <= '1';
            else
                rot24vld <= '0';
            end if;
        end if;
    end if;
  end process proc_fsm_outbox24;
  
end Behavioral;
