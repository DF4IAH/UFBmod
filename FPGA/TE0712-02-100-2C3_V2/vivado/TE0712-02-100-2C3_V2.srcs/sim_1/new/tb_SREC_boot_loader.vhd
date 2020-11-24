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

    constant QSPI_SPIDRR_ADDR                   : STD_LOGIC_VECTOR (31 downto 0) := x"4531006c";
    constant QSPI_SPISSR_ADDR                   : STD_LOGIC_VECTOR (31 downto 0) := x"45310070";
    constant QSPI_IPISR_ADDR                    : STD_LOGIC_VECTOR (31 downto 0) := x"45310020";
    
    type Vec280I                                is array (0 to 279) of Integer;
    variable fifo                               : Vec280I;
    variable fifo_len                           : Integer  range 0 to (2**8 - 1);
    variable fifo_idx                           : Integer  range 0 to (2**8 - 1);
    variable fsm_sel_ctr                        : Integer  range 0 to (2**4 - 1);
    
    variable fsm_ar_valid_last                  : STD_LOGIC;
  
  begin
    fifo_len := 0;
    
    for ii in 0 to 279 loop
        fifo(ii) := 16#ff#;
    end loop;
    
    -- FIFO data
    fifo_len    := 0;
    
    fifo(  0)   := 16#00#;
    fifo(  1)   := 16#00#;
    fifo(  2)   := 16#00#;
    fifo(  3)   := 16#00#;
    fifo(  4)   := 16#00#;
    fifo(  5)   := 16#ee#;
    fifo(  6)   := 16#ee#;
    fifo(  7)   := 16#ee#;
    fifo(  8)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(  9)   := 16#53#;              -- 'S'
    fifo( 10)   := 16#30#;              -- S-Type nibble        0x0
    fifo( 11)   := 16#31#;              -- Length hi-nibble     0x17
    fifo( 12)   := 16#37#;              -- Length lo-nibble
    fifo( 13)   := 16#30#;              -- Addr_1 hi-nibble     0x00 ..
    fifo( 14)   := 16#30#;              -- Addr_1 lo-nibble
    fifo( 15)   := 16#30#;              -- Addr_0 hi-nibble          .. 0x00
    fifo( 16)   := 16#30#;              -- Addr_0 lo-nibble
    fifo( 17)   := 16#37#;              -- Data   hi-nibble     0x72
    fifo( 18)   := 16#32#;              -- Data   lo-nibble
    fifo( 19)   := 16#37#;              -- Data   hi-nibble     0x74
    fifo( 20)   := 16#34#;              -- Data   lo-nibble
    fifo( 21)   := 16#36#;              -- Data   hi-nibble     0x6f
    fifo( 22)   := 16#46#;              -- Data   lo-nibble
    fifo( 23)   := 16#37#;              -- Data   hi-nibble     0x73
    fifo( 24)   := 16#33#;              -- Data   lo-nibble
    fifo_len    := fifo_len + 16;

    fifo( 25)   := 16#00#;
    fifo( 26)   := 16#00#;
    fifo( 27)   := 16#00#;
    fifo( 28)   := 16#00#;
    fifo( 29)   := 16#00#;
    fifo( 30)   := 16#ee#;
    fifo( 31)   := 16#ee#;
    fifo( 32)   := 16#ee#;
    fifo( 33)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo( 34)   := 16#32#;              -- Data   hi-nibble     0x2f
    fifo( 35)   := 16#46#;              -- Data   lo-nibble
    fifo( 36)   := 16#34#;              -- Data   hi-nibble     0x44
    fifo( 37)   := 16#34#;              -- Data   lo-nibble
    fifo( 38)   := 16#36#;              -- Data   hi-nibble     0x65
    fifo( 39)   := 16#35#;              -- Data   lo-nibble
    fifo( 40)   := 16#36#;              -- Data   hi-nibble     0x62
    fifo( 41)   := 16#32#;              -- Data   lo-nibble
    fifo( 42)   := 16#37#;              -- Data   hi-nibble     0x75
    fifo( 43)   := 16#35#;              -- Data   lo-nibble
    fifo( 44)   := 16#36#;              -- Data   hi-nibble     0x67
    fifo( 45)   := 16#37#;              -- Data   lo-nibble
    fifo( 46)   := 16#32#;              -- Data   hi-nibble     0x2f
    fifo( 47)   := 16#46#;              -- Data   lo-nibble
    fifo( 48)   := 16#37#;              -- Data   hi-nibble     0x72
    fifo( 49)   := 16#32#;              -- Data   lo-nibble
    fifo_len    := fifo_len + 16;

    fifo( 50)   := 16#00#;
    fifo( 51)   := 16#00#;
    fifo( 52)   := 16#00#;
    fifo( 53)   := 16#00#;
    fifo( 54)   := 16#00#;
    fifo( 55)   := 16#ee#;
    fifo( 56)   := 16#ee#;
    fifo( 57)   := 16#ee#;
    fifo( 58)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo( 59)   := 16#37#;              -- Data   hi-nibble     0x74
    fifo( 60)   := 16#34#;              -- Data   lo-nibble
    fifo( 61)   := 16#36#;              -- Data   hi-nibble     0x6f
    fifo( 62)   := 16#46#;              -- Data   lo-nibble
    fifo( 63)   := 16#37#;              -- Data   hi-nibble     0x73
    fifo( 64)   := 16#33#;              -- Data   lo-nibble
    fifo( 65)   := 16#32#;              -- Data   hi-nibble     0x2e
    fifo( 66)   := 16#45#;              -- Data   lo-nibble
    fifo( 67)   := 16#37#;              -- Data   hi-nibble     0x73
    fifo( 68)   := 16#33#;              -- Data   lo-nibble
    fifo( 69)   := 16#37#;              -- Data   hi-nibble     0x72
    fifo( 70)   := 16#32#;              -- Data   lo-nibble
    fifo( 71)   := 16#36#;              -- Data   hi-nibble     0x65
    fifo( 72)   := 16#35#;              -- Data   lo-nibble
    fifo( 73)   := 16#36#;              -- Data   hi-nibble     0x63
    fifo( 74)   := 16#33#;              -- Data   lo-nibble
    fifo_len    := fifo_len + 16;

    fifo( 75)   := 16#00#;
    fifo( 76)   := 16#00#;
    fifo( 77)   := 16#00#;
    fifo( 78)   := 16#00#;
    fifo( 79)   := 16#00#;
    fifo( 80)   := 16#ee#;
    fifo( 81)   := 16#ee#;
    fifo( 82)   := 16#ee#;
    fifo( 83)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo( 84)   := 16#33#;              -- Checksum  hi-nibble  0x38
    fifo( 85)   := 16#38#;              -- Checksum  lo-nibble
    fifo( 86)   := 16#0a#;              -- LF
    fifo( 87)   := 16#53#;              -- 'S'
    fifo( 88)   := 16#33#;              -- S-Type nibble        0x3
    fifo( 89)   := 16#30#;              -- Length hi-nibble     0x0d
    fifo( 90)   := 16#44#;              -- Length lo-nibble
    fifo( 91)   := 16#30#;              -- Addr_3 hi-nibble     0x00 ..
    fifo( 92)   := 16#30#;              -- Addr_3 lo-nibble
    fifo( 93)   := 16#30#;              -- Addr_2 hi-nibble          .. 0x01 ..
    fifo( 94)   := 16#31#;              -- Addr_2 lo-nibble
    fifo( 95)   := 16#30#;              -- Addr_1 hi-nibble                  .. 0x00 ..
    fifo( 96)   := 16#30#;              -- Addr_1 lo-nibble
    fifo( 97)   := 16#30#;              -- Addr_0 hi-nibble                          .. 0x00
    fifo( 98)   := 16#30#;              -- Addr_0 lo-nibble
    fifo( 99)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo_len    := fifo_len + 16;

    fifo(100)   := 16#00#;
    fifo(101)   := 16#00#;
    fifo(102)   := 16#00#;
    fifo(103)   := 16#00#;
    fifo(104)   := 16#00#;
    fifo(105)   := 16#ee#;
    fifo(106)   := 16#ee#;
    fifo(107)   := 16#ee#;
    fifo(108)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(109)   := 16#30#;              -- Data   lo-nibble
    fifo(110)   := 16#38#;              -- Data   hi-nibble     0x80
    fifo(111)   := 16#30#;              -- Data   lo-nibble
    fifo(112)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(113)   := 16#30#;              -- Data   lo-nibble
    fifo(114)   := 16#42#;              -- Data   hi-nibble     0xb0
    fifo(115)   := 16#30#;              -- Data   lo-nibble
    fifo(116)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(117)   := 16#30#;              -- Data   lo-nibble
    fifo(118)   := 16#30#;              -- Data   hi-nibble     0x00
    fifo(119)   := 16#30#;              -- Data   lo-nibble
    fifo(120)   := 16#30#;              -- Data   hi-nibble     0x08
    fifo(121)   := 16#38#;              -- Data   lo-nibble
    fifo(122)   := 16#42#;              -- Data   hi-nibble     0xb8
    fifo(123)   := 16#38#;              -- Data   lo-nibble
    fifo(124)   := 16#30#;              -- Checksum  hi-nibble  0x01
    fifo_len    := fifo_len + 16;

    fifo(125)   := 16#00#;
    fifo(126)   := 16#00#;
    fifo(127)   := 16#00#;
    fifo(128)   := 16#00#;
    fifo(129)   := 16#00#;
    fifo(130)   := 16#ee#;
    fifo(131)   := 16#ee#;
    fifo(132)   := 16#ee#;
    fifo(133)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(134)   := 16#31#;              -- Checksum  lo-nibble
    fifo(135)   := 16#0a#;              -- LF
    fifo(136)   := 16#53#;
    fifo(137)   := 16#33#;
    fifo(138)   := 16#31#;
    fifo(139)   := 16#35#;
    fifo(140)   := 16#38#;
    fifo(141)   := 16#30#;
    fifo(142)   := 16#30#;
    fifo(143)   := 16#30#;
    fifo(144)   := 16#43#;
    fifo(145)   := 16#33#;
    fifo(146)   := 16#45#;
    fifo(147)   := 16#30#;
    fifo(148)   := 16#39#;
    fifo(149)   := 16#38#;
    fifo_len    := fifo_len + 16;

    fifo(150)   := 16#00#;
    fifo(151)   := 16#00#;
    fifo(152)   := 16#00#;
    fifo(153)   := 16#00#;
    fifo(154)   := 16#00#;
    fifo(155)   := 16#ee#;
    fifo(156)   := 16#ee#;
    fifo(157)   := 16#ee#;
    fifo(158)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(159)   := 16#35#;
    fifo(160)   := 16#30#;
    fifo(161)   := 16#30#;
    fifo(162)   := 16#30#;
    fifo(163)   := 16#38#;
    fifo(164)   := 16#30#;
    fifo(165)   := 16#30#;
    fifo(166)   := 16#30#;
    fifo(167)   := 16#30#;
    fifo(168)   := 16#30#;
    fifo(169)   := 16#30#;
    fifo(170)   := 16#30#;
    fifo(171)   := 16#30#;
    fifo(172)   := 16#30#;
    fifo(173)   := 16#39#;
    fifo(174)   := 16#38#;
    fifo_len    := fifo_len + 16;

    fifo(175)   := 16#00#;
    fifo(176)   := 16#00#;
    fifo(177)   := 16#00#;
    fifo(178)   := 16#00#;
    fifo(179)   := 16#00#;
    fifo(180)   := 16#ee#;
    fifo(181)   := 16#ee#;
    fifo(182)   := 16#ee#;
    fifo(183)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(184)   := 16#35#;
    fifo(185)   := 16#30#;
    fifo(186)   := 16#30#;
    fifo(187)   := 16#30#;
    fifo(188)   := 16#38#; 
    fifo(189)   := 16#30#;
    fifo(190)   := 16#30#;
    fifo(191)   := 16#30#;
    fifo(192)   := 16#30#;
    fifo(193)   := 16#30#;
    fifo(194)   := 16#30#;
    fifo(195)   := 16#30#;
    fifo(196)   := 16#30#;
    fifo(197)   := 16#30#;
    fifo(198)   := 16#46#;
    fifo(199)   := 16#37#;
    fifo_len    := fifo_len + 16;

    fifo(200)   := 16#00#;
    fifo(201)   := 16#00#;
    fifo(202)   := 16#00#;
    fifo(203)   := 16#00#;
    fifo(204)   := 16#00#;
    fifo(205)   := 16#ee#;
    fifo(206)   := 16#ee#;
    fifo(207)   := 16#ee#;
    fifo(208)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(209)   := 16#0a#;
    fifo(210)   := 16#53#;
    fifo(211)   := 16#37#;
    fifo(212)   := 16#30#;
    fifo(213)   := 16#35#;
    fifo(214)   := 16#30#;
    fifo(215)   := 16#30#;
    fifo(216)   := 16#30#;
    fifo(217)   := 16#31#;
    fifo(218)   := 16#30#;
    fifo(219)   := 16#30#;
    fifo(220)   := 16#30#;
    fifo(221)   := 16#30#;
    fifo(222)   := 16#46#;
    fifo(223)   := 16#39#;
    fifo(224)   := 16#0a#;
    fifo_len    := fifo_len + 16;

    fifo(225)   := 16#00#;
    fifo(226)   := 16#00#;
    fifo(227)   := 16#00#;
    fifo(228)   := 16#00#;
    fifo(229)   := 16#00#;
    fifo(230)   := 16#ee#;
    fifo(231)   := 16#ee#;
    fifo(232)   := 16#ee#;
    fifo(233)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo(234)   := 16#ff#;
    fifo(235)   := 16#ff#;
    fifo(236)   := 16#ff#;
    fifo(237)   := 16#ff#;
    fifo(238)   := 16#ff#;
    fifo(239)   := 16#ff#;
    fifo(240)   := 16#ff#;
    fifo(241)   := 16#ff#;
    fifo(242)   := 16#ff#;
    fifo(243)   := 16#ff#;
    fifo(244)   := 16#ff#;
    fifo(245)   := 16#ff#;
    fifo(246)   := 16#ff#;
    fifo(247)   := 16#ff#;
    fifo(248)   := 16#ff#;
    fifo(249)   := 16#ff#;
    fifo_len    := fifo_len + 16;

    fifo(250)   := 16#00#;
    fifo(251)   := 16#00#;
    fifo(252)   := 16#00#;
    fifo(253)   := 16#00#;
    fifo(254)   := 16#00#;
    fifo(255)   := 16#ee#;
    fifo(256)   := 16#ee#;
    fifo(257)   := 16#ee#;
    fifo(258)   := 16#ee#;
    fifo_len    := fifo_len +  9;
    
    fifo_idx    := 0;

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
            tb_m00_axi_rdata    <= std_logic_vector(to_unsigned(fifo(fifo_idx), tb_m00_axi_rdata'length));
            tb_m00_axi_rvalid   <= '1';
            fsm_ar_valid_last   := '1';
            
        -- READ  Interrupt status
        elsif ((tb_m00_axi_araddr = QSPI_IPISR_ADDR)  and  (tb_m00_axi_arvalid = '1')) then
            tb_m00_axi_arready  <= '1';
            tb_m00_axi_rdata    <= x"00000004";
            tb_m00_axi_rvalid   <= '1';
            fsm_sel_ctr         := 0;
            
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
            elsif (tb_m00_axi_wdata(0) = '1') then
                fsm_sel_ctr := 0;
            end if;
            
        -- WRITE Any other write access
        elsif ((tb_m00_axi_awvalid = '1')  and  (tb_m00_axi_wvalid = '1')) then
            tb_m00_axi_awready  <= '1';
            tb_m00_axi_wready   <= '1';
            tb_m00_axi_bvalid   <= '1';
        end if;
        
        
        -- Helper for READ  FIFO pull
        if ((tb_m00_axi_araddr = QSPI_SPIDRR_ADDR)  and  (tb_m00_axi_arvalid = '0')) then
            if (fsm_ar_valid_last = '1') then
                fifo_idx            := (fifo_idx + 1) mod 256;
                fsm_ar_valid_last   := '0';
            end if;
        end if;
        
    end loop;
  end process proc_axi;
  
end Behavioral;
