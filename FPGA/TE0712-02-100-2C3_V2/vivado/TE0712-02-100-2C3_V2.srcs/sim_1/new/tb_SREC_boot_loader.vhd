----------------------------------------------------------------------------------
-- Company:  DF4IAH Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 22.11.2020 18:38:56
-- Design Name: UFBmod V2
-- Module Name: tb_SREC_boot_loader - Behavioral
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

--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_SREC_boot_loader is
--  Port ( );
end tb_SREC_boot_loader;

architecture Behavioral of tb_SREC_boot_loader is
  component SREC_boot_loader_FSM is
  Port ( 
        -- Ports of Axi Master Bus Interface M00_AXI
        m00_axi_aclk                                    : in    STD_LOGIC;
        m00_axi_aresetn                                 : in    STD_LOGIC;
        
        m00_axi_awaddr                                  : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_awprot                                  : out   STD_LOGIC_VECTOR (  2 downto 0 );
        m00_axi_awvalid                                 : out   STD_LOGIC;
        m00_axi_awready                                 : in    STD_LOGIC;
        m00_axi_wdata                                   : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_wstrb                                   : out   STD_LOGIC_VECTOR (  3 downto 0 );
        m00_axi_wvalid                                  : out   STD_LOGIC;
        m00_axi_wready                                  : in    STD_LOGIC;
        m00_axi_bresp                                   : in    STD_LOGIC_VECTOR (  1 downto 0 );
        m00_axi_bvalid                                  : in    STD_LOGIC;
        m00_axi_bready                                  : out   STD_LOGIC;
        m00_axi_araddr                                  : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_arprot                                  : out   STD_LOGIC_VECTOR (  2 downto 0 );
        m00_axi_arvalid                                 : out   STD_LOGIC;
        m00_axi_arready                                 : in    STD_LOGIC;
        m00_axi_rdata                                   : in    STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_rresp                                   : in    STD_LOGIC_VECTOR (  1 downto 0 );
        m00_axi_rvalid                                  : in    STD_LOGIC;
        m00_axi_rready                                  : out   STD_LOGIC;
        
        qspi_irpt                                       : in    STD_LOGIC;
        
        SREC_start                                      : in    STD_LOGIC;
        SREC_enable                                     : in    STD_LOGIC;
        
        SREC_error                                      : out   STD_LOGIC;
        SREC_resetn                                     : out   STD_LOGIC;
        SREC_done                                       : out   STD_LOGIC
  );
  end component SREC_boot_loader_FSM;

-- RESETS
  signal tb_resetn : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_m00_axi_awaddr                                  : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tb_m00_axi_awprot                                  : STD_LOGIC_VECTOR (  2 downto 0 );
  signal tb_m00_axi_awvalid                                 : STD_LOGIC;
  signal tb_m00_axi_awready                                 : STD_LOGIC;
  signal tb_m00_axi_wdata                                   : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tb_m00_axi_wstrb                                   : STD_LOGIC_VECTOR (  3 downto 0 );
  signal tb_m00_axi_wvalid                                  : STD_LOGIC;
  signal tb_m00_axi_wready                                  : STD_LOGIC;
  signal tb_m00_axi_bresp                                   : STD_LOGIC_VECTOR (  1 downto 0 );
  signal tb_m00_axi_bvalid                                  : STD_LOGIC;
  signal tb_m00_axi_bready                                  : STD_LOGIC;
  signal tb_m00_axi_araddr                                  : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tb_m00_axi_arprot                                  : STD_LOGIC_VECTOR (  2 downto 0 );
  signal tb_m00_axi_arvalid                                 : STD_LOGIC;
  signal tb_m00_axi_arready                                 : STD_LOGIC;
  signal tb_m00_axi_rdata                                   : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tb_m00_axi_rresp                                   : STD_LOGIC_VECTOR (  1 downto 0 );
  signal tb_m00_axi_rvalid                                  : STD_LOGIC;
  signal tb_m00_axi_rready                                  : STD_LOGIC;
        
  signal tb_qspi_irpt                                       : STD_LOGIC;
        
  signal tb_SREC_start                                      : STD_LOGIC;
  signal tb_SREC_enable                                     : STD_LOGIC;
        
  signal tb_SREC_error                                      : STD_LOGIC;
  signal tb_SREC_resetn                                     : STD_LOGIC;
  signal tb_SREC_done                                       : STD_LOGIC;
  
  
