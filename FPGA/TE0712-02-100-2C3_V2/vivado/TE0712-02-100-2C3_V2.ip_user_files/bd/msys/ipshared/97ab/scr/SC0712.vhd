library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Library UNISIM;
use UNISIM.vcomponents.all;


entity SC0712 is port ( 
  --
  mcs_clk_out : out STD_LOGIC; -- msc clock, currently same as user_clk but defined as 100MHz (msc bug)
  mcs_clk_in  :  in STD_LOGIC; -- msc clock, currently same as user_clk but defined as 100MHz (msc bug)
  --
  reset_out : out STD_LOGIC; -- msc reset from MCS  GPIO1_O (31)
  --
  -- External MCS
  --
  GPIO1_O      : in std_logic_vector(31 downto 0);
  GPIO1_I      : out std_logic_vector(31 downto 0);
  --
  -- External I2C
  --
  -- ext_sda_i      : in  std_logic;
  -- ext_sda_o      : out std_logic;
  -- ext_sda_t      : out std_logic;
  -- ext_scl_i      : in  std_logic;
  -- ext_scl_o      : out std_logic;
  -- ext_scl_t      : out std_logic;
  
  ext_sda           : inout std_logic;
  ext_scl_o         : out std_logic;
  -- External I2C
  --
  -- mon_sda_i      : out  std_logic;
  -- mon_sda_o      : out std_logic;
  -- mon_sda_t      : out std_logic;
  -- mon_scl_i      : out  std_logic;
  -- mon_scl_o      : out std_logic;
  -- mon_scl_t      : out std_logic;
  mon_GPIO1_O    : out std_logic_vector(31 downto 0);
  mon_GPIO1_I    : out std_logic_vector(31 downto 0);

    --
    -- Connect to EMIO I2C1
    --
	sda_i      : out  std_logic;
	sda_o      : in std_logic;
	sda_t      : in std_logic;
	scl_i      : out  std_logic;
	scl_o      : in std_logic;
	scl_t      : in std_logic
	);
end SC0712;

architecture Behavioral of SC0712 is

signal sda: std_logic;
signal scl: std_logic;
signal rst_delay_i: std_logic_vector(3 downto 0) := (others => '0');

signal tmp_sda_t: std_logic;
signal tmp_sda_o: std_logic;
signal tmp_sda_i: std_logic;

signal GPI: std_logic_vector(31 downto 0);
signal GPO: std_logic_vector(31 downto 0);

begin
	mcs_clk_out <= mcs_clk_in;
  
  rst_delay: process(mcs_clk_in)
  begin
    if(rising_edge(mcs_clk_in)) then
      rst_delay_i(3 downto 1) <= rst_delay_i(2 downto 0);
    end if;
  end process;
  
  
  rst_delay_i(0) <= GPO(31);
  reset_out <= rst_delay_i(3);
  -- reset_out <= GPO(31);
  
  GPO     <= GPIO1_o;
  GPIO1_I <= GPI;  
  
  -- mon_sda_i    <= ext_sda_i;
  -- mon_sda_o    <= sda_o and GPO(0);
  -- mon_sda_t    <= sda_t and GPO(0);
  -- mon_scl_i    <= ext_scl_i;
  -- mon_scl_o    <= scl_o and GPO(1);
  -- mon_scl_t    <= scl_t and GPO(1);	
  
  
  mon_GPIO1_O <= GPIO1_O;
  mon_GPIO1_I <= GPI;
  
  
	-- -- I2C bus merger
  -- sda_i           <= ext_sda_i;
  -- ext_sda_o       <= sda_o and GPO(0);
  -- ext_sda_t       <= sda_t and GPO(0);
  -- scl_i           <= ext_scl_i;
  -- ext_scl_o       <= scl_o and GPO(1);
  -- ext_scl_t       <= scl_t and GPO(1);	
  
  
  -- -- sda
  -- GPI(0) <= ext_sda_i;
  -- -- scl
  -- GPI(1)  <= GPO(1);
  -- --unused
  -- GPI(31 downto 2) <= x"0000000"&"00";
  
  IOBUF_inst : IOBUF
    -- generic map (
    -- DRIVE => 12,
    -- IOSTANDARD => "DEFAULT",
    -- SLEW => "SLOW")
    port map (
    O => tmp_sda_o, -- Buffer output
    IO => ext_sda, -- Buffer inout port (connect directly to top-level port)
    I => tmp_sda_i, -- Buffer input
    T => tmp_sda_t -- 3-state enable input, high=input, low=output
  );

  scl_i           <= scl_t;
  ext_scl_o       <= scl_t and GPO(1);
  
  tmp_sda_t <= '0' when (sda_t='0' or GPO(0)='0') else '1';
  tmp_sda_i <= '0' when (sda_t='0' or GPO(0)='0') else '1';
  
  
  sda_i <= tmp_sda_o;
  -- sda
  GPI(0) <= tmp_sda_o;
  -- scl
  GPI(1)  <= GPO(1);
  --unused
  GPI(31 downto 2) <= x"0000000"&"00";
	
end Behavioral;