begin

-- DUT
  SREC_boot_loader_i: component SREC_boot_loader_FSM
    port map (
        m00_axi_aclk                    => tb_clk,
        m00_axi_aresetn                 => tb_resetn,
        
        m00_axi_awaddr                  => tb_m00_axi_awaddr,
        m00_axi_awprot                  => tb_m00_axi_awprot,
        m00_axi_awvalid                 => tb_m00_axi_awvalid,
        m00_axi_awready                 => tb_m00_axi_awready,
        m00_axi_wdata                   => tb_m00_axi_wdata,
        m00_axi_wstrb                   => tb_m00_axi_wstrb,
        m00_axi_wvalid                  => tb_m00_axi_wvalid,
        m00_axi_wready                  => tb_m00_axi_wready,
        m00_axi_bresp                   => tb_m00_axi_bresp,
        m00_axi_bvalid                  => tb_m00_axi_bvalid,
        m00_axi_bready                  => tb_m00_axi_bready,
        m00_axi_araddr                  => tb_m00_axi_araddr,
        m00_axi_arprot                  => tb_m00_axi_arprot,
        m00_axi_arvalid                 => tb_m00_axi_arvalid,
        m00_axi_arready                 => tb_m00_axi_arready,
        m00_axi_rdata                   => tb_m00_axi_rdata,
        m00_axi_rresp                   => tb_m00_axi_rresp,
        m00_axi_rvalid                  => tb_m00_axi_rvalid,
        m00_axi_rready                  => tb_m00_axi_rready,
        
        qspi_irpt                       => tb_qspi_irpt,
        
        SREC_start                      => tb_SREC_start,
        SREC_enable                     => tb_SREC_enable,
        
        SREC_error                      => tb_SREC_error,
        SREC_resetn                     => tb_SREC_resetn,
        SREC_done                       => tb_SREC_done
    );


-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk      <= '1';
    wait for 5ns;
    
    tb_clk      <= '0';
    wait for 5ns;
  end process proc_tb_clk;
  
-- RESETS
  proc_tb_reset: process
  begin
    tb_resetn       <= '0';
    tb_SREC_start   <= '0';
    
    wait for 10us;
    tb_resetn       <= '1';
    
    wait for 5us;
    tb_SREC_start   <= '1';
    wait;
  end process proc_tb_reset;
  
  
-- STIMULI

  -- AXI static signals
  proc_axi_static: process
  begin
    tb_m00_axi_bresp    <= "00";        -- OK
    tb_m00_axi_rresp    <= "00";        -- OK
    
    tb_SREC_enable      <= '1';         -- Enable SREC_boot_loader    
    wait;
  end process proc_axi_static;

  -- AXI live
  proc_axi: process

    constant QSPI_SPIDTR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310068";
    constant QSPI_SPIDRR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7531006c";
    constant QSPI_SPISSR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310070";
    constant QSPI_IPISR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310020";
    constant QSPI_TX_OCCU_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310074";
    constant QSPI_RX_OCCU_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310078";
    
    type Vec009I                                is array (0 to   8) of Integer;
    variable preload                            : Vec009I;
    
    type Vec280I                                is array (0 to 279) of Integer;
    variable fifo                               : Vec280I;
    variable fifo_len                           : Integer  range 0 to (2**8 - 1);
    variable fifo_wr_idx                        : Integer  range 0 to (2**8 - 1);
    variable fifo_rd_idx                        : Integer  range 0 to (2**8 - 1);
    variable fifo_addr                          : Integer  range 0 to (2**8 - 1);

    variable fsm_sel_ctr                        : Integer  range 0 to (2**4 - 1);
    variable fsm_flash_addr                     : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    variable fsm_ar_valid_last                  : STD_LOGIC;
  
  begin
    fifo_len        := 0;
    fsm_flash_addr  := (others => '0');
    
    for ii in 0 to 279 loop
        fifo(ii) := 16#ff#;
    end loop;
    
    -- FIFO data
    
    preload(0)  := 16#00#;
    preload(1)  := 16#00#;
    preload(2)  := 16#00#;
    preload(3)  := 16#00#;
    preload(4)  := 16#00#;
    preload(5)  := 16#ee#;
    preload(6)  := 16#ee#;
    preload(7)  := 16#ee#;
    preload(8)  := 16#ee#;
    
    
    
    fifo(  0)   := 16#0d#;              -- CR
    
--  S30D00010000008000B0000008B801
    fifo(  1)   := 16#0a#;              -- LF
    fifo(  2)   := 16#53#;              -- 'S'
    fifo(  3)   := 16#33#;              -- S-Type nibble        0x3
    fifo(  4)   := 16#30#;              -- Length hi-nibble     0x0d
    fifo(  5)   := 16#44#;              -- Length lo-nibble
    fifo(  6)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo(  7)   := 16#30#;              -- Addr_3 lo-nibble
    fifo(  8)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo(  9)   := 16#31#;              -- Addr_2 lo-nibble
    fifo( 10)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo( 11)   := 16#30#;              -- Addr_1 lo-nibble
    fifo( 12)   := 16#30#;              -- Addr_0 hi-nibble                          .. 0x00
    fifo( 13)   := 16#30#;              -- Addr_0 lo-nibble
    fifo( 14)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 15)   := 16#30#;              -- Data   lo-nibble
    fifo( 16)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo( 17)   := 16#30#;              -- Data   lo-nibble
    fifo( 18)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 19)   := 16#30#;              -- Data   lo-nibble
    fifo( 20)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo( 21)   := 16#30#;              -- Data   lo-nibble
    fifo( 22)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 23)   := 16#30#;              -- Data   lo-nibble
    fifo( 24)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 25)   := 16#30#;              -- Data   lo-nibble
    fifo( 26)   := 16#30#;              -- Data   hi-nibble     0x08
    fifo( 27)   := 16#38#;              -- Data   lo-nibble
    fifo( 28)   := 16#42#;              -- Data   hi-nibble     0xb8
    fifo( 29)   := 16#38#;              -- Data   lo-nibble
    fifo( 30)   := 16#30#;              -- Checksum  hi-nibble  0x01
    fifo( 31)   := 16#31#;              -- Checksum  lo-nibble
    fifo( 32)   := 16#0d#;              -- CR
    
--  S30D00010008008000B0581508B88C
    fifo( 33)   := 16#0a#;              -- LF
    fifo( 34)   := 16#53#;              -- 'S'
    fifo( 35)   := 16#33#;              -- S-Type nibble        0x3
    fifo( 36)   := 16#30#;              -- Length hi-nibble     0x0d
    fifo( 37)   := 16#44#;              -- Length lo-nibble
    fifo( 38)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo( 39)   := 16#30#;              -- Addr_3 lo-nibble
    fifo( 40)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo( 41)   := 16#31#;              -- Addr_2 lo-nibble
    fifo( 42)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo( 43)   := 16#30#;              -- Addr_1 lo-nibble
    fifo( 44)   := 16#30#;              -- Addr_0 hi-nibble                          .. 0x08
    fifo( 45)   := 16#38#;              -- Addr_0 lo-nibble
    fifo( 46)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 47)   := 16#30#;              -- Data   lo-nibble
    fifo( 48)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo( 49)   := 16#30#;              -- Data   lo-nibble
    fifo( 50)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 51)   := 16#30#;              -- Data   lo-nibble
    fifo( 52)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo( 53)   := 16#30#;              -- Data   lo-nibble
    fifo( 54)   := 16#35#;              -- Data   hi-nibble     0x58
    fifo( 55)   := 16#38#;              -- Data   lo-nibble
    fifo( 56)   := 16#31#;              -- Data   hi-nibble     0x15
    fifo( 57)   := 16#35#;              -- Data   lo-nibble
    fifo( 58)   := 16#30#;              -- Data   hi-nibble     0x08
    fifo( 59)   := 16#38#;              -- Data   lo-nibble
    fifo( 60)   := 16#42#;              -- Data   hi-nibble     0xb8
    fifo( 61)   := 16#38#;              -- Data   lo-nibble
    fifo( 62)   := 16#38#;              -- Checksum  hi-nibble  0x8c
    fifo( 63)   := 16#43#;              -- Checksum  lo-nibble
    fifo( 64)   := 16#0d#;              -- CR

--  S30D00010010008000B0800508B86C
    fifo( 65)   := 16#0a#;              -- LF
    fifo( 66)   := 16#53#;              -- 'S'
    fifo( 67)   := 16#33#;              -- S-Type nibble        0x3
    fifo( 68)   := 16#30#;              -- Length hi-nibble     0x0d
    fifo( 69)   := 16#44#;              -- Length lo-nibble
    fifo( 70)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo( 71)   := 16#30#;              -- Addr_3 lo-nibble
    fifo( 72)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo( 73)   := 16#31#;              -- Addr_2 lo-nibble
    fifo( 74)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo( 75)   := 16#30#;              -- Addr_1 lo-nibble
    fifo( 76)   := 16#31#;              -- Addr_0 hi-nibble                          .. 0x10
    fifo( 77)   := 16#30#;              -- Addr_0 lo-nibble
    fifo( 78)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 79)   := 16#30#;              -- Data   lo-nibble
    fifo( 80)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo( 81)   := 16#30#;              -- Data   lo-nibble
    fifo( 82)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo( 83)   := 16#30#;              -- Data   lo-nibble
    fifo( 84)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo( 85)   := 16#30#;              -- Data   lo-nibble
    fifo( 86)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo( 87)   := 16#30#;              -- Data   lo-nibble
    fifo( 88)   := 16#30#;              -- Data   hi-nibble     0x05
    fifo( 89)   := 16#35#;              -- Data   lo-nibble
    fifo( 90)   := 16#30#;              -- Data   hi-nibble     0x08
    fifo( 91)   := 16#38#;              -- Data   lo-nibble
    fifo( 92)   := 16#42#;              -- Data   hi-nibble     0xb8
    fifo( 93)   := 16#38#;              -- Data   lo-nibble
    fifo( 94)   := 16#36#;              -- Checksum  hi-nibble  0x6c
    fifo( 95)   := 16#43#;              -- Checksum  lo-nibble
    fifo( 96)   := 16#0d#;              -- CR

--  S30D00010020008000B0F00008B8F1
    fifo( 97)   := 16#0a#;              -- LF
    fifo( 98)   := 16#53#;              -- 'S'
    fifo( 99)   := 16#33#;              -- S-Type nibble        0x3
    fifo(100)   := 16#30#;              -- Length hi-nibble     0x0d
    fifo(101)   := 16#44#;              -- Length lo-nibble
    fifo(102)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo(103)   := 16#30#;              -- Addr_3 lo-nibble
    fifo(104)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo(105)   := 16#31#;              -- Addr_2 lo-nibble
    fifo(106)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo(107)   := 16#30#;              -- Addr_1 lo-nibble
    fifo(108)   := 16#32#;              -- Addr_0 hi-nibble                          .. 0x20
    fifo(109)   := 16#30#;              -- Addr_0 lo-nibble
    fifo(110)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(111)   := 16#30#;              -- Data   lo-nibble
    fifo(112)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo(113)   := 16#30#;              -- Data   lo-nibble
    fifo(114)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(115)   := 16#30#;              -- Data   lo-nibble
    fifo(116)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(117)   := 16#30#;              -- Data   lo-nibble
    fifo(118)   := 16#46#;              -- Data   hi-nibble     0xf0
    fifo(119)   := 16#30#;              -- Data   lo-nibble
    fifo(120)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(121)   := 16#30#;              -- Data   lo-nibble
    fifo(122)   := 16#30#;              -- Data   hi-nibble     0x08
    fifo(123)   := 16#38#;              -- Data   lo-nibble
    fifo(124)   := 16#42#;              -- Data   hi-nibble     0xb8
    fifo(125)   := 16#38#;              -- Data   lo-nibble
    fifo(126)   := 16#46#;              -- Checksum  hi-nibble  0xf1
    fifo(127)   := 16#31#;              -- Checksum  lo-nibble
    fifo(128)   := 16#0d#;              -- CR
    
--  S31580000000008000B078C4A031008000B068C1403064
    fifo(129)   := 16#0a#;              -- LF
    fifo(130)   := 16#53#;              -- 'S'
    fifo(131)   := 16#33#;              -- S-Type nibble        0x3
    fifo(132)   := 16#31#;              -- Length hi-nibble     0x15
    fifo(133)   := 16#35#;              -- Length lo-nibble
    fifo(134)   := 16#38#;              -- Addr_3 hi-nibble     0x80 ..
    fifo(135)   := 16#30#;              -- Addr_3 lo-nibble
    fifo(136)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x00 ..
    fifo(137)   := 16#30#;              -- Addr_2 lo-nibble
    fifo(138)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo(139)   := 16#30#;              -- Addr_1 lo-nibble
    fifo(140)   := 16#30#;              -- Addr_0 hi-nibble                          .. 0x00
    fifo(141)   := 16#30#;              -- Addr_0 lo-nibble
    fifo(142)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(143)   := 16#30#;              -- Data   lo-nibble
    fifo(144)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo(145)   := 16#30#;              -- Data   lo-nibble
    fifo(146)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(147)   := 16#30#;              -- Data   lo-nibble
    fifo(148)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(149)   := 16#30#;              -- Data   lo-nibble
    fifo(150)   := 16#37#;              -- Data   hi-nibble     0x78
    fifo(151)   := 16#38#;              -- Data   lo-nibble
    fifo(152)   := 16#43#;              -- Data   hi-nibble     0xc4
    fifo(153)   := 16#34#;              -- Data   lo-nibble
    fifo(154)   := 16#41#;              -- Data   hi-nibble     0xa0
    fifo(155)   := 16#30#;              -- Data   lo-nibble
    fifo(156)   := 16#33#;              -- Data   hi-nibble     0x31
    fifo(157)   := 16#31#;              -- Data   lo-nibble
    fifo(158)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(159)   := 16#30#;              -- Data   lo-nibble
    fifo(160)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo(161)   := 16#30#;              -- Data   lo-nibble
    fifo(162)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(163)   := 16#30#;              -- Data   lo-nibble
    fifo(164)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(165)   := 16#30#;              -- Data   lo-nibble
    fifo(166)   := 16#36#;              -- Data   hi-nibble     0x68
    fifo(167)   := 16#38#;              -- Data   lo-nibble
    fifo(168)   := 16#43#;              -- Data   hi-nibble     0xc1
    fifo(169)   := 16#31#;              -- Data   lo-nibble
    fifo(170)   := 16#34#;              -- Data   hi-nibble     0x40
    fifo(171)   := 16#30#;              -- Data   lo-nibble
    fifo(172)   := 16#33#;              -- Data   hi-nibble     0x30
    fifo(173)   := 16#30#;              -- Data   lo-nibble
    fifo(174)   := 16#36#;              -- Checksum  hi-nibble  0x64
    fifo(175)   := 16#34#;              -- Checksum  lo-nibble
    fifo(176)   := 16#0d#;              -- CR
    
--  S31580000010018000B0E0E02030000000B01800F4B9A4
    fifo(177)   := 16#0a#;              -- LF
    fifo(178)   := 16#53#;              -- 'S'
    fifo(179)   := 16#33#;              -- S-Type nibble        0x3
    fifo(180)   := 16#31#;              -- Length hi-nibble     0x15
    fifo(181)   := 16#35#;              -- Length lo-nibble
    fifo(182)   := 16#38#;              -- Addr_3 hi-nibble     0x80 ..
    fifo(183)   := 16#30#;              -- Addr_3 lo-nibble
    fifo(184)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x00 ..
    fifo(185)   := 16#30#;              -- Addr_2 lo-nibble
    fifo(186)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo(187)   := 16#30#;              -- Addr_1 lo-nibble
    fifo(188)   := 16#31#;              -- Addr_0 hi-nibble                          .. 0x10
    fifo(189)   := 16#30#;              -- Addr_0 lo-nibble
    fifo(190)   := 16#30#;              -- Data   hi-nibble     0x01
    fifo(191)   := 16#31#;              -- Data   lo-nibble
    fifo(192)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo(193)   := 16#30#;              -- Data   lo-nibble
    fifo(194)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(195)   := 16#30#;              -- Data   lo-nibble
    fifo(196)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(197)   := 16#30#;              -- Data   lo-nibble
    fifo(198)   := 16#45#;              -- Data   hi-nibble     0xe0
    fifo(199)   := 16#30#;              -- Data   lo-nibble
    fifo(200)   := 16#45#;              -- Data   hi-nibble     0xe0
    fifo(201)   := 16#30#;              -- Data   lo-nibble
    fifo(202)   := 16#32#;              -- Data   hi-nibble     0x20
    fifo(203)   := 16#30#;              -- Data   lo-nibble
    fifo(204)   := 16#33#;              -- Data   hi-nibble     0x30
    fifo(205)   := 16#30#;              -- Data   lo-nibble
    fifo(206)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(207)   := 16#30#;              -- Data   lo-nibble
    fifo(208)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(209)   := 16#30#;              -- Data   lo-nibble
    fifo(210)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(211)   := 16#30#;              -- Data   lo-nibble
    fifo(212)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(213)   := 16#30#;              -- Data   lo-nibble
    fifo(214)   := 16#31#;              -- Data   hi-nibble     0x18
    fifo(215)   := 16#38#;              -- Data   lo-nibble
    fifo(216)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(217)   := 16#30#;              -- Data   lo-nibble
    fifo(218)   := 16#46#;              -- Data   hi-nibble     0xf4
    fifo(219)   := 16#34#;              -- Data   lo-nibble
    fifo(220)   := 16#42#;              -- Data   hi-nibble     0xb9
    fifo(221)   := 16#39#;              -- Data   lo-nibble
    fifo(222)   := 16#41#;              -- Checksum  hi-nibble  0xa4
    fifo(223)   := 16#34#;              -- Checksum  lo-nibble
    fifo(224)   := 16#0d#;              -- CR
    
--  ...
    
--  S70500010000F9
    fifo(225)   := 16#0a#;              -- LF
    fifo(226)   := 16#53#;              -- 'S'
    fifo(227)   := 16#37#;              -- S-Type nibble        0x7
    fifo(228)   := 16#30#;              -- Length hi-nibble     0x05
    fifo(229)   := 16#35#;              -- Length lo-nibble
    fifo(230)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo(231)   := 16#30#;              -- Addr_3 lo-nibble
    fifo(232)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo(233)   := 16#31#;              -- Addr_2 lo-nibble
    fifo(234)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo(235)   := 16#30#;              -- Addr_1 lo-nibble
    fifo(236)   := 16#30#;              -- Addr_0 hi-nibble                          .. 0x00
    fifo(237)   := 16#30#;              -- Addr_0 lo-nibble
    fifo(238)   := 16#46#;              -- Checksum  hi-nibble  0xf9
    fifo(239)   := 16#39#;              -- Checksum  lo-nibble
    fifo(240)   := 16#0d#;              -- CR
    
    
    fifo_len    := 241;
    fifo_wr_idx := 0;
    fifo_rd_idx := 0;
    fifo_addr   := 0;
    
    fsm_sel_ctr         := 0;
    fsm_ar_valid_last   := '0';
    
    
    -- The show starts after the synchron reset
    wait until tb_resetn = '0';
    wait until rising_edge(tb_clk);
    
    tb_m00_axi_awready  <= '0';
    tb_m00_axi_wready   <= '0';
    tb_m00_axi_bvalid   <= '0';
    tb_m00_axi_arready  <= '0';
    tb_m00_axi_rdata    <= (others => '0');
    tb_m00_axi_rvalid   <= '0';
    tb_qspi_irpt        <= '0';
    
    
    wait until tb_resetn = '1';
    
    loop
        wait until rising_edge(tb_clk);
        
        tb_m00_axi_awready  <= '0';
        tb_m00_axi_wready   <= '0';
        tb_m00_axi_bvalid   <= '0';
        tb_m00_axi_arready  <= '0';
        tb_m00_axi_rvalid   <= '0';
        
        -- Interrupt signal is delayed
        if (fsm_sel_ctr > 1) then
            fsm_sel_ctr := fsm_sel_ctr - 1;
            tb_qspi_irpt <= '0';
        elsif (fsm_sel_ctr = 1) then
            tb_qspi_irpt <= '1';
        else
            tb_qspi_irpt <= '0';
        end if;
        
        
        -- READ  FIFO pull
        if ((tb_m00_axi_araddr = QSPI_SPIDRR_ADDR)  and  (tb_m00_axi_arvalid = '1')) then
            -- FIFO get
            tb_m00_axi_arready  <= '1';
            if (fifo_rd_idx < 9) then
                tb_m00_axi_rdata    <= std_logic_vector(to_unsigned(preload(fifo_rd_idx), tb_m00_axi_rdata'length));
            else
                tb_m00_axi_rdata    <= std_logic_vector(to_unsigned(fifo(to_integer(unsigned(fsm_flash_addr))), tb_m00_axi_rdata'length));
            end if;
            tb_m00_axi_rvalid   <= '1';
            fsm_ar_valid_last   := '1';
            
        -- READ  Interrupt status
        elsif ((tb_m00_axi_araddr = QSPI_IPISR_ADDR)  and  (tb_m00_axi_arvalid = '1')) then
            tb_m00_axi_arready  <= '1';
            tb_m00_axi_rdata    <= x"00000004";
            tb_m00_axi_rvalid   <= '1';
            fsm_sel_ctr         := 0;
            
        -- READ  TX FIFO fill grade
        elsif ((tb_m00_axi_araddr = QSPI_TX_OCCU_ADDR)  and  (tb_m00_axi_arvalid = '1')) then
            tb_m00_axi_arready  <= '1';
            tb_m00_axi_rdata    <= x"00000000";
            tb_m00_axi_rvalid   <= '1';
            
        -- READ  RX FIFO fill grade
        elsif ((tb_m00_axi_araddr = QSPI_RX_OCCU_ADDR)  and  (tb_m00_axi_arvalid = '1')) then
            tb_m00_axi_arready  <= '1';
            tb_m00_axi_rdata    <= x"00000000";
            tb_m00_axi_rvalid   <= '1';
            
        -- READ  Any other read access
        elsif ((tb_m00_axi_arvalid = '1')) then
            tb_m00_axi_arready  <= '1';
            tb_m00_axi_rdata    <= x"00000000";
            tb_m00_axi_rvalid   <= '1';
            
            
        -- WRITE Set select signal for starting transfer
        elsif ((tb_m00_axi_awaddr = QSPI_SPISSR_ADDR)  and  (tb_m00_axi_awvalid = '1')  and  (tb_m00_axi_wvalid = '1')) then
            tb_m00_axi_awready  <= '1';
            tb_m00_axi_wready   <= '1';
            tb_m00_axi_bvalid   <= '1';
            
            if (tb_m00_axi_wdata(0) = '0') then
                fsm_sel_ctr := 15;
                fifo_wr_idx := 0;
            elsif (tb_m00_axi_wdata(0) = '1') then
                fsm_sel_ctr := 0;
            end if;
            
        -- WRITE Set select signal for starting transfer
        elsif ((tb_m00_axi_awaddr = QSPI_SPIDTR_ADDR)  and  (tb_m00_axi_awvalid = '1')  and  (tb_m00_axi_wvalid = '1')  and  (tb_m00_axi_wready = '1')) then
            tb_m00_axi_awready  <= '1';
            tb_m00_axi_wready   <= '1';
            tb_m00_axi_bvalid   <= '1';
            
            if (fifo_wr_idx < 5) then
                -- MSB first
                fsm_flash_addr  := fsm_flash_addr(23 downto 0) & tb_m00_axi_wdata(7 downto 0);
                
                if (fifo_wr_idx = 4) then
                    if ((8388608 <= to_integer(unsigned(fsm_flash_addr))) and (to_integer(unsigned(fsm_flash_addr)) < (8388608 + 256))) then    -- 0x00800000 .. 0x008000ff
                        -- Valid data
                        fsm_flash_addr  := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_flash_addr)) - 8388608, fsm_flash_addr'length));  -- 0x00800000
                        fifo_rd_idx     := 0;
                    end if;
                end if;
            end if;
            
            fifo_wr_idx := fifo_wr_idx + 1;
            
        -- WRITE Any other write access
        elsif ((tb_m00_axi_awvalid = '1')  and  (tb_m00_axi_wvalid = '1')) then
            tb_m00_axi_awready  <= '1';
            tb_m00_axi_wready   <= '1';
            tb_m00_axi_bvalid   <= '1';
        end if;
        
        
        -- Helper for READ  FIFO pull
        if ((tb_m00_axi_araddr = QSPI_SPIDRR_ADDR)  and  (tb_m00_axi_arvalid = '0')) then
            if (fsm_ar_valid_last = '1') then
                fsm_ar_valid_last   := '0';
                
                if (fifo_rd_idx < 9) then
                    -- Preload increment
                    fifo_rd_idx         := fifo_rd_idx + 1;
                else
                    -- Addr increment
                    fsm_flash_addr      := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_flash_addr)) + 1, fsm_flash_addr'length));
                end if;
            end if;
        end if;
        
    end loop;
  end process proc_axi;
  
end Behavioral;
