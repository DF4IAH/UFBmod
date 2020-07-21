--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Jul 21 17:43:53 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target msys.bd
--Design      : msys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ETH0_LEDs_imp_437WON is
  port (
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED_inv : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ETH0_LEDs_imp_437WON;

architecture STRUCTURE of ETH0_LEDs_imp_437WON is
  signal ETH0_LINK_LED_inv_0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ETH0_DA_G(0) <= ETH0_LINK_LED_inv_0(0);
  ETH0_DA_Y(0) <= ETH0_LINK_LED_inv_0(0);
  ETH0_LINK_LED_inv_0(0) <= ETH0_LINK_LED_inv(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INT_ctrl_imp_PISLEF is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt_ack : in STD_LOGIC_VECTOR ( 0 to 1 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt_interrupt : out STD_LOGIC;
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end INT_ctrl_imp_PISLEF;

architecture STRUCTURE of INT_ctrl_imp_PISLEF is
  component msys_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component msys_microblaze_0_xlconcat_0;
  component msys_microblaze_0_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_microblaze_0_axi_intc_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal Conn2_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_INTERRUPT : STD_LOGIC;
  signal In0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In10_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In6_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In7_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In8_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PLL_int_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_int_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_xlconcat_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processor_clk_1 : STD_LOGIC;
  signal processor_rst_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= s_axi_araddr(31 downto 0);
  Conn1_ARVALID(0) <= s_axi_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= s_axi_awvalid(0);
  Conn1_BREADY(0) <= s_axi_bready(0);
  Conn1_RREADY(0) <= s_axi_rready(0);
  Conn1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  Conn1_WVALID(0) <= s_axi_wvalid(0);
  Conn2_ACK(0 to 1) <= interrupt_ack(0 to 1);
  In0_1(0) <= In0(0);
  In10_1(0) <= In10(0);
  In1_1(0) <= In1(0);
  In2_1(0) <= In2(0);
  In3_1(0) <= In3(0);
  In4_1(0) <= In4(0);
  In5_1(0) <= In5(0);
  In6_1(0) <= In6(0);
  In7_1(0) <= In7(0);
  In8_1(0) <= In8(0);
  PLL_int_1(0) <= PLL_int(0);
  TRX_int_1(0) <= TRX_int(0);
  interrupt_address(31 downto 0) <= Conn2_ADDRESS(31 downto 0);
  interrupt_interrupt <= Conn2_INTERRUPT;
  processor_clk_1 <= processor_clk;
  processor_rst_1 <= processor_rst;
  s_axi_aresetn_1 <= s_axi_aresetn;
  s_axi_arready(0) <= Conn1_ARREADY;
  s_axi_awready(0) <= Conn1_AWREADY;
  s_axi_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  s_axi_bvalid(0) <= Conn1_BVALID;
  s_axi_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  s_axi_rvalid(0) <= Conn1_RVALID;
  s_axi_wready(0) <= Conn1_WREADY;
microblaze_0_axi_intc: component msys_microblaze_0_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => Conn2_ADDRESS(31 downto 0),
      intr(11 downto 0) => microblaze_0_xlconcat_dout(11 downto 0),
      irq => Conn2_INTERRUPT,
      processor_ack(1) => Conn2_ACK(0),
      processor_ack(0) => Conn2_ACK(1),
      processor_clk => processor_clk_1,
      processor_rst => processor_rst_1,
      s_axi_aclk => processor_clk_1,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
microblaze_0_xlconcat: component msys_microblaze_0_xlconcat_0
     port map (
      In0(0) => In0_1(0),
      In1(0) => In1_1(0),
      In10(0) => In10_1(0),
      In11(0) => TRX_int_1(0),
      In2(0) => In2_1(0),
      In3(0) => In3_1(0),
      In4(0) => In4_1(0),
      In5(0) => In5_1(0),
      In6(0) => In6_1(0),
      In7(0) => In7_1(0),
      In8(0) => In8_1(0),
      In9(0) => PLL_int_1(0),
      dout(11 downto 0) => microblaze_0_xlconcat_dout(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_lights_imp_1HWCS6J is
  port (
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2intc_irpt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end PWM_lights_imp_1HWCS6J;

architecture STRUCTURE of PWM_lights_imp_1HWCS6J is
  component msys_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component msys_c_counter_binary_0_0;
  component msys_LCD_BL_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_LCD_BL_xlslice_0_0;
  component msys_PWM_gpio_xlslice_3_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_PWM_gpio_xlslice_3_2;
  component msys_PWM_ctr_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_PWM_ctr_xlslice_0_0;
  component msys_PWM_gpio_xlslice_3_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_PWM_gpio_xlslice_3_1;
  component msys_PWM_gpio_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_PWM_gpio_xlslice_3_0;
  component msys_RGB_green_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component msys_RGB_green_c_addsub_0_0;
  component msys_RGB_red_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component msys_RGB_red_c_addsub_0_0;
  component msys_RGB_blue_compare_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component msys_RGB_blue_compare_0_0;
  component msys_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component msys_c_addsub_0_0;
  component msys_RGB_red_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_RGB_red_xlslice_0_3;
  component msys_RGB_red_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_RGB_red_xlslice_0_1;
  component msys_RGB_red_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_RGB_red_xlslice_0_0;
  component msys_RGB_red_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_RGB_red_xlslice_0_2;
  component msys_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_0_2;
  component msys_xlconcat_1_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlconcat_1_2;
  component msys_axi_uart0_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_axi_uart0_gpio_0_0;
  component msys_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component msys_xlconstant_0_0;
  component msys_xlslice_0_33 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component msys_xlslice_0_33;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH_Led_RX_In0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH_Led_TX_In1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal LCD_BL_compare_0_S : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal LCD_BL_xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_GPIO2_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PWM_GPIO2_xlslice_15to0_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PWM_GPIO_xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_counter_binary_0_Q : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal PWM_ctr_xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PWM_gpio_xlslice_15to8_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PWM_gpio_xlslice_21to16_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PWM_gpio_xlslice_31to24_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PWM_gpio_xlslice_7to0_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RAM_calib_complete_In3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RGB_blue_compare_0_S : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal RGB_blue_xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RGB_green_compare_0_S : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal RGB_green_xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RGB_red_compare_0_S : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal RGB_red_xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_PWM_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_PWM_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_PWM_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal xlconstant_0_len10_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_axi_PWM_gpio_0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  ETH_Led_RX_In0_1(0) <= In1(0);
  ETH_Led_TX_In1_1(0) <= In2(0);
  In4_1(0) <= In3(0);
  LCD_BL(0) <= LCD_BL_xlslice_0_Dout(0);
  LCD_rstn(0) <= PWM_GPIO_xlslice_1_Dout(0);
  LED_RGB_blue(0) <= RGB_blue_xlslice_0_Dout(0);
  LED_RGB_green(0) <= RGB_green_xlslice_0_Dout(0);
  LED_RGB_red(0) <= RGB_red_xlslice_0_Dout(0);
  RAM_calib_complete_In3_1(0) <= In4(0);
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  ip2intc_irpt <= axi_PWM_gpio_0_ip2intc_irpt;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
LCD_BL_compare_0: component msys_RGB_blue_compare_0_0
     port map (
      A(7 downto 0) => PWM_ctr_xlslice_0_Dout(7 downto 0),
      B(7 downto 0) => PWM_gpio_xlslice_31to24_0_Dout(7 downto 0),
      CLK => s_axi_aclk_1,
      S(8 downto 0) => LCD_BL_compare_0_S(8 downto 0)
    );
LCD_BL_xlslice_8to8_0: component msys_RGB_red_xlslice_0_2
     port map (
      Din(8 downto 0) => LCD_BL_compare_0_S(8 downto 0),
      Dout(0) => LCD_BL_xlslice_0_Dout(0)
    );
PWM_GPIO2_xlconcat_0: component msys_xlconcat_1_2
     port map (
      In0(15 downto 0) => PWM_GPIO2_xlslice_15to0_0_Dout(15 downto 0),
      In1(0) => ETH_Led_RX_In0_1(0),
      In2(0) => ETH_Led_TX_In1_1(0),
      In3(0) => In4_1(0),
      In4(0) => RAM_calib_complete_In3_1(0),
      In5(11 downto 0) => xlconstant_0_len10_dout(11 downto 0),
      dout(31 downto 0) => PWM_GPIO2_xlconcat_0_dout(31 downto 0)
    );
PWM_GPIO2_xlslice_15to0_0: component msys_xlslice_0_33
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio2_io_o(31 downto 0),
      Dout(15 downto 0) => PWM_GPIO2_xlslice_15to0_0_Dout(15 downto 0)
    );
PWM_GPIO_xlslice_0to0_0: component msys_RGB_red_xlslice_0_3
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => PWM_GPIO_xlslice_1_Dout(0)
    );
PWM_counter_binary_0: component msys_c_counter_binary_0_0
     port map (
      CLK => s_axi_aclk_1,
      Q(17 downto 0) => PWM_counter_binary_0_Q(17 downto 0)
    );
PWM_ctr_xlslice_17to10_0: component msys_LCD_BL_xlslice_0_0
     port map (
      Din(17 downto 0) => PWM_counter_binary_0_Q(17 downto 0),
      Dout(7 downto 0) => PWM_ctr_xlslice_0_Dout(7 downto 0)
    );
PWM_gpio_xlslice_15to8_0: component msys_PWM_gpio_xlslice_3_1
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio_io_o(31 downto 0),
      Dout(7 downto 0) => PWM_gpio_xlslice_15to8_0_Dout(7 downto 0)
    );
PWM_gpio_xlslice_23to16_0: component msys_PWM_gpio_xlslice_3_0
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio_io_o(31 downto 0),
      Dout(7 downto 0) => PWM_gpio_xlslice_21to16_0_Dout(7 downto 0)
    );
PWM_gpio_xlslice_31to24_0: component msys_PWM_ctr_xlslice_0_0
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio_io_o(31 downto 0),
      Dout(7 downto 0) => PWM_gpio_xlslice_31to24_0_Dout(7 downto 0)
    );
PWM_gpio_xlslice_7to0_0: component msys_PWM_gpio_xlslice_3_2
     port map (
      Din(31 downto 0) => axi_PWM_gpio_0_gpio_io_o(31 downto 0),
      Dout(7 downto 0) => PWM_gpio_xlslice_7to0_0_Dout(7 downto 0)
    );
RGB_blue_compare_0: component msys_RGB_green_c_addsub_0_0
     port map (
      A(7 downto 0) => PWM_ctr_xlslice_0_Dout(7 downto 0),
      B(7 downto 0) => PWM_gpio_xlslice_21to16_0_Dout(7 downto 0),
      CLK => s_axi_aclk_1,
      S(8 downto 0) => RGB_blue_compare_0_S(8 downto 0)
    );
RGB_blue_xlslice_8to8_0: component msys_RGB_red_xlslice_0_1
     port map (
      Din(8 downto 0) => RGB_blue_compare_0_S(8 downto 0),
      Dout(0) => RGB_blue_xlslice_0_Dout(0)
    );
RGB_green_compare_0: component msys_RGB_red_c_addsub_0_0
     port map (
      A(7 downto 0) => PWM_ctr_xlslice_0_Dout(7 downto 0),
      B(7 downto 0) => PWM_gpio_xlslice_15to8_0_Dout(7 downto 0),
      CLK => s_axi_aclk_1,
      S(8 downto 0) => RGB_green_compare_0_S(8 downto 0)
    );
RGB_green_xlslice_8to8_0: component msys_RGB_red_xlslice_0_0
     port map (
      Din(8 downto 0) => RGB_green_compare_0_S(8 downto 0),
      Dout(0) => RGB_green_xlslice_0_Dout(0)
    );
RGB_red_compare_0: component msys_c_addsub_0_0
     port map (
      A(7 downto 0) => PWM_ctr_xlslice_0_Dout(7 downto 0),
      B(7 downto 0) => PWM_gpio_xlslice_7to0_0_Dout(7 downto 0),
      CLK => s_axi_aclk_1,
      S(8 downto 0) => RGB_red_compare_0_S(8 downto 0)
    );
RGB_red_xlslice_8to8_0: component msys_xlslice_0_2
     port map (
      Din(8 downto 0) => RGB_red_compare_0_S(8 downto 0),
      Dout(0) => RGB_red_xlslice_0_Dout(0)
    );
axi_PWM_gpio_0: component msys_axi_uart0_gpio_0_0
     port map (
      gpio2_io_i(31 downto 0) => PWM_GPIO2_xlconcat_0_dout(31 downto 0),
      gpio2_io_o(31 downto 0) => axi_PWM_gpio_0_gpio2_io_o(31 downto 0),
      gpio2_io_t(31 downto 0) => NLW_axi_PWM_gpio_0_gpio2_io_t_UNCONNECTED(31 downto 0),
      gpio_io_o(31 downto 0) => axi_PWM_gpio_0_gpio_io_o(31 downto 0),
      ip2intc_irpt => axi_PWM_gpio_0_ip2intc_irpt,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
xlconstant_0_len12: component msys_xlconstant_0_0
     port map (
      dout(11 downto 0) => xlconstant_0_len10_dout(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROTENC_decoder_imp_9V4OMT is
  port (
    BOARD_ROTENC_PUSH : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SINIT : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ip2intc_irpt : out STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end ROTENC_decoder_imp_9V4OMT;

architecture STRUCTURE of ROTENC_decoder_imp_9V4OMT is
  component msys_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    UP : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_c_counter_binary_0_1;
  component msys_axi_pwm_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_axi_pwm_gpio_0_0;
  component msys_xlconcat_0_8 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_xlconcat_0_8;
  signal BOARD_ROTENC_PUSH_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK_1 : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ROTENC_counter_32bit_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SINIT_1 : STD_LOGIC;
  signal axi_ROTENC_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal rotenc_dec_cnt_en_1 : STD_LOGIC;
  signal rotenc_dec_cnt_up_dwn_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  BOARD_ROTENC_PUSH_1(0) <= BOARD_ROTENC_PUSH(0);
  CLK_1 <= CLK;
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  Q(31 downto 0) <= ROTENC_counter_32bit_0_Q(31 downto 0);
  SINIT_1 <= SINIT;
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  dout(2 downto 0) <= xlconcat_0_dout(2 downto 0);
  ip2intc_irpt <= axi_ROTENC_gpio_0_ip2intc_irpt;
  rotenc_dec_cnt_en_1 <= rotenc_dec_cnt_en;
  rotenc_dec_cnt_up_dwn_1 <= rotenc_dec_cnt_up_dwn;
  s_axi_aresetn_1 <= s_axi_aresetn;
ROTENC_counter_32bit_0: component msys_c_counter_binary_0_1
     port map (
      CE => rotenc_dec_cnt_en_1,
      CLK => CLK_1,
      Q(31 downto 0) => ROTENC_counter_32bit_0_Q(31 downto 0),
      SINIT => SINIT_1,
      UP => rotenc_dec_cnt_up_dwn_1
    );
axi_ROTENC_gpio_0: component msys_axi_pwm_gpio_0_0
     port map (
      gpio2_io_i(0) => BOARD_ROTENC_PUSH_1(0),
      gpio_io_i(31 downto 0) => ROTENC_counter_32bit_0_Q(31 downto 0),
      ip2intc_irpt => axi_ROTENC_gpio_0_ip2intc_irpt,
      s_axi_aclk => CLK_1,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
xlconcat_0: component msys_xlconcat_0_8
     port map (
      In0(0) => rotenc_dec_cnt_en_1,
      In1(0) => rotenc_dec_cnt_up_dwn_1,
      In2(0) => SINIT_1,
      dout(2 downto 0) => xlconcat_0_dout(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_clock_imp_19R9ARK is
  port (
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC
  );
end TRX_clock_imp_19R9ARK;

architecture STRUCTURE of TRX_clock_imp_19R9ARK is
  component msys_BOARD_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clkfb_in : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clkfb_out : out STD_LOGIC
  );
  end component msys_BOARD_clk_wiz_0_0;
  component msys_util_ds_buf_0_2 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_ds_buf_0_2;
  signal TRX_PLL_clk_wiz_0_clk_out1 : STD_LOGIC;
  signal TRX_PLL_util_ds_buf_0_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_PLL_util_ds_buf_0_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_clk_26MHz_1 : STD_LOGIC;
  signal TRX_clk_wiz_0_clkfb_out : STD_LOGIC;
begin
  TRX_PLL_clk_25MHz_N(0) <= TRX_PLL_util_ds_buf_0_OBUF_DS_N(0);
  TRX_PLL_clk_25MHz_P(0) <= TRX_PLL_util_ds_buf_0_OBUF_DS_P(0);
  TRX_clk_26MHz_1 <= TRX_clk_26MHz;
TRX_PLL_clk_wiz_0: component msys_BOARD_clk_wiz_0_0
     port map (
      clk_in1 => TRX_clk_26MHz_1,
      clk_out1 => TRX_PLL_clk_wiz_0_clk_out1,
      clkfb_in => TRX_clk_wiz_0_clkfb_out,
      clkfb_out => TRX_clk_wiz_0_clkfb_out
    );
TRX_PLL_util_ds_buf_0: component msys_util_ds_buf_0_2
     port map (
      OBUF_DS_N(0) => TRX_PLL_util_ds_buf_0_OBUF_DS_N(0),
      OBUF_DS_P(0) => TRX_PLL_util_ds_buf_0_OBUF_DS_P(0),
      OBUF_IN(0) => TRX_PLL_clk_wiz_0_clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_config_imp_SLQI5S is
  port (
    AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_io0_i : in STD_LOGIC;
    TRX_spi_io0_o : out STD_LOGIC;
    TRX_spi_io0_t : out STD_LOGIC;
    TRX_spi_io1_i : in STD_LOGIC;
    TRX_spi_io1_o : out STD_LOGIC;
    TRX_spi_io1_t : out STD_LOGIC;
    TRX_spi_sck_i : in STD_LOGIC;
    TRX_spi_sck_o : out STD_LOGIC;
    TRX_spi_sck_t : out STD_LOGIC;
    TRX_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end TRX_config_imp_SLQI5S;

architecture STRUCTURE of TRX_config_imp_SLQI5S is
  component msys_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_0_3;
  component msys_TRX_xlslice_0to0_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_xlslice_0to0_0_0;
  component msys_axi_ROTENC_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component msys_axi_ROTENC_gpio_0_0;
  component msys_axi_quad_spi_1_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component msys_axi_quad_spi_1_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_IO0_I : STD_LOGIC;
  signal Conn2_IO0_O : STD_LOGIC;
  signal Conn2_IO0_T : STD_LOGIC;
  signal Conn2_IO1_I : STD_LOGIC;
  signal Conn2_IO1_O : STD_LOGIC;
  signal Conn2_IO1_T : STD_LOGIC;
  signal Conn2_SCK_I : STD_LOGIC;
  signal Conn2_SCK_O : STD_LOGIC;
  signal Conn2_SCK_T : STD_LOGIC;
  signal Conn2_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_SS_T : STD_LOGIC;
  signal TRX_axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal TRX_gpio_xlslice_0to0_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_gpio_xlslice_1to1_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_TRX_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC;
  signal s_axi_aclk_CD100 : STD_LOGIC;
begin
  AXI_LITE_arready(0) <= microblaze_0_axi_periph_M11_AXI_ARREADY;
  AXI_LITE_awready(0) <= microblaze_0_axi_periph_M11_AXI_AWREADY;
  AXI_LITE_bresp(1 downto 0) <= microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0);
  AXI_LITE_bvalid(0) <= microblaze_0_axi_periph_M11_AXI_BVALID;
  AXI_LITE_rdata(31 downto 0) <= microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0);
  AXI_LITE_rresp(1 downto 0) <= microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0);
  AXI_LITE_rvalid(0) <= microblaze_0_axi_periph_M11_AXI_RVALID;
  AXI_LITE_wready(0) <= microblaze_0_axi_periph_M11_AXI_WREADY;
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  Conn2_IO0_I <= TRX_spi_io0_i;
  Conn2_IO1_I <= TRX_spi_io1_i;
  Conn2_SCK_I <= TRX_spi_sck_i;
  Conn2_SS_I(0) <= TRX_spi_ss_i(0);
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  TRX_reset(0) <= TRX_gpio_xlslice_0to0_0_Dout(0);
  TRX_rfx_mode(0) <= TRX_gpio_xlslice_1to1_0_Dout(0);
  TRX_spi_io0_o <= Conn2_IO0_O;
  TRX_spi_io0_t <= Conn2_IO0_T;
  TRX_spi_io1_o <= Conn2_IO1_O;
  TRX_spi_io1_t <= Conn2_IO1_T;
  TRX_spi_sck_o <= Conn2_SCK_O;
  TRX_spi_sck_t <= Conn2_SCK_T;
  TRX_spi_ss_o(0) <= Conn2_SS_O(0);
  TRX_spi_ss_t <= Conn2_SS_T;
  ip2intc_irpt <= TRX_axi_quad_spi_0_ip2intc_irpt;
  microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0) <= AXI_LITE_araddr(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_ARVALID(0) <= AXI_LITE_arvalid(0);
  microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0) <= AXI_LITE_awaddr(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_AWVALID(0) <= AXI_LITE_awvalid(0);
  microblaze_0_axi_periph_M11_AXI_BREADY(0) <= AXI_LITE_bready(0);
  microblaze_0_axi_periph_M11_AXI_RREADY(0) <= AXI_LITE_rready(0);
  microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0) <= AXI_LITE_wdata(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0) <= AXI_LITE_wstrb(3 downto 0);
  microblaze_0_axi_periph_M11_AXI_WVALID(0) <= AXI_LITE_wvalid(0);
  rst_mig_7series_0_100M_peripheral_aresetn <= s_axi_aresetn;
  s_axi_aclk_CD100 <= s_axi_aclk;
TRX_axi_quad_spi_0: component msys_axi_quad_spi_1_0
     port map (
      ext_spi_clk => s_axi_aclk_CD100,
      io0_i => Conn2_IO0_I,
      io0_o => Conn2_IO0_O,
      io0_t => Conn2_IO0_T,
      io1_i => Conn2_IO1_I,
      io1_o => Conn2_IO1_O,
      io1_t => Conn2_IO1_T,
      ip2intc_irpt => TRX_axi_quad_spi_0_ip2intc_irpt,
      s_axi_aclk => s_axi_aclk_CD100,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M11_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M11_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M11_AXI_WVALID(0),
      sck_i => Conn2_SCK_I,
      sck_o => Conn2_SCK_O,
      sck_t => Conn2_SCK_T,
      ss_i(0) => Conn2_SS_I(0),
      ss_o(0) => Conn2_SS_O(0),
      ss_t => Conn2_SS_T
    );
TRX_gpio_xlslice_0to0_0: component msys_xlslice_0_3
     port map (
      Din(1 downto 0) => axi_TRX_gpio_0_gpio_io_o(1 downto 0),
      Dout(0) => TRX_gpio_xlslice_0to0_0_Dout(0)
    );
TRX_gpio_xlslice_1to1_0: component msys_TRX_xlslice_0to0_0_0
     port map (
      Din(1 downto 0) => axi_TRX_gpio_0_gpio_io_o(1 downto 0),
      Dout(0) => TRX_gpio_xlslice_1to1_0_Dout(0)
    );
axi_TRX_gpio_0: component msys_axi_ROTENC_gpio_0_0
     port map (
      gpio_io_o(1 downto 0) => axi_TRX_gpio_0_gpio_io_o(1 downto 0),
      s_axi_aclk => s_axi_aclk_CD100,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx09_concat_imp_15HUCYS is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx09_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TRX_rx09_concat_imp_15HUCYS;

architecture STRUCTURE of TRX_rx09_concat_imp_15HUCYS is
  component msys_xlconcat_1_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_xlconcat_1_3;
  component msys_TRX_rx_xlslice_15to16_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_15to16_0;
  component msys_TRX_rx_xlslice_13to13_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_13to13_0;
  component msys_TRX_rx_xlslice_13to13_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_13to13_2;
  component msys_TRX_rx_xlslice_10to10_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_1;
  component msys_TRX_rx_xlslice_10to10_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_5;
  component msys_TRX_rx_xlslice_10to10_7 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_7;
  component msys_TRX_rx_xlslice_10to10_9 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_9;
  component msys_TRX_rx_xlslice_10to10_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_3;
  signal Din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx09_8bits : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_xlslice_00to00_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_02to02_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_04to04_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_06to06_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_08to08_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_10to10_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_12to12_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_14to14_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Din_1(15 downto 0) <= Din(15 downto 0);
  rx09_o(7 downto 0) <= TRX_rx09_8bits(7 downto 0);
TRX_rx09_xlconcat_0: component msys_xlconcat_1_3
     port map (
      In0(0) => TRX_rx_xlslice_00to00_Dout(0),
      In1(0) => TRX_rx_xlslice_02to02_Dout(0),
      In2(0) => TRX_rx_xlslice_04to04_Dout(0),
      In3(0) => TRX_rx_xlslice_06to06_Dout(0),
      In4(0) => TRX_rx_xlslice_08to08_Dout(0),
      In5(0) => TRX_rx_xlslice_10to10_Dout(0),
      In6(0) => TRX_rx_xlslice_12to12_Dout(0),
      In7(0) => TRX_rx_xlslice_14to14_Dout(0),
      dout(7 downto 0) => TRX_rx09_8bits(7 downto 0)
    );
TRX_rx_xlslice_00to00: component msys_TRX_rx_xlslice_15to16_0
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_14to14_Dout(0)
    );
TRX_rx_xlslice_02to02: component msys_TRX_rx_xlslice_13to13_0
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_12to12_Dout(0)
    );
TRX_rx_xlslice_04to04: component msys_TRX_rx_xlslice_13to13_2
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_10to10_Dout(0)
    );
TRX_rx_xlslice_06to06: component msys_TRX_rx_xlslice_10to10_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_08to08_Dout(0)
    );
TRX_rx_xlslice_08to08: component msys_TRX_rx_xlslice_10to10_3
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_06to06_Dout(0)
    );
TRX_rx_xlslice_10to10: component msys_TRX_rx_xlslice_10to10_5
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_04to04_Dout(0)
    );
TRX_rx_xlslice_12to12: component msys_TRX_rx_xlslice_10to10_7
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_02to02_Dout(0)
    );
TRX_rx_xlslice_14to14: component msys_TRX_rx_xlslice_10to10_9
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_00to00_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx24_concat_imp_TTPR41 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx24_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TRX_rx24_concat_imp_TTPR41;

architecture STRUCTURE of TRX_rx24_concat_imp_TTPR41 is
  component msys_TRX_rx09_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_TRX_rx09_xlconcat_0_0;
  component msys_TRX_rx_xlslice_10to10_8 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_8;
  component msys_TRX_rx_xlslice_10to10_6 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_6;
  component msys_TRX_rx_xlslice_10to10_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_4;
  component msys_TRX_rx_xlslice_10to10_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_2;
  component msys_TRX_rx_xlslice_10to10_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_10to10_0;
  component msys_TRX_rx_xlslice_13to13_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_13to13_1;
  component msys_TRX_rx_xlslice_15to15_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_TRX_rx_xlslice_15to15_0;
  component msys_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_0_4;
  signal Din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx24_8bits : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_xlslice_01to01_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_03to03_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_05to05_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_07to07_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_09to09_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_11to11_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_13to13_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_xlslice_15to15_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Din_1(15 downto 0) <= Din(15 downto 0);
  rx24_o(7 downto 0) <= TRX_rx24_8bits(7 downto 0);
TRX_rx24_xlconcat_0: component msys_TRX_rx09_xlconcat_0_0
     port map (
      In0(0) => TRX_rx_xlslice_01to01_Dout(0),
      In1(0) => TRX_rx_xlslice_03to03_Dout(0),
      In2(0) => TRX_rx_xlslice_05to05_Dout(0),
      In3(0) => TRX_rx_xlslice_07to07_Dout(0),
      In4(0) => TRX_rx_xlslice_09to09_Dout(0),
      In5(0) => TRX_rx_xlslice_11to11_Dout(0),
      In6(0) => TRX_rx_xlslice_13to13_Dout(0),
      In7(0) => TRX_rx_xlslice_15to15_Dout(0),
      dout(7 downto 0) => TRX_rx24_8bits(7 downto 0)
    );
TRX_rx_xlslice_01to01: component msys_xlslice_0_4
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_15to15_Dout(0)
    );
TRX_rx_xlslice_03to03: component msys_TRX_rx_xlslice_15to15_0
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_13to13_Dout(0)
    );
TRX_rx_xlslice_05to05: component msys_TRX_rx_xlslice_13to13_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_11to11_Dout(0)
    );
TRX_rx_xlslice_07to07: component msys_TRX_rx_xlslice_10to10_0
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_09to09_Dout(0)
    );
TRX_rx_xlslice_09to09: component msys_TRX_rx_xlslice_10to10_2
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_07to07_Dout(0)
    );
TRX_rx_xlslice_11to11: component msys_TRX_rx_xlslice_10to10_4
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_05to05_Dout(0)
    );
TRX_rx_xlslice_13to13: component msys_TRX_rx_xlslice_10to10_6
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_03to03_Dout(0)
    );
TRX_rx_xlslice_15to15: component msys_TRX_rx_xlslice_10to10_8
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_01to01_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_tx_DDS_unit_imp_195K6TC is
  port (
    SCLR : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_4to1_c_counter_binary_0_THRESH0 : out STD_LOGIC;
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    aresetn : in STD_LOGIC;
    clk_div_out : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end TRX_tx_DDS_unit_imp_195K6TC;

architecture STRUCTURE of TRX_tx_DDS_unit_imp_195K6TC is
  component msys_c_counter_binary_0_3 is
  port (
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_counter_binary_0_3;
  component msys_xlslice_0_27 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_0_27;
  component msys_xlslice_1_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_1_2;
  component msys_xlslice_0_28 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_0_28;
  component msys_xlslice_1_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_1_3;
  component msys_xbip_multadd_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 0 to 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 20 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component msys_xbip_multadd_0_0;
  component msys_xbip_multadd_0_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 0 to 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 20 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component msys_xbip_multadd_0_1;
  component msys_c_shift_ram_0_3 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_c_shift_ram_0_3;
  component msys_c_shift_ram_0_4 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_c_shift_ram_0_4;
  component msys_xlslice_0_29 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component msys_xlslice_0_29;
  component msys_xlslice_0_30 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_xlslice_0_30;
  component msys_xlslice_0_31 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component msys_xlslice_0_31;
  component msys_xlslice_0_32 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component msys_xlslice_0_32;
  component msys_xbip_multadd_0_2 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 20 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 20 downto 8 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component msys_xbip_multadd_0_2;
  component msys_xbip_multadd_0_3 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 20 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 20 downto 8 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component msys_xbip_multadd_0_3;
  component msys_TRX_tx_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_TRX_tx_dds_compiler_0_0;
  component msys_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_axi_gpio_0_1;
  component msys_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_dds_compiler_0_0;
  component msys_xlconstant_0_15 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0_15;
  component msys_xlconstant_0_16 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0_16;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SCLR_1 : STD_LOGIC;
  signal TRX_tx0_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx0_im_xbip_multadd_0_P : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal TRX_tx0_re_xbip_multadd_0_P : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal TRX_tx0_xlslice_23to00_Dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal TRX_tx0_xlslice_31to24_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx1_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx1_im_xlslice_28to16_Dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_tx1_re_xlslice_12to00_Dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_tx1_xlslice_23to00_Dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal TRX_tx1_xlslice_31to24_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_4to1_c_counter_binary_0_THRESH0_0 : STD_LOGIC;
  signal TRX_tx_axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_dds_compiler_0_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_dds_compiler_1_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal aresetn_1 : STD_LOGIC;
  signal clk_div_out_1 : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal xlconstant_0_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_12to00_Dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal xlslice_0_28to16_Dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_TRX_tx0_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx0_im_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx0_re_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx1_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx1_im_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx1_re_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx_4to1_c_counter_binary_0_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  SCLR_1 <= SCLR;
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  TRX_tx_4to1_c_counter_binary_0_THRESH0 <= TRX_tx_4to1_c_counter_binary_0_THRESH0_0;
  TRX_tx_im_out(20 downto 8) <= TRX_tx_im_out_0(20 downto 8);
  TRX_tx_re_out(20 downto 8) <= TRX_tx_re_out_0(20 downto 8);
  aresetn_1 <= aresetn;
  clk_div_out_1 <= clk_div_out;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
TRX_CDC_tx0_c_shift_ram_0: component msys_c_shift_ram_0_3
     port map (
      CLK => clk_div_out_1,
      D(31 downto 0) => TRX_tx_axi_gpio_0_gpio_io_o(31 downto 0),
      Q(31 downto 0) => TRX_tx0_c_shift_ram_0_Q(31 downto 0),
      SCLR => SCLR_1
    );
TRX_CDC_tx1_c_shift_ram_0: component msys_c_shift_ram_0_4
     port map (
      CLK => clk_div_out_1,
      D(31 downto 0) => TRX_tx_axi_gpio_0_gpio2_io_o(31 downto 0),
      Q(31 downto 0) => TRX_tx1_c_shift_ram_0_Q(31 downto 0),
      SCLR => SCLR_1
    );
TRX_tx0_dds_compiler_0: component msys_dds_compiler_0_0
     port map (
      aclk => clk_div_out_1,
      aclken => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      aresetn => aresetn_1,
      m_axis_data_tdata(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => NLW_TRX_tx0_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(23 downto 0) => TRX_tx0_xlslice_23to00_Dout(23 downto 0),
      s_axis_config_tvalid => '0'
    );
TRX_tx0_im_xbip_multadd_0: component msys_xbip_multadd_0_1
     port map (
      A(12 downto 0) => xlslice_0_28to16_Dout(12 downto 0),
      B(7 downto 0) => TRX_tx0_xlslice_31to24_Dout(7 downto 0),
      C(0) => xlconstant_0_len1_dout(0),
      CE => xlconstant_1_len1_dout(0),
      CLK => clk_div_out_1,
      P(20 downto 0) => TRX_tx0_im_xbip_multadd_0_P(20 downto 0),
      PCOUT(47 downto 0) => NLW_TRX_tx0_im_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => SCLR_1,
      SUBTRACT => xlconstant_0_len1_dout(0)
    );
TRX_tx0_im_xlslice_28to16: component msys_xlslice_0_28
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata(31 downto 0),
      Dout(12 downto 0) => xlslice_0_28to16_Dout(12 downto 0)
    );
TRX_tx0_re_xbip_multadd_0: component msys_xbip_multadd_0_0
     port map (
      A(12 downto 0) => xlslice_0_12to00_Dout(12 downto 0),
      B(7 downto 0) => TRX_tx0_xlslice_31to24_Dout(7 downto 0),
      C(0) => xlconstant_0_len1_dout(0),
      CE => xlconstant_1_len1_dout(0),
      CLK => clk_div_out_1,
      P(20 downto 0) => TRX_tx0_re_xbip_multadd_0_P(20 downto 0),
      PCOUT(47 downto 0) => NLW_TRX_tx0_re_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => SCLR_1,
      SUBTRACT => xlconstant_0_len1_dout(0)
    );
TRX_tx0_re_xlslice_12to00: component msys_xlslice_0_27
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata(31 downto 0),
      Dout(12 downto 0) => xlslice_0_12to00_Dout(12 downto 0)
    );
TRX_tx0_xlslice_23to00: component msys_xlslice_0_29
     port map (
      Din(31 downto 0) => TRX_tx0_c_shift_ram_0_Q(31 downto 0),
      Dout(23 downto 0) => TRX_tx0_xlslice_23to00_Dout(23 downto 0)
    );
TRX_tx0_xlslice_31to24: component msys_xlslice_0_30
     port map (
      Din(31 downto 0) => TRX_tx0_c_shift_ram_0_Q(31 downto 0),
      Dout(7 downto 0) => TRX_tx0_xlslice_31to24_Dout(7 downto 0)
    );
TRX_tx1_dds_compiler_0: component msys_TRX_tx_dds_compiler_0_0
     port map (
      aclk => clk_div_out_1,
      aclken => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      aresetn => aresetn_1,
      m_axis_data_tdata(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => NLW_TRX_tx1_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(23 downto 0) => TRX_tx1_xlslice_23to00_Dout(23 downto 0),
      s_axis_config_tvalid => '0'
    );
TRX_tx1_im_xbip_multadd_0: component msys_xbip_multadd_0_3
     port map (
      A(12 downto 0) => TRX_tx1_im_xlslice_28to16_Dout(12 downto 0),
      B(7 downto 0) => TRX_tx1_xlslice_31to24_Dout(7 downto 0),
      C(20 downto 0) => TRX_tx0_im_xbip_multadd_0_P(20 downto 0),
      CE => xlconstant_1_len1_dout(0),
      CLK => clk_div_out_1,
      P(20 downto 8) => TRX_tx_im_out_0(20 downto 8),
      PCOUT(47 downto 0) => NLW_TRX_tx1_im_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => SCLR_1,
      SUBTRACT => xlconstant_0_len1_dout(0)
    );
TRX_tx1_im_xlslice_28to16: component msys_xlslice_1_3
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata(31 downto 0),
      Dout(12 downto 0) => TRX_tx1_im_xlslice_28to16_Dout(12 downto 0)
    );
TRX_tx1_re_xbip_multadd_0: component msys_xbip_multadd_0_2
     port map (
      A(12 downto 0) => TRX_tx1_re_xlslice_12to00_Dout(12 downto 0),
      B(7 downto 0) => TRX_tx1_xlslice_31to24_Dout(7 downto 0),
      C(20 downto 0) => TRX_tx0_re_xbip_multadd_0_P(20 downto 0),
      CE => xlconstant_1_len1_dout(0),
      CLK => clk_div_out_1,
      P(20 downto 8) => TRX_tx_re_out_0(20 downto 8),
      PCOUT(47 downto 0) => NLW_TRX_tx1_re_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => SCLR_1,
      SUBTRACT => xlconstant_0_len1_dout(0)
    );
TRX_tx1_re_xlslice_12to00: component msys_xlslice_1_2
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata(31 downto 0),
      Dout(12 downto 0) => TRX_tx1_re_xlslice_12to00_Dout(12 downto 0)
    );
TRX_tx1_xlslice_23to00: component msys_xlslice_0_31
     port map (
      Din(31 downto 0) => TRX_tx1_c_shift_ram_0_Q(31 downto 0),
      Dout(23 downto 0) => TRX_tx1_xlslice_23to00_Dout(23 downto 0)
    );
TRX_tx1_xlslice_31to24: component msys_xlslice_0_32
     port map (
      Din(31 downto 0) => TRX_tx1_c_shift_ram_0_Q(31 downto 0),
      Dout(7 downto 0) => TRX_tx1_xlslice_31to24_Dout(7 downto 0)
    );
TRX_tx_4to1_c_counter_binary_0: component msys_c_counter_binary_0_3
     port map (
      CLK => clk_div_out_1,
      Q(2 downto 0) => NLW_TRX_tx_4to1_c_counter_binary_0_Q_UNCONNECTED(2 downto 0),
      SCLR => SCLR_1,
      THRESH0 => TRX_tx_4to1_c_counter_binary_0_THRESH0_0
    );
TRX_tx_axi_gpio_0: component msys_axi_gpio_0_1
     port map (
      gpio2_io_o(31 downto 0) => TRX_tx_axi_gpio_0_gpio2_io_o(31 downto 0),
      gpio_io_o(31 downto 0) => TRX_tx_axi_gpio_0_gpio_io_o(31 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
xlconstant_0_len1: component msys_xlconstant_0_15
     port map (
      dout(0) => xlconstant_0_len1_dout(0)
    );
xlconstant_1_len1: component msys_xlconstant_0_16
     port map (
      dout(0) => xlconstant_1_len1_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_tx_concat_imp_16F62M8 is
  port (
    TRX_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx09_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_tx_PTT_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_data_out_from_device_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_im_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : in STD_LOGIC_VECTOR ( 20 downto 8 )
  );
end TRX_tx_concat_imp_16F62M8;

architecture STRUCTURE of TRX_tx_concat_imp_16F62M8 is
  component msys_xlconcat_0_6 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component msys_xlconcat_0_6;
  component msys_xlslice_0_26 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_0_26;
  component msys_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_1_1;
  component msys_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_2_0;
  component msys_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_3_0;
  component msys_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_4_0;
  component msys_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_5_0;
  component msys_xlslice_6_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_6_0;
  component msys_xlslice_7_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_7_0;
  component msys_xlconcat_0_7 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlconcat_0_7;
  component msys_xlconstant_0_14 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0_14;
  component msys_xlconstant_0_17 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0_17;
  signal TRX_tx09_fifo_din_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx09_fifo_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_PTT_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_data_out_from_device_in_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal xlconstant_0_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_7_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  TRX_tx09_fifo_din(31 downto 0) <= TRX_tx09_fifo_din_0(31 downto 0);
  TRX_tx09_fifo_dout_0(7 downto 0) <= TRX_tx09_fifo_dout(7 downto 0);
  TRX_tx_PTT_in_0(0) <= TRX_tx_PTT_in(0);
  TRX_tx_data_out_from_device_in(15 downto 0) <= TRX_tx_data_out_from_device_in_0(15 downto 0);
  TRX_tx_im_out_0(20 downto 8) <= TRX_tx_im_out(20 downto 8);
  TRX_tx_re_out_0(20 downto 8) <= TRX_tx_re_out(20 downto 8);
TRX_tx_xlconcat_0: component msys_xlconcat_0_6
     port map (
      In0(0) => xlslice_0_Dout(0),
      In1(0) => xlconstant_0_len1_dout(0),
      In10(0) => xlslice_5_Dout(0),
      In11(0) => xlconstant_0_len1_dout(0),
      In12(0) => xlslice_6_Dout(0),
      In13(0) => xlconstant_0_len1_dout(0),
      In14(0) => xlslice_7_Dout(0),
      In15(0) => xlconstant_0_len1_dout(0),
      In2(0) => xlslice_1_Dout(0),
      In3(0) => xlconstant_0_len1_dout(0),
      In4(0) => xlslice_2_Dout(0),
      In5(0) => xlconstant_0_len1_dout(0),
      In6(0) => xlslice_3_Dout(0),
      In7(0) => xlconstant_0_len1_dout(0),
      In8(0) => xlslice_4_Dout(0),
      In9(0) => xlconstant_0_len1_dout(0),
      dout(15 downto 0) => TRX_tx_data_out_from_device_in_0(15 downto 0)
    );
xlconcat_0: component msys_xlconcat_0_7
     port map (
      In0(0) => xlconstant_0_len1_dout(0),
      In1(12 downto 0) => TRX_tx_im_out_0(20 downto 8),
      In2(0) => xlconstant_1_len1_dout(0),
      In3(0) => xlconstant_0_len1_dout(0),
      In4(0) => TRX_tx_PTT_in_0(0),
      In5(12 downto 0) => TRX_tx_re_out_0(20 downto 8),
      In6(0) => xlconstant_0_len1_dout(0),
      In7(0) => xlconstant_1_len1_dout(0),
      dout(31 downto 0) => TRX_tx09_fifo_din_0(31 downto 0)
    );
xlconstant_0_len1: component msys_xlconstant_0_14
     port map (
      dout(0) => xlconstant_0_len1_dout(0)
    );
xlconstant_1_len1: component msys_xlconstant_0_17
     port map (
      dout(0) => xlconstant_1_len1_dout(0)
    );
xlslice_00to00: component msys_xlslice_0_26
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_01to01: component msys_xlslice_1_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_02to02: component msys_xlslice_2_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_03to03: component msys_xlslice_3_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
xlslice_04to04: component msys_xlslice_4_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_4_Dout(0)
    );
xlslice_05to05: component msys_xlslice_5_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
xlslice_06to06: component msys_xlslice_6_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_6_Dout(0)
    );
xlslice_07to07: component msys_xlslice_7_0
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_7_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART0_imp_1B98M7Q is
  port (
    S_AXI1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DTRn : in STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RTSn : in STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC
  );
end UART0_imp_1B98M7Q;

architecture STRUCTURE of UART0_imp_1B98M7Q is
  component msys_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlslice_0_0;
  component msys_uart0_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_uart0_xlslice_0_0;
  component msys_uart0_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_uart0_xlslice_1_0;
  component msys_uart0_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_uart0_xlslice_1_1;
  component msys_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component msys_xlconcat_1_0;
  component msys_rst_mig_7series_0_50M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_rst_mig_7series_0_50M_1;
  component msys_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component msys_axi_gpio_0_0;
  component msys_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component msys_axi_uartlite_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RxD : STD_LOGIC;
  signal Conn3_TxD : STD_LOGIC;
  signal Din_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal UART0EXT_DTRn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0EXT_RTSn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal UART0_xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_UART0_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_UART0_uartlite_0_interrupt : STD_LOGIC;
  signal ext_reset_in_1 : STD_LOGIC;
  signal rst_mig_7series_0_12M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_12M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal slowest_sync_clk_1 : STD_LOGIC;
  signal NLW_rst_mig_7series_0_12M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_12M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_12M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  Conn2_ARADDR(31 downto 0) <= S_AXI1_araddr(31 downto 0);
  Conn2_ARVALID(0) <= S_AXI1_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= S_AXI1_awaddr(31 downto 0);
  Conn2_AWVALID(0) <= S_AXI1_awvalid(0);
  Conn2_BREADY(0) <= S_AXI1_bready(0);
  Conn2_RREADY(0) <= S_AXI1_rready(0);
  Conn2_WDATA(31 downto 0) <= S_AXI1_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= S_AXI1_wstrb(3 downto 0);
  Conn2_WVALID(0) <= S_AXI1_wvalid(0);
  Conn3_RxD <= UART0_rxd;
  S_AXI1_arready(0) <= Conn2_ARREADY;
  S_AXI1_awready(0) <= Conn2_AWREADY;
  S_AXI1_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S_AXI1_bvalid(0) <= Conn2_BVALID;
  S_AXI1_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S_AXI1_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S_AXI1_rvalid(0) <= Conn2_RVALID;
  S_AXI1_wready(0) <= Conn2_WREADY;
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  UART0EXT_CTSn(0) <= UART0_xlslice_0_Dout(0);
  UART0EXT_DCDn(0) <= UART0_xlslice_2_Dout(0);
  UART0EXT_DSRn(0) <= UART0_xlslice_1_Dout(0);
  UART0EXT_DTRn_1(0) <= UART0EXT_DTRn(0);
  UART0EXT_RIn(0) <= UART0_xlslice_3_Dout(0);
  UART0EXT_RTSn_1(0) <= UART0EXT_RTSn(0);
  UART0_rst_n(0) <= rst_mig_7series_0_12M_peripheral_aresetn(0);
  UART0_txd <= Conn3_TxD;
  ext_reset_in_1 <= ext_reset_in;
  interrupt <= axi_UART0_uartlite_0_interrupt;
  ip2intc_irpt <= axi_UART0_gpio_0_ip2intc_irpt;
  peripheral_reset(0) <= rst_mig_7series_0_12M_peripheral_reset(0);
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
  slowest_sync_clk_1 <= slowest_sync_clk;
UART0_xlconcat_1: component msys_xlconcat_1_0
     port map (
      In0(0) => UART0EXT_RTSn_1(0),
      In1(0) => UART0EXT_DTRn_1(0),
      dout(1 downto 0) => UART0_xlconcat_1_dout(1 downto 0)
    );
UART0_xlslice_0: component msys_xlslice_0_0
     port map (
      Din(3 downto 0) => Din_1(3 downto 0),
      Dout(0) => UART0_xlslice_0_Dout(0)
    );
UART0_xlslice_1: component msys_uart0_xlslice_0_0
     port map (
      Din(3 downto 0) => Din_1(3 downto 0),
      Dout(0) => UART0_xlslice_1_Dout(0)
    );
UART0_xlslice_2: component msys_uart0_xlslice_1_0
     port map (
      Din(3 downto 0) => Din_1(3 downto 0),
      Dout(0) => UART0_xlslice_2_Dout(0)
    );
UART0_xlslice_3: component msys_uart0_xlslice_1_1
     port map (
      Din(3 downto 0) => Din_1(3 downto 0),
      Dout(0) => UART0_xlslice_3_Dout(0)
    );
axi_UART0_gpio_0: component msys_axi_gpio_0_0
     port map (
      gpio2_io_i(1 downto 0) => UART0_xlconcat_1_dout(1 downto 0),
      gpio_io_o(3 downto 0) => Din_1(3 downto 0),
      ip2intc_irpt => axi_UART0_gpio_0_ip2intc_irpt,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
axi_UART0_uartlite_0: component msys_axi_uartlite_0_0
     port map (
      interrupt => axi_UART0_uartlite_0_interrupt,
      rx => Conn3_RxD,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(3 downto 0) => Conn2_ARADDR(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => Conn2_ARREADY,
      s_axi_arvalid => Conn2_ARVALID(0),
      s_axi_awaddr(3 downto 0) => Conn2_AWADDR(3 downto 0),
      s_axi_awready => Conn2_AWREADY,
      s_axi_awvalid => Conn2_AWVALID(0),
      s_axi_bready => Conn2_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_bvalid => Conn2_BVALID,
      s_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_rready => Conn2_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_rvalid => Conn2_RVALID,
      s_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_wready => Conn2_WREADY,
      s_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_wvalid => Conn2_WVALID(0),
      tx => Conn3_TxD
    );
rst_mig_7series_0_12M: component msys_rst_mig_7series_0_50M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_12M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ext_reset_in_1,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_12M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_12M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_12M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_mig_7series_0_12M_peripheral_reset(0),
      slowest_sync_clk => slowest_sync_clk_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity delay_rx09_2174clk_imp_VKILJK is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_CD100_i : in STD_LOGIC;
    s_axi_aclk_CD100_i : in STD_LOGIC
  );
end delay_rx09_2174clk_imp_VKILJK;

architecture STRUCTURE of delay_rx09_2174clk_imp_VKILJK is
  component msys_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_0_1;
  component msys_c_shift_ram_0_2 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_0_2;
  component msys_c_shift_ram_dly1024_1_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_dly1024_1_0;
  signal D_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly1024_0_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly1024_1_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly126_3_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC;
  signal s_axi_aclk_CD100 : STD_LOGIC;
begin
  D_0(2 downto 0) <= D(2 downto 0);
  Q(2 downto 0) <= c_shift_ram_dly126_3_Q(2 downto 0);
  rst_mig_7series_0_100M_peripheral_reset <= reset_CD100_i;
  s_axi_aclk_CD100 <= s_axi_aclk_CD100_i;
c_shift_ram_dly1024_0: component msys_c_shift_ram_0_1
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => D_0(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly1024_0_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
c_shift_ram_dly1024_1: component msys_c_shift_ram_0_2
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => c_shift_ram_dly1024_0_Q(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly1024_1_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
c_shift_ram_dly126_2: component msys_c_shift_ram_dly1024_1_0
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => c_shift_ram_dly1024_1_Q(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly126_3_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity delay_rx24_2174clk_imp_1NSRKN7 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_CD100_i : in STD_LOGIC;
    s_axi_aclk_CD100_i : in STD_LOGIC
  );
end delay_rx24_2174clk_imp_1NSRKN7;

architecture STRUCTURE of delay_rx24_2174clk_imp_1NSRKN7 is
  component msys_c_shift_ram_dly1024_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_dly1024_0_0;
  component msys_c_shift_ram_dly1024_1_2 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_dly1024_1_2;
  component msys_c_shift_ram_dly126_3_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_c_shift_ram_dly126_3_0;
  signal D_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly1024_0_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly1024_1_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_shift_ram_dly126_3_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC;
  signal s_axi_aclk_CD100 : STD_LOGIC;
begin
  D_0(2 downto 0) <= D(2 downto 0);
  Q(2 downto 0) <= c_shift_ram_dly126_3_Q(2 downto 0);
  rst_mig_7series_0_100M_peripheral_reset <= reset_CD100_i;
  s_axi_aclk_CD100 <= s_axi_aclk_CD100_i;
c_shift_ram_dly1024_0: component msys_c_shift_ram_dly1024_0_0
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => D_0(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly1024_0_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
c_shift_ram_dly1024_1: component msys_c_shift_ram_dly1024_1_2
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => c_shift_ram_dly1024_0_Q(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly1024_1_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
c_shift_ram_dly126_2: component msys_c_shift_ram_dly126_3_0
     port map (
      CLK => s_axi_aclk_CD100,
      D(2 downto 0) => c_shift_ram_dly1024_1_Q(2 downto 0),
      Q(2 downto 0) => c_shift_ram_dly126_3_Q(2 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1AS5XEI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1AS5XEI;

architecture STRUCTURE of m00_couplers_imp_1AS5XEI is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_couplers_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= m00_couplers_to_m00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m00_couplers_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m00_couplers_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_couplers_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= m00_couplers_to_m00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m00_couplers_to_m00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m00_couplers_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m00_couplers_to_m00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bid(0) <= m00_couplers_to_m00_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_m00_couplers_RID(0);
  S_AXI_rlast(0) <= m00_couplers_to_m00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_couplers_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_couplers_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BID(0) <= M_AXI_bid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RID(0) <= M_AXI_rid(0);
  m00_couplers_to_m00_couplers_RLAST(0) <= M_AXI_rlast(0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WLAST(0) <= S_AXI_wlast(0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_H1JZBS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_H1JZBS;

architecture STRUCTURE of m00_couplers_imp_H1JZBS is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_18I2MEM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_18I2MEM;

architecture STRUCTURE of m01_couplers_imp_18I2MEM is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1P1M5H1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1P1M5H1;

architecture STRUCTURE of m02_couplers_imp_1P1M5H1 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_I1SPXF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_I1SPXF;

architecture STRUCTURE of m03_couplers_imp_I1SPXF is
  component msys_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component msys_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(6 downto 0) <= auto_cc_to_m03_couplers_ARADDR(6 downto 0);
  M_AXI_arvalid <= auto_cc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(6 downto 0) <= auto_cc_to_m03_couplers_AWADDR(6 downto 0);
  M_AXI_awvalid <= auto_cc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_cc_WREADY;
  auto_cc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component msys_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(6 downto 0) => auto_cc_to_m03_couplers_ARADDR(6 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_cc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m03_couplers_ARVALID,
      m_axi_awaddr(6 downto 0) => auto_cc_to_m03_couplers_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_cc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m03_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(6 downto 0) => m03_couplers_to_auto_cc_ARADDR(6 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m03_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m03_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(6 downto 0) => m03_couplers_to_auto_cc_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m03_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m03_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m03_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m03_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_A73CLF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_A73CLF;

architecture STRUCTURE of m04_couplers_imp_A73CLF is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1FK0SMT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_1FK0SMT;

architecture STRUCTURE of m05_couplers_imp_1FK0SMT is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1IULRN2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m06_couplers_imp_1IULRN2;

architecture STRUCTURE of m06_couplers_imp_1IULRN2 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m06_couplers_to_m06_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m06_couplers_to_m06_couplers_AWVALID(0);
  M_AXI_bready(0) <= m06_couplers_to_m06_couplers_BREADY(0);
  M_AXI_rready(0) <= m06_couplers_to_m06_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m06_couplers_to_m06_couplers_WVALID(0);
  S_AXI_arready(0) <= m06_couplers_to_m06_couplers_ARREADY(0);
  S_AXI_awready(0) <= m06_couplers_to_m06_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m06_couplers_to_m06_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m06_couplers_to_m06_couplers_RVALID(0);
  S_AXI_wready(0) <= m06_couplers_to_m06_couplers_WREADY(0);
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY(0) <= M_AXI_arready(0);
  m06_couplers_to_m06_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY(0) <= M_AXI_awready(0);
  m06_couplers_to_m06_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m06_couplers_to_m06_couplers_BREADY(0) <= S_AXI_bready(0);
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY(0) <= S_AXI_rready(0);
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY(0) <= M_AXI_wready(0);
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_OLAJ4O is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_OLAJ4O;

architecture STRUCTURE of m07_couplers_imp_OLAJ4O is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_3XXN72 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m08_couplers_imp_3XXN72;

architecture STRUCTURE of m08_couplers_imp_3XXN72 is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m08_couplers_to_m08_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m08_couplers_to_m08_couplers_AWVALID(0);
  M_AXI_bready(0) <= m08_couplers_to_m08_couplers_BREADY(0);
  M_AXI_rready(0) <= m08_couplers_to_m08_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m08_couplers_to_m08_couplers_WVALID(0);
  S_AXI_arready(0) <= m08_couplers_to_m08_couplers_ARREADY(0);
  S_AXI_awready(0) <= m08_couplers_to_m08_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m08_couplers_to_m08_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m08_couplers_to_m08_couplers_RVALID(0);
  S_AXI_wready(0) <= m08_couplers_to_m08_couplers_WREADY(0);
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARREADY(0) <= M_AXI_arready(0);
  m08_couplers_to_m08_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWREADY(0) <= M_AXI_awready(0);
  m08_couplers_to_m08_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m08_couplers_to_m08_couplers_BREADY(0) <= S_AXI_bready(0);
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY(0) <= S_AXI_rready(0);
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY(0) <= M_AXI_wready(0);
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_14UM57C is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m09_couplers_imp_14UM57C;

architecture STRUCTURE of m09_couplers_imp_14UM57C is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m09_couplers_to_m09_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m09_couplers_to_m09_couplers_AWVALID(0);
  M_AXI_bready(0) <= m09_couplers_to_m09_couplers_BREADY(0);
  M_AXI_rready(0) <= m09_couplers_to_m09_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m09_couplers_to_m09_couplers_WVALID(0);
  S_AXI_arready(0) <= m09_couplers_to_m09_couplers_ARREADY(0);
  S_AXI_awready(0) <= m09_couplers_to_m09_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m09_couplers_to_m09_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m09_couplers_to_m09_couplers_RVALID(0);
  S_AXI_wready(0) <= m09_couplers_to_m09_couplers_WREADY(0);
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARREADY(0) <= M_AXI_arready(0);
  m09_couplers_to_m09_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWREADY(0) <= M_AXI_awready(0);
  m09_couplers_to_m09_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m09_couplers_to_m09_couplers_BREADY(0) <= S_AXI_bready(0);
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY(0) <= S_AXI_rready(0);
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY(0) <= M_AXI_wready(0);
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_10SF2B4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m10_couplers_imp_10SF2B4;

architecture STRUCTURE of m10_couplers_imp_10SF2B4 is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m10_couplers_to_m10_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m10_couplers_to_m10_couplers_AWVALID(0);
  M_AXI_bready(0) <= m10_couplers_to_m10_couplers_BREADY(0);
  M_AXI_rready(0) <= m10_couplers_to_m10_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m10_couplers_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m10_couplers_to_m10_couplers_WVALID(0);
  S_AXI_arready(0) <= m10_couplers_to_m10_couplers_ARREADY(0);
  S_AXI_awready(0) <= m10_couplers_to_m10_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m10_couplers_to_m10_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m10_couplers_to_m10_couplers_RVALID(0);
  S_AXI_wready(0) <= m10_couplers_to_m10_couplers_WREADY(0);
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARREADY(0) <= M_AXI_arready(0);
  m10_couplers_to_m10_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWREADY(0) <= M_AXI_awready(0);
  m10_couplers_to_m10_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m10_couplers_to_m10_couplers_BREADY(0) <= S_AXI_bready(0);
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY(0) <= S_AXI_rready(0);
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY(0) <= M_AXI_wready(0);
  m10_couplers_to_m10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_m10_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_73O2YU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m11_couplers_imp_73O2YU;

architecture STRUCTURE of m11_couplers_imp_73O2YU is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m11_couplers_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m11_couplers_to_m11_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m11_couplers_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m11_couplers_to_m11_couplers_AWVALID(0);
  M_AXI_bready(0) <= m11_couplers_to_m11_couplers_BREADY(0);
  M_AXI_rready(0) <= m11_couplers_to_m11_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m11_couplers_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m11_couplers_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m11_couplers_to_m11_couplers_WVALID(0);
  S_AXI_arready(0) <= m11_couplers_to_m11_couplers_ARREADY(0);
  S_AXI_awready(0) <= m11_couplers_to_m11_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_m11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m11_couplers_to_m11_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_m11_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_m11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m11_couplers_to_m11_couplers_RVALID(0);
  S_AXI_wready(0) <= m11_couplers_to_m11_couplers_WREADY(0);
  m11_couplers_to_m11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_m11_couplers_ARREADY(0) <= M_AXI_arready(0);
  m11_couplers_to_m11_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m11_couplers_to_m11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_m11_couplers_AWREADY(0) <= M_AXI_awready(0);
  m11_couplers_to_m11_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m11_couplers_to_m11_couplers_BREADY(0) <= S_AXI_bready(0);
  m11_couplers_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m11_couplers_to_m11_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m11_couplers_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m11_couplers_to_m11_couplers_RREADY(0) <= S_AXI_rready(0);
  m11_couplers_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m11_couplers_to_m11_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m11_couplers_to_m11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_m11_couplers_WREADY(0) <= M_AXI_wready(0);
  m11_couplers_to_m11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_m11_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_SALN19 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m12_couplers_imp_SALN19;

architecture STRUCTURE of m12_couplers_imp_SALN19 is
  signal m12_couplers_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m12_couplers_to_m12_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m12_couplers_to_m12_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m12_couplers_to_m12_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m12_couplers_to_m12_couplers_AWVALID(0);
  M_AXI_bready(0) <= m12_couplers_to_m12_couplers_BREADY(0);
  M_AXI_rready(0) <= m12_couplers_to_m12_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m12_couplers_to_m12_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m12_couplers_to_m12_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m12_couplers_to_m12_couplers_WVALID(0);
  S_AXI_arready(0) <= m12_couplers_to_m12_couplers_ARREADY(0);
  S_AXI_awready(0) <= m12_couplers_to_m12_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m12_couplers_to_m12_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m12_couplers_to_m12_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m12_couplers_to_m12_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m12_couplers_to_m12_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m12_couplers_to_m12_couplers_RVALID(0);
  S_AXI_wready(0) <= m12_couplers_to_m12_couplers_WREADY(0);
  m12_couplers_to_m12_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m12_couplers_to_m12_couplers_ARREADY(0) <= M_AXI_arready(0);
  m12_couplers_to_m12_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m12_couplers_to_m12_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m12_couplers_to_m12_couplers_AWREADY(0) <= M_AXI_awready(0);
  m12_couplers_to_m12_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m12_couplers_to_m12_couplers_BREADY(0) <= S_AXI_bready(0);
  m12_couplers_to_m12_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m12_couplers_to_m12_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m12_couplers_to_m12_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m12_couplers_to_m12_couplers_RREADY(0) <= S_AXI_rready(0);
  m12_couplers_to_m12_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m12_couplers_to_m12_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m12_couplers_to_m12_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m12_couplers_to_m12_couplers_WREADY(0) <= M_AXI_wready(0);
  m12_couplers_to_m12_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m12_couplers_to_m12_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_1X2T7E3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m13_couplers_imp_1X2T7E3;

architecture STRUCTURE of m13_couplers_imp_1X2T7E3 is
  signal m13_couplers_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m13_couplers_to_m13_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m13_couplers_to_m13_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m13_couplers_to_m13_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m13_couplers_to_m13_couplers_AWVALID(0);
  M_AXI_bready(0) <= m13_couplers_to_m13_couplers_BREADY(0);
  M_AXI_rready(0) <= m13_couplers_to_m13_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m13_couplers_to_m13_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m13_couplers_to_m13_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m13_couplers_to_m13_couplers_WVALID(0);
  S_AXI_arready(0) <= m13_couplers_to_m13_couplers_ARREADY(0);
  S_AXI_awready(0) <= m13_couplers_to_m13_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m13_couplers_to_m13_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m13_couplers_to_m13_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m13_couplers_to_m13_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m13_couplers_to_m13_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m13_couplers_to_m13_couplers_RVALID(0);
  S_AXI_wready(0) <= m13_couplers_to_m13_couplers_WREADY(0);
  m13_couplers_to_m13_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m13_couplers_to_m13_couplers_ARREADY(0) <= M_AXI_arready(0);
  m13_couplers_to_m13_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m13_couplers_to_m13_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m13_couplers_to_m13_couplers_AWREADY(0) <= M_AXI_awready(0);
  m13_couplers_to_m13_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m13_couplers_to_m13_couplers_BREADY(0) <= S_AXI_bready(0);
  m13_couplers_to_m13_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m13_couplers_to_m13_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m13_couplers_to_m13_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m13_couplers_to_m13_couplers_RREADY(0) <= S_AXI_rready(0);
  m13_couplers_to_m13_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m13_couplers_to_m13_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m13_couplers_to_m13_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m13_couplers_to_m13_couplers_WREADY(0) <= M_AXI_wready(0);
  m13_couplers_to_m13_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m13_couplers_to_m13_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_17WFGJG is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_17WFGJG;

architecture STRUCTURE of microblaze_0_local_memory_imp_17WFGJG is
  component msys_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component msys_lmb_bram_0;
  component msys_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component msys_dlmb_bram_if_cntlr_0;
  component msys_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component msys_dlmb_v10_0;
  component msys_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component msys_ilmb_bram_if_cntlr_0;
  component msys_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component msys_ilmb_v10_0;
  signal SYS_Rst_1 : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > msys microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component msys_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component msys_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component msys_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component msys_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component msys_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1XV12NH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1XV12NH;

architecture STRUCTURE of s00_couplers_imp_1XV12NH is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UL75GV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UL75GV;

architecture STRUCTURE of s00_couplers_imp_UL75GV is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s00_couplers_to_s00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s00_couplers_to_s00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid(0) <= s00_couplers_to_s00_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s00_couplers_to_s00_couplers_RID(0);
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID(0) <= M_AXI_bid(0);
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(0) <= M_AXI_rid(0);
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1VH6PSP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1VH6PSP;

architecture STRUCTURE of s01_couplers_imp_1VH6PSP is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s01_couplers_to_s01_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s01_couplers_to_s01_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_couplers_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s01_couplers_to_s01_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s01_couplers_to_s01_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_couplers_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s01_couplers_to_s01_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bid(0) <= s01_couplers_to_s01_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s01_couplers_to_s01_couplers_RID(0);
  S_AXI_rlast <= s01_couplers_to_s01_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARID(0) <= S_AXI_arid(0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWID(0) <= S_AXI_awid(0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BID(0) <= M_AXI_bid(0);
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RID(0) <= M_AXI_rid(0);
  s01_couplers_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ETH0_imp_1S8N2C8 is
  port (
    CLK1B_50MHz_phy_clk_in : in STD_LOGIC;
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED : in STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SC0712_0_mcs_clk_in : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    dcm_locked : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_mii_tx_er : out STD_LOGIC;
    m_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_rst_n : out STD_LOGIC;
    phy_tx_en : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_mii_col : out STD_LOGIC;
    s_mii_crs : out STD_LOGIC;
    s_mii_rx_clk : out STD_LOGIC;
    s_mii_rx_dv : out STD_LOGIC;
    s_mii_rx_er : out STD_LOGIC;
    s_mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mii_tx_clk : out STD_LOGIC
  );
end ETH0_imp_1S8N2C8;

architecture STRUCTURE of ETH0_imp_1S8N2C8 is
  component msys_mii_to_rmii_0_0 is
  port (
    rst_n : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac2rmii_tx_en : in STD_LOGIC;
    mac2rmii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac2rmii_tx_er : in STD_LOGIC;
    rmii2mac_tx_clk : out STD_LOGIC;
    rmii2mac_rx_clk : out STD_LOGIC;
    rmii2mac_col : out STD_LOGIC;
    rmii2mac_crs : out STD_LOGIC;
    rmii2mac_rx_dv : out STD_LOGIC;
    rmii2mac_rx_er : out STD_LOGIC;
    rmii2mac_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy2rmii_crs_dv : in STD_LOGIC;
    phy2rmii_rx_er : in STD_LOGIC;
    phy2rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_tx_en : out STD_LOGIC
  );
  end component msys_mii_to_rmii_0_0;
  component msys_mii_y_adapater_0_0 is
  port (
    s_mii_col : out STD_LOGIC;
    s_mii_crs : out STD_LOGIC;
    s_mii_rx_clk : out STD_LOGIC;
    s_mii_rx_dv : out STD_LOGIC;
    s_mii_rx_er : out STD_LOGIC;
    s_mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mii_tx_clk : out STD_LOGIC;
    s_mii_tx_en : in STD_LOGIC;
    s_mii_tx_er : in STD_LOGIC;
    s_mii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mii_rst_n : in STD_LOGIC;
    m_mii_col : in STD_LOGIC;
    m_mii_crs : in STD_LOGIC;
    m_mii_rx_clk : in STD_LOGIC;
    m_mii_rx_dv : in STD_LOGIC;
    m_mii_rx_er : in STD_LOGIC;
    m_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_mii_tx_clk : in STD_LOGIC;
    m_mii_tx_en : out STD_LOGIC;
    m_mii_tx_er : out STD_LOGIC;
    m_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_mii_rst_n : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC
  );
  end component msys_mii_y_adapater_0_0;
  component msys_proc_sys_reset_eth_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_proc_sys_reset_eth_0;
  component msys_axi_ethernetlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    phy_dv : in STD_LOGIC;
    phy_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_col : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    phy_tx_en : out STD_LOGIC;
    phy_tx_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_mdio_i : in STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    phy_mdc : out STD_LOGIC
  );
  end component msys_axi_ethernetlite_0_0;
  component msys_util_vector_logic_0_5 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_vector_logic_0_5;
  component msys_c_shift_ram_0_5 is
  port (
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component msys_c_shift_ram_0_5;
  component msys_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component msys_xlconcat_1_1;
  signal CLK1B_50MHz_phy_clk_0 : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_CRS_DV : STD_LOGIC;
  signal Conn2_RXD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TXD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TX_EN : STD_LOGIC;
  signal Conn3_MDC : STD_LOGIC;
  signal Conn3_MDIO_I : STD_LOGIC;
  signal Conn3_MDIO_O : STD_LOGIC;
  signal Conn3_MDIO_T : STD_LOGIC;
  signal ETH0_CDC_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_LEDs_ETH0_DA_G : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH0_LEDs_ETH0_DA_Y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH0_LEDs_xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_LINK_LED_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH0_LINK_LED_inv_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ETH0_mii_y_adapater_0_m_mii_rst_n : STD_LOGIC;
  signal ETH0_mii_y_adapater_0_m_mii_tx_er : STD_LOGIC;
  signal ETH0_mii_y_adapater_0_m_mii_txd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_mii_y_adapater_0_s_mii_col : STD_LOGIC;
  signal ETH0_mii_y_adapater_0_s_mii_crs : STD_LOGIC;
  signal ETH0_mii_y_adapater_0_s_mii_rx_er : STD_LOGIC;
  signal ETH0_mii_y_adapater_0_s_mii_rxd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SC0712_0_mcs_clk_0 : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RST_N : STD_LOGIC;
  signal axi_ethernetlite_0_MII_TXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernetlite_0_MII_TX_EN : STD_LOGIC;
  signal axi_ethernetlite_0_ip2intc_irpt : STD_LOGIC;
  signal axi_ethernetlite_0_phy_tx_en : STD_LOGIC;
  signal dcm_locked_1 : STD_LOGIC;
  signal ext_reset_in_0 : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_COL : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_CRS : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_RXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mii_y_adapater_0_M_MII_RX_CLK : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_RX_DV : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_RX_ER : STD_LOGIC;
  signal mii_y_adapater_0_M_MII_TX_CLK : STD_LOGIC;
  signal mii_y_adapater_0_phy_rst_n : STD_LOGIC;
  signal mii_y_adapater_0_s_mii_rx_clk : STD_LOGIC;
  signal mii_y_adapater_0_s_mii_rx_dv : STD_LOGIC;
  signal mii_y_adapater_0_s_mii_tx_clk : STD_LOGIC;
  signal rst_n_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_0 : STD_LOGIC;
  signal s_axi_aresetn_0 : STD_LOGIC;
  signal NLW_ETH0_LEDs_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_ETH0_LEDs_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ETH0_LEDs_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ETH0_LEDs_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK1B_50MHz_phy_clk_0 <= CLK1B_50MHz_phy_clk_in;
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_bready(0);
  Conn1_RREADY(0) <= S_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_wvalid(0);
  Conn2_CRS_DV <= RMII_PHY_M_0_crs_dv;
  Conn2_RXD(1 downto 0) <= RMII_PHY_M_0_rxd(1 downto 0);
  Conn3_MDIO_I <= ETH0_MDIO_MDC_mdio_i;
  ETH0_DA_G(0) <= ETH0_LEDs_ETH0_DA_G(0);
  ETH0_DA_Y(0) <= ETH0_LEDs_ETH0_DA_Y(0);
  ETH0_LINK_LED_0(0) <= ETH0_LINK_LED(0);
  ETH0_MDIO_MDC_mdc <= Conn3_MDC;
  ETH0_MDIO_MDC_mdio_o <= Conn3_MDIO_O;
  ETH0_MDIO_MDC_mdio_t <= Conn3_MDIO_T;
  Q(3 downto 0) <= ETH0_CDC_c_shift_ram_0_Q(3 downto 0);
  RMII_PHY_M_0_tx_en <= Conn2_TX_EN;
  RMII_PHY_M_0_txd(1 downto 0) <= Conn2_TXD(1 downto 0);
  SC0712_0_mcs_clk_0 <= SC0712_0_mcs_clk_in;
  S_AXI_arready(0) <= Conn1_ARREADY;
  S_AXI_awready(0) <= Conn1_AWREADY;
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn1_RVALID;
  S_AXI_wready(0) <= Conn1_WREADY;
  dcm_locked_1 <= dcm_locked;
  ext_reset_in_0 <= ext_reset_in;
  ip2intc_irpt <= axi_ethernetlite_0_ip2intc_irpt;
  m_mii_tx_er <= ETH0_mii_y_adapater_0_m_mii_tx_er;
  m_mii_txd(3 downto 0) <= ETH0_mii_y_adapater_0_m_mii_txd(3 downto 0);
  phy_rst_n <= mii_y_adapater_0_phy_rst_n;
  phy_tx_en <= axi_ethernetlite_0_phy_tx_en;
  s_axi_aclk_0 <= s_axi_aclk;
  s_axi_aresetn_0 <= s_axi_aresetn;
  s_mii_col <= ETH0_mii_y_adapater_0_s_mii_col;
  s_mii_crs <= ETH0_mii_y_adapater_0_s_mii_crs;
  s_mii_rx_clk <= mii_y_adapater_0_s_mii_rx_clk;
  s_mii_rx_dv <= mii_y_adapater_0_s_mii_rx_dv;
  s_mii_rx_er <= ETH0_mii_y_adapater_0_s_mii_rx_er;
  s_mii_rxd(3 downto 0) <= ETH0_mii_y_adapater_0_s_mii_rxd(3 downto 0);
  s_mii_tx_clk <= mii_y_adapater_0_s_mii_tx_clk;
ETH0_CDC_c_shift_ram_0: component msys_c_shift_ram_0_5
     port map (
      CLK => SC0712_0_mcs_clk_0,
      D(3 downto 0) => ETH0_LEDs_xlconcat_0_dout(3 downto 0),
      Q(3 downto 0) => ETH0_CDC_c_shift_ram_0_Q(3 downto 0)
    );
ETH0_LEDs: entity work.ETH0_LEDs_imp_437WON
     port map (
      ETH0_DA_G(0) => ETH0_LEDs_ETH0_DA_G(0),
      ETH0_DA_Y(0) => ETH0_LEDs_ETH0_DA_Y(0),
      ETH0_LINK_LED_inv(0) => ETH0_LINK_LED_inv_0(0)
    );
ETH0_LEDs_proc_sys_reset_0: component msys_proc_sys_reset_eth_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_ETH0_LEDs_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => dcm_locked_1,
      ext_reset_in => ext_reset_in_0,
      interconnect_aresetn(0) => NLW_ETH0_LEDs_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_ETH0_LEDs_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_n_0(0),
      peripheral_reset(0) => NLW_ETH0_LEDs_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => CLK1B_50MHz_phy_clk_0
    );
ETH0_LEDs_xlconcat_0: component msys_xlconcat_1_1
     port map (
      In0(0) => ETH0_LINK_LED_inv_0(0),
      In1(0) => mii_y_adapater_0_s_mii_rx_dv,
      In2(0) => axi_ethernetlite_0_phy_tx_en,
      In3(0) => ETH0_mii_y_adapater_0_m_mii_rst_n,
      dout(3 downto 0) => ETH0_LEDs_xlconcat_0_dout(3 downto 0)
    );
ETH0_axi_ethernetlite_0: component msys_axi_ethernetlite_0_0
     port map (
      ip2intc_irpt => axi_ethernetlite_0_ip2intc_irpt,
      phy_col => '0',
      phy_crs => '0',
      phy_dv => '0',
      phy_mdc => Conn3_MDC,
      phy_mdio_i => Conn3_MDIO_I,
      phy_mdio_o => Conn3_MDIO_O,
      phy_mdio_t => Conn3_MDIO_T,
      phy_rst_n => axi_ethernetlite_0_MII_RST_N,
      phy_rx_clk => '0',
      phy_rx_data(3 downto 0) => B"0000",
      phy_rx_er => '0',
      phy_tx_clk => '0',
      phy_tx_data(3 downto 0) => axi_ethernetlite_0_MII_TXD(3 downto 0),
      phy_tx_en => axi_ethernetlite_0_MII_TX_EN,
      s_axi_aclk => s_axi_aclk_0,
      s_axi_araddr(12 downto 0) => Conn1_ARADDR(12 downto 0),
      s_axi_aresetn => s_axi_aresetn_0,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(12 downto 0) => Conn1_AWADDR(12 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
ETH0_mii_to_rmii_0: component msys_mii_to_rmii_0_0
     port map (
      mac2rmii_tx_en => '0',
      mac2rmii_tx_er => '0',
      mac2rmii_txd(3 downto 0) => B"0000",
      phy2rmii_crs_dv => Conn2_CRS_DV,
      phy2rmii_rx_er => '0',
      phy2rmii_rxd(1 downto 0) => Conn2_RXD(1 downto 0),
      ref_clk => CLK1B_50MHz_phy_clk_0,
      rmii2mac_col => mii_y_adapater_0_M_MII_COL,
      rmii2mac_crs => mii_y_adapater_0_M_MII_CRS,
      rmii2mac_rx_clk => mii_y_adapater_0_M_MII_RX_CLK,
      rmii2mac_rx_dv => mii_y_adapater_0_M_MII_RX_DV,
      rmii2mac_rx_er => mii_y_adapater_0_M_MII_RX_ER,
      rmii2mac_rxd(3 downto 0) => mii_y_adapater_0_M_MII_RXD(3 downto 0),
      rmii2mac_tx_clk => mii_y_adapater_0_M_MII_TX_CLK,
      rmii2phy_tx_en => Conn2_TX_EN,
      rmii2phy_txd(1 downto 0) => Conn2_TXD(1 downto 0),
      rst_n => rst_n_0(0)
    );
ETH0_mii_y_adapater_0: component msys_mii_y_adapater_0_0
     port map (
      m_mii_col => mii_y_adapater_0_M_MII_COL,
      m_mii_crs => mii_y_adapater_0_M_MII_CRS,
      m_mii_rst_n => ETH0_mii_y_adapater_0_m_mii_rst_n,
      m_mii_rx_clk => mii_y_adapater_0_M_MII_RX_CLK,
      m_mii_rx_dv => mii_y_adapater_0_M_MII_RX_DV,
      m_mii_rx_er => mii_y_adapater_0_M_MII_RX_ER,
      m_mii_rxd(3 downto 0) => mii_y_adapater_0_M_MII_RXD(3 downto 0),
      m_mii_tx_clk => mii_y_adapater_0_M_MII_TX_CLK,
      m_mii_tx_en => axi_ethernetlite_0_phy_tx_en,
      m_mii_tx_er => ETH0_mii_y_adapater_0_m_mii_tx_er,
      m_mii_txd(3 downto 0) => ETH0_mii_y_adapater_0_m_mii_txd(3 downto 0),
      phy_rst_n => mii_y_adapater_0_phy_rst_n,
      s_mii_col => ETH0_mii_y_adapater_0_s_mii_col,
      s_mii_crs => ETH0_mii_y_adapater_0_s_mii_crs,
      s_mii_rst_n => axi_ethernetlite_0_MII_RST_N,
      s_mii_rx_clk => mii_y_adapater_0_s_mii_rx_clk,
      s_mii_rx_dv => mii_y_adapater_0_s_mii_rx_dv,
      s_mii_rx_er => ETH0_mii_y_adapater_0_s_mii_rx_er,
      s_mii_rxd(3 downto 0) => ETH0_mii_y_adapater_0_s_mii_rxd(3 downto 0),
      s_mii_tx_clk => mii_y_adapater_0_s_mii_tx_clk,
      s_mii_tx_en => axi_ethernetlite_0_MII_TX_EN,
      s_mii_tx_er => '0',
      s_mii_txd(3 downto 0) => axi_ethernetlite_0_MII_TXD(3 downto 0)
    );
ETH0_util_vector_logic_0: component msys_util_vector_logic_0_5
     port map (
      Op1(0) => ETH0_LINK_LED_0(0),
      Res(0) => ETH0_LINK_LED_inv_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_LVDS_imp_1YILY8K is
  port (
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_4to1_c_counter_binary_0_THRESH0 : in STD_LOGIC;
    TRX_tx_PTT_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_im_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    clk_reset : in STD_LOGIC;
    clkdiv_CD016_o : out STD_LOGIC;
    io_reset : in STD_LOGIC;
    ref_clock : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx09_rd_data_count_CD100_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end TRX_LVDS_imp_1YILY8K;

architecture STRUCTURE of TRX_LVDS_imp_1YILY8K is
  component msys_TRX_rx09_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component msys_TRX_rx09_fifo_generator_0_0;
  component msys_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component msys_fifo_generator_0_0;
  component msys_TRX_rx09_fifo_generator_0_1 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component msys_TRX_rx09_fifo_generator_0_1;
  component msys_selectio_wiz_0_1 is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    data_out_from_device : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC;
    ref_clock : in STD_LOGIC;
    delay_locked : out STD_LOGIC;
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_div_out : out STD_LOGIC;
    data_in_to_device : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component msys_selectio_wiz_0_1;
  component msys_xlconstant_0_12 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component msys_xlconstant_0_12;
  component msys_xlconstant_0b00_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0b00_1;
  signal Conn4_CLK_N : STD_LOGIC;
  signal Conn4_CLK_P : STD_LOGIC;
  signal TRX_proc_sys_reset_0_peripheral_reset : STD_LOGIC;
  signal TRX_rx09_concat_CD016 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx09_fifo_generator_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx09_fifo_generator_0_rd_data_count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal TRX_rx09_fifo_generator_0_valid : STD_LOGIC;
  signal TRX_rx24_concat_CD016 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx24_fifo_generator_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx24_fifo_generator_0_valid : STD_LOGIC;
  signal TRX_rx_clkdiv_CD016 : STD_LOGIC;
  signal TRX_rx_data_n_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_data_p_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_lvds_16bits_CD016 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_selectio_io_reset : STD_LOGIC;
  signal TRX_rx_selectio_wiz_0_data_out_to_pins_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_selectio_wiz_0_data_out_to_pins_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_tx09_fifo_din_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx09_fifo_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_PTT_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_data_out_from_device_in_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal c_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ref_clock_200MHz : STD_LOGIC;
  signal rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC;
  signal rx_clk_CD064_CLK_N : STD_LOGIC;
  signal rx_clk_CD064_CLK_P : STD_LOGIC;
  signal s_axi_aclk_CD100 : STD_LOGIC;
  signal xlconstant_0x0_len2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_TRX_LVDS_selectio_wiz_0_delay_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_TRX_rx24_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx24_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx24_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx24_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx09_fifo_generator_0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_TRX_tx09_fifo_generator_0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  TRX_proc_sys_reset_0_peripheral_reset <= rst;
  TRX_rx09_fifo_o(31 downto 0) <= TRX_rx09_fifo_generator_0_dout(31 downto 0);
  TRX_rx09_fifo_valid_o <= TRX_rx09_fifo_generator_0_valid;
  TRX_rx24_fifo_o(31 downto 0) <= TRX_rx24_fifo_generator_0_dout(31 downto 0);
  TRX_rx24_fifo_valid_o <= TRX_rx24_fifo_generator_0_valid;
  TRX_rx_data_n_1(1 downto 0) <= TRX_rx_data_n(1 downto 0);
  TRX_rx_data_p_1(1 downto 0) <= TRX_rx_data_p(1 downto 0);
  TRX_rx_selectio_io_reset <= io_reset;
  TRX_tx_PTT_in_0(0) <= TRX_tx_PTT_in(0);
  TRX_tx_clk_clk_n <= Conn4_CLK_N;
  TRX_tx_clk_clk_p <= Conn4_CLK_P;
  TRX_tx_data_n(1 downto 0) <= TRX_rx_selectio_wiz_0_data_out_to_pins_n(1 downto 0);
  TRX_tx_data_p(1 downto 0) <= TRX_rx_selectio_wiz_0_data_out_to_pins_p(1 downto 0);
  TRX_tx_im_out_0(20 downto 8) <= TRX_tx_im_out(20 downto 8);
  TRX_tx_re_out_0(20 downto 8) <= TRX_tx_re_out(20 downto 8);
  clkdiv_CD016_o <= TRX_rx_clkdiv_CD016;
  ref_clock_200MHz <= ref_clock;
  rst_mig_7series_0_100M_peripheral_reset <= clk_reset;
  rx09_rd_data_count_CD100_o(8 downto 0) <= TRX_rx09_fifo_generator_0_rd_data_count(8 downto 0);
  rx_clk_CD064_CLK_N <= TRX_rx_clk_64MHz_clk_n;
  rx_clk_CD064_CLK_P <= TRX_rx_clk_64MHz_clk_p;
  s_axi_aclk_CD100 <= s_axi_aclk;
TRX_LVDS_selectio_wiz_0: component msys_selectio_wiz_0_1
     port map (
      bitslip(1 downto 0) => xlconstant_0x0_len2_dout(1 downto 0),
      clk_div_out => TRX_rx_clkdiv_CD016,
      clk_in_n => rx_clk_CD064_CLK_N,
      clk_in_p => rx_clk_CD064_CLK_P,
      clk_reset => rst_mig_7series_0_100M_peripheral_reset,
      clk_to_pins_n => Conn4_CLK_N,
      clk_to_pins_p => Conn4_CLK_P,
      data_in_from_pins_n(1 downto 0) => TRX_rx_data_n_1(1 downto 0),
      data_in_from_pins_p(1 downto 0) => TRX_rx_data_p_1(1 downto 0),
      data_in_to_device(15 downto 0) => TRX_rx_lvds_16bits_CD016(15 downto 0),
      data_out_from_device(15 downto 0) => TRX_tx_data_out_from_device_in_0(15 downto 0),
      data_out_to_pins_n(1 downto 0) => TRX_rx_selectio_wiz_0_data_out_to_pins_n(1 downto 0),
      data_out_to_pins_p(1 downto 0) => TRX_rx_selectio_wiz_0_data_out_to_pins_p(1 downto 0),
      delay_locked => NLW_TRX_LVDS_selectio_wiz_0_delay_locked_UNCONNECTED,
      io_reset => TRX_rx_selectio_io_reset,
      ref_clock => ref_clock_200MHz
    );
TRX_rx09_concat: entity work.TRX_rx09_concat_imp_15HUCYS
     port map (
      Din(15 downto 0) => TRX_rx_lvds_16bits_CD016(15 downto 0),
      rx09_o(7 downto 0) => TRX_rx09_concat_CD016(7 downto 0)
    );
TRX_rx09_fifo_generator_0: component msys_TRX_rx09_fifo_generator_0_0
     port map (
      din(7 downto 0) => TRX_rx09_concat_CD016(7 downto 0),
      dout(31 downto 0) => TRX_rx09_fifo_generator_0_dout(31 downto 0),
      empty => NLW_TRX_rx09_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_rx09_fifo_generator_0_full_UNCONNECTED,
      rd_clk => s_axi_aclk_CD100,
      rd_data_count(8 downto 0) => TRX_rx09_fifo_generator_0_rd_data_count(8 downto 0),
      rd_en => c_1(0),
      rd_rst_busy => NLW_TRX_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_proc_sys_reset_0_peripheral_reset,
      valid => TRX_rx09_fifo_generator_0_valid,
      wr_clk => TRX_rx_clkdiv_CD016,
      wr_data_count(10 downto 0) => NLW_TRX_rx09_fifo_generator_0_wr_data_count_UNCONNECTED(10 downto 0),
      wr_en => c_1(0),
      wr_rst_busy => NLW_TRX_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_rx24_concat: entity work.TRX_rx24_concat_imp_TTPR41
     port map (
      Din(15 downto 0) => TRX_rx_lvds_16bits_CD016(15 downto 0),
      rx24_o(7 downto 0) => TRX_rx24_concat_CD016(7 downto 0)
    );
TRX_rx24_fifo_generator_0: component msys_fifo_generator_0_0
     port map (
      din(7 downto 0) => TRX_rx24_concat_CD016(7 downto 0),
      dout(31 downto 0) => TRX_rx24_fifo_generator_0_dout(31 downto 0),
      empty => NLW_TRX_rx24_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_rx24_fifo_generator_0_full_UNCONNECTED,
      rd_clk => s_axi_aclk_CD100,
      rd_en => c_1(0),
      rd_rst_busy => NLW_TRX_rx24_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_proc_sys_reset_0_peripheral_reset,
      valid => TRX_rx24_fifo_generator_0_valid,
      wr_clk => TRX_rx_clkdiv_CD016,
      wr_en => c_1(0),
      wr_rst_busy => NLW_TRX_rx24_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_tx09_fifo_generator_0: component msys_TRX_rx09_fifo_generator_0_1
     port map (
      din(31 downto 0) => TRX_tx09_fifo_din_0(31 downto 0),
      dout(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      empty => NLW_TRX_tx09_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_tx09_fifo_generator_0_full_UNCONNECTED,
      rd_clk => TRX_rx_clkdiv_CD016,
      rd_data_count(5 downto 0) => NLW_TRX_tx09_fifo_generator_0_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => c_1(0),
      rd_rst_busy => NLW_TRX_tx09_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_proc_sys_reset_0_peripheral_reset,
      valid => NLW_TRX_tx09_fifo_generator_0_valid_UNCONNECTED,
      wr_clk => TRX_rx_clkdiv_CD016,
      wr_data_count(3 downto 0) => NLW_TRX_tx09_fifo_generator_0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => c_1(0),
      wr_rst_busy => NLW_TRX_tx09_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_tx_concat: entity work.TRX_tx_concat_imp_16F62M8
     port map (
      TRX_tx09_fifo_din(31 downto 0) => TRX_tx09_fifo_din_0(31 downto 0),
      TRX_tx09_fifo_dout(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      TRX_tx_PTT_in(0) => TRX_tx_PTT_in_0(0),
      TRX_tx_data_out_from_device_in(15 downto 0) => TRX_tx_data_out_from_device_in_0(15 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_im_out_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_re_out_0(20 downto 8)
    );
xlconstant_0x0_len2: component msys_xlconstant_0_12
     port map (
      dout(1 downto 0) => xlconstant_0x0_len2_dout(1 downto 0)
    );
xlconstant_1_len1: component msys_xlconstant_0b00_1
     port map (
      dout(0) => c_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx_FFT_calc_imp_3HC979 is
  port (
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cordic_rx09_m_tuser_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    cordic_rx09_tvalid_out : out STD_LOGIC;
    cordic_rx24_m_tuser_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    cordic_rx24_tvalid_out : out STD_LOGIC;
    fft09_aresetn_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft24_aresetn_in_0 : in STD_LOGIC;
    fft24_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft24_config_tvalid_in : in STD_LOGIC;
    fft24_data_tlast_in : in STD_LOGIC;
    fft24_data_tready_out : out STD_LOGIC;
    fft24_data_tvalid_in : in STD_LOGIC;
    fft_s_data_rx09_im_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    fft_s_data_rx09_re_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    fft_s_data_rx24_im_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    fft_s_data_rx24_re_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    premem_rx09_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx24_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_mig_7series_0_100M_peripheral_reset_in : in STD_LOGIC;
    rx09_postmem_re_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk_CD100_in : in STD_LOGIC;
    xfft_rx09_dly3449_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_frame_started_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3449_event_frame_started_out : out STD_LOGIC
  );
end TRX_rx_FFT_calc_imp_3HC979;

architecture STRUCTURE of TRX_rx_FFT_calc_imp_3HC979 is
  component msys_cordic_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tuser : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axis_cartesian_tlast : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component msys_cordic_0_0;
  component msys_cordic_rx09_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tuser : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axis_cartesian_tlast : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component msys_cordic_rx09_0;
  component msys_xlslice_0_19 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlslice_0_19;
  component msys_xlslice_0_20 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlslice_0_20;
  component msys_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlconcat_0_1;
  component msys_xlconcat_0_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_xlconcat_0_2;
  component msys_xlconcat_0_4 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlconcat_0_4;
  component msys_xlconcat_0_5 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlconcat_0_5;
  component msys_xlslice_0_24 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component msys_xlslice_0_24;
  component msys_xlslice_0_25 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component msys_xlslice_0_25;
  component msys_xfft_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC
  );
  end component msys_xfft_0_0;
  component msys_xfft_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC
  );
  end component msys_xfft_0_1;
  component msys_xlconstant_0_13 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component msys_xlconstant_0_13;
  signal TRX_rx_xfft_dly8334_m_axis_data_tlast_0 : STD_LOGIC;
  signal TRX_rx_xfft_dly8334_m_axis_data_tvalid_0 : STD_LOGIC;
  signal cordic_rx09_addra_xlslice_9to0_Dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cordic_rx09_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal cordic_rx09_m_tuser_out_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cordic_rx09_tvalid_out_0 : STD_LOGIC;
  signal cordic_rx09_xlconcat_0_dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cordic_rx24_addra_xlslice_9to0_Dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cordic_rx24_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal cordic_rx24_m_tuser_out_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cordic_rx24_tvalid_out_0 : STD_LOGIC;
  signal cordic_rx24_xlconcat_0_dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal delay_rx09_3198clk_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal delay_rx24_3198clk_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fft09_aresetn_in_0 : STD_LOGIC;
  signal fft09_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft09_config_tvalid_in_0 : STD_LOGIC;
  signal fft09_data_tlast_in_0 : STD_LOGIC;
  signal fft09_data_tready_out_0 : STD_LOGIC;
  signal fft09_data_tvalid_in_0 : STD_LOGIC;
  signal fft09_s_data_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft24_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft24_config_tvalid_in_0 : STD_LOGIC;
  signal fft24_data_tlast_in_0 : STD_LOGIC;
  signal fft24_data_tready_out_0 : STD_LOGIC;
  signal fft24_data_tvalid_in_0 : STD_LOGIC;
  signal fft24_s_data_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_s_data_rx09_im_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx09_re_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx24_im_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx24_re_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal premem_rx09_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx24_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal rx09_postmem_re_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx24_xlslice_31to00_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
  signal xfft_rx09_dly3198_m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal xfft_rx09_dly3198_m_axis_data_tuser : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xfft_rx09_dly3449_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal xfft_rx24_dly3198_m_axis_data_tlast_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_m_axis_data_tuser : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xfft_rx24_dly3198_m_axis_data_tvalid_0 : STD_LOGIC;
  signal xfft_rx24_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xlconstant_0x0_len3_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_cordic_rx09_m_axis_dout_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_cordic_rx24_m_axis_dout_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_rx09_dly3198_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_rx24_dly3198_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
begin
  Dout(31 downto 0) <= rx24_xlslice_31to00_Dout(31 downto 0);
  cordic_rx09_m_tuser_out(12 downto 0) <= cordic_rx09_m_tuser_out_0(12 downto 0);
  cordic_rx09_tvalid_out <= cordic_rx09_tvalid_out_0;
  cordic_rx24_m_tuser_out(12 downto 0) <= cordic_rx24_m_tuser_out_0(12 downto 0);
  cordic_rx24_tvalid_out <= cordic_rx24_tvalid_out_0;
  fft09_aresetn_in_0 <= fft09_aresetn_in;
  fft09_config_tdata_in_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  fft09_config_tvalid_in_0 <= fft09_config_tvalid_in;
  fft09_data_tlast_in_0 <= fft09_data_tlast_in;
  fft09_data_tready_out <= fft09_data_tready_out_0;
  fft09_data_tvalid_in_0 <= fft09_data_tvalid_in;
  fft24_config_tdata_in_0(7 downto 0) <= fft24_config_tdata_in(7 downto 0);
  fft24_config_tvalid_in_0 <= fft24_config_tvalid_in;
  fft24_data_tlast_in_0 <= fft24_data_tlast_in;
  fft24_data_tready_out <= fft24_data_tready_out_0;
  fft24_data_tvalid_in_0 <= fft24_data_tvalid_in;
  fft_s_data_rx09_im_in_0(12 downto 0) <= fft_s_data_rx09_im_in(12 downto 0);
  fft_s_data_rx09_re_in_0(12 downto 0) <= fft_s_data_rx09_re_in(12 downto 0);
  fft_s_data_rx24_im_in_0(12 downto 0) <= fft_s_data_rx24_im_in(12 downto 0);
  fft_s_data_rx24_re_in_0(12 downto 0) <= fft_s_data_rx24_re_in(12 downto 0);
  premem_rx09_quarterfrm_in_0(2 downto 0) <= premem_rx09_quarterfrm_in(2 downto 0);
  premem_rx24_quarterfrm_in_0(2 downto 0) <= premem_rx24_quarterfrm_in(2 downto 0);
  rst_mig_7series_0_100M_peripheral_reset_0 <= rst_mig_7series_0_100M_peripheral_reset_in;
  rx09_postmem_re_out(31 downto 0) <= rx09_postmem_re_0(31 downto 0);
  s_axi_aclk_CD100_0 <= s_axi_aclk_CD100_in;
  xfft_rx09_dly3449_event_data_in_channel_halt_out <= xfft_rx09_dly3449_event_data_in_channel_halt_out_0;
  xfft_rx09_dly3449_event_frame_started_out <= xfft_rx09_dly3449_event_frame_started_out_0;
  xfft_rx09_dly3449_event_tlast_missing_out <= xfft_rx09_dly3449_event_tlast_missing_out_0;
  xfft_rx09_dly3449_event_tlast_unexpected_out <= xfft_rx09_dly3449_event_tlast_unexpected_out_0;
  xfft_rx24_dly3198_event_data_in_channel_halt_out <= xfft_rx24_dly3198_event_data_in_channel_halt_out_0;
  xfft_rx24_dly3198_event_tlast_missing_out <= xfft_rx24_dly3198_event_tlast_missing_out_0;
  xfft_rx24_dly3198_event_tlast_unexpected_out <= xfft_rx24_dly3198_event_tlast_unexpected_out_0;
  xfft_rx24_dly3449_event_frame_started_out <= xfft_rx24_dly3449_event_frame_started_out_0;
cordic_rx09: component msys_cordic_0_0
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => fft09_aresetn_in_0,
      m_axis_dout_tdata(63 downto 0) => cordic_rx09_m_axis_dout_tdata(63 downto 0),
      m_axis_dout_tlast => NLW_cordic_rx09_m_axis_dout_tlast_UNCONNECTED,
      m_axis_dout_tuser(12 downto 0) => cordic_rx09_m_tuser_out_0(12 downto 0),
      m_axis_dout_tvalid => cordic_rx09_tvalid_out_0,
      s_axis_cartesian_tdata(47 downto 0) => xfft_rx09_dly3198_m_axis_data_tdata_0(47 downto 0),
      s_axis_cartesian_tlast => TRX_rx_xfft_dly8334_m_axis_data_tlast_0,
      s_axis_cartesian_tuser(12 downto 0) => cordic_rx09_xlconcat_0_dout(12 downto 0),
      s_axis_cartesian_tvalid => TRX_rx_xfft_dly8334_m_axis_data_tvalid_0
    );
cordic_rx09_addra_xlslice_9to0: component msys_xlslice_0_24
     port map (
      Din(15 downto 0) => xfft_rx09_dly3198_m_axis_data_tuser(15 downto 0),
      Dout(9 downto 0) => cordic_rx09_addra_xlslice_9to0_Dout(9 downto 0)
    );
cordic_rx09_xlconcat_0: component msys_xlconcat_0_4
     port map (
      In0(9 downto 0) => cordic_rx09_addra_xlslice_9to0_Dout(9 downto 0),
      In1(2 downto 0) => delay_rx09_3198clk_Q(2 downto 0),
      dout(12 downto 0) => cordic_rx09_xlconcat_0_dout(12 downto 0)
    );
cordic_rx24: component msys_cordic_rx09_0
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => fft24_aresetn_in_0,
      m_axis_dout_tdata(63 downto 0) => cordic_rx24_m_axis_dout_tdata(63 downto 0),
      m_axis_dout_tlast => NLW_cordic_rx24_m_axis_dout_tlast_UNCONNECTED,
      m_axis_dout_tuser(12 downto 0) => cordic_rx24_m_tuser_out_0(12 downto 0),
      m_axis_dout_tvalid => cordic_rx24_tvalid_out_0,
      s_axis_cartesian_tdata(47 downto 0) => xfft_rx24_dly3198_m_axis_data_tdata_0(47 downto 0),
      s_axis_cartesian_tlast => xfft_rx24_dly3198_m_axis_data_tlast_0,
      s_axis_cartesian_tuser(12 downto 0) => cordic_rx24_xlconcat_0_dout(12 downto 0),
      s_axis_cartesian_tvalid => xfft_rx24_dly3198_m_axis_data_tvalid_0
    );
cordic_rx24_addra_xlslice_9to0: component msys_xlslice_0_25
     port map (
      Din(15 downto 0) => xfft_rx24_dly3198_m_axis_data_tuser(15 downto 0),
      Dout(9 downto 0) => cordic_rx24_addra_xlslice_9to0_Dout(9 downto 0)
    );
cordic_rx24_xlconcat_0: component msys_xlconcat_0_5
     port map (
      In0(9 downto 0) => cordic_rx24_addra_xlslice_9to0_Dout(9 downto 0),
      In1(2 downto 0) => delay_rx24_3198clk_Q(2 downto 0),
      dout(12 downto 0) => cordic_rx24_xlconcat_0_dout(12 downto 0)
    );
delay_rx09_2174clk: entity work.delay_rx09_2174clk_imp_VKILJK
     port map (
      D(2 downto 0) => premem_rx09_quarterfrm_in_0(2 downto 0),
      Q(2 downto 0) => delay_rx09_3198clk_Q(2 downto 0),
      reset_CD100_i => rst_mig_7series_0_100M_peripheral_reset_0,
      s_axi_aclk_CD100_i => s_axi_aclk_CD100_0
    );
delay_rx24_2174clk: entity work.delay_rx24_2174clk_imp_1NSRKN7
     port map (
      D(2 downto 0) => premem_rx24_quarterfrm_in_0(2 downto 0),
      Q(2 downto 0) => delay_rx24_3198clk_Q(2 downto 0),
      reset_CD100_i => rst_mig_7series_0_100M_peripheral_reset_0,
      s_axi_aclk_CD100_i => s_axi_aclk_CD100_0
    );
fft_rx09_s_data_xlconcat_0: component msys_xlconcat_0_1
     port map (
      In0(12 downto 0) => fft_s_data_rx09_re_in_0(12 downto 0),
      In1(2 downto 0) => xlconstant_0x0_len3_dout(2 downto 0),
      In2(12 downto 0) => fft_s_data_rx09_im_in_0(12 downto 0),
      In3(2 downto 0) => xlconstant_0x0_len3_dout(2 downto 0),
      dout(31 downto 0) => fft09_s_data_xlconcat_0_dout(31 downto 0)
    );
fft_rx24_s_data_xlconcat_0: component msys_xlconcat_0_2
     port map (
      In0(12 downto 0) => fft_s_data_rx24_re_in_0(12 downto 0),
      In1(2 downto 0) => xlconstant_0x0_len3_dout(2 downto 0),
      In2(12 downto 0) => fft_s_data_rx24_im_in_0(12 downto 0),
      In3(2 downto 0) => xlconstant_0x0_len3_dout(2 downto 0),
      dout(31 downto 0) => fft24_s_data_xlconcat_0_dout(31 downto 0)
    );
rx09_xlslice_31to00: component msys_xlslice_0_19
     port map (
      Din(63 downto 0) => cordic_rx09_m_axis_dout_tdata(63 downto 0),
      Dout(31 downto 0) => rx09_postmem_re_0(31 downto 0)
    );
rx24_xlslice_31to00: component msys_xlslice_0_20
     port map (
      Din(63 downto 0) => cordic_rx24_m_axis_dout_tdata(63 downto 0),
      Dout(31 downto 0) => rx24_xlslice_31to00_Dout(31 downto 0)
    );
xfft_rx09_dly3198: component msys_xfft_0_0
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => fft09_aresetn_in_0,
      event_data_in_channel_halt => xfft_rx09_dly3449_event_data_in_channel_halt_out_0,
      event_frame_started => xfft_rx09_dly3449_event_frame_started_out_0,
      event_tlast_missing => xfft_rx09_dly3449_event_tlast_missing_out_0,
      event_tlast_unexpected => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      m_axis_data_tdata(47 downto 0) => xfft_rx09_dly3198_m_axis_data_tdata_0(47 downto 0),
      m_axis_data_tlast => TRX_rx_xfft_dly8334_m_axis_data_tlast_0,
      m_axis_data_tuser(15 downto 0) => xfft_rx09_dly3198_m_axis_data_tuser(15 downto 0),
      m_axis_data_tvalid => TRX_rx_xfft_dly8334_m_axis_data_tvalid_0,
      s_axis_config_tdata(7 downto 0) => fft09_config_tdata_in_0(7 downto 0),
      s_axis_config_tready => NLW_xfft_rx09_dly3198_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => fft09_config_tvalid_in_0,
      s_axis_data_tdata(31 downto 0) => fft09_s_data_xlconcat_0_dout(31 downto 0),
      s_axis_data_tlast => fft09_data_tlast_in_0,
      s_axis_data_tready => fft09_data_tready_out_0,
      s_axis_data_tvalid => fft09_data_tvalid_in_0
    );
xfft_rx24_dly3198: component msys_xfft_0_1
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => fft24_aresetn_in_0,
      event_data_in_channel_halt => xfft_rx24_dly3198_event_data_in_channel_halt_out_0,
      event_frame_started => xfft_rx24_dly3449_event_frame_started_out_0,
      event_tlast_missing => xfft_rx24_dly3198_event_tlast_missing_out_0,
      event_tlast_unexpected => xfft_rx24_dly3198_event_tlast_unexpected_out_0,
      m_axis_data_tdata(47 downto 0) => xfft_rx24_dly3198_m_axis_data_tdata_0(47 downto 0),
      m_axis_data_tlast => xfft_rx24_dly3198_m_axis_data_tlast_0,
      m_axis_data_tuser(15 downto 0) => xfft_rx24_dly3198_m_axis_data_tuser(15 downto 0),
      m_axis_data_tvalid => xfft_rx24_dly3198_m_axis_data_tvalid_0,
      s_axis_config_tdata(7 downto 0) => fft24_config_tdata_in_0(7 downto 0),
      s_axis_config_tready => NLW_xfft_rx24_dly3198_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => fft24_config_tvalid_in_0,
      s_axis_data_tdata(31 downto 0) => fft24_s_data_xlconcat_0_dout(31 downto 0),
      s_axis_data_tlast => fft24_data_tlast_in_0,
      s_axis_data_tready => fft24_data_tready_out_0,
      s_axis_data_tvalid => fft24_data_tvalid_in_0
    );
xlconstant_0x0_len3: component msys_xlconstant_0_13
     port map (
      dout(2 downto 0) => xlconstant_0x0_len3_dout(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end msys_axi_interconnect_0_0;

architecture STRUCTURE of msys_axi_interconnect_0_0 is
  component msys_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xbar_2;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_0_ARID(0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= m00_couplers_to_axi_interconnect_0_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_interconnect_0_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_0_AWID(0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= m00_couplers_to_axi_interconnect_0_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_interconnect_0_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_interconnect_0_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_interconnect_0_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wlast(0) <= m00_couplers_to_axi_interconnect_0_WLAST(0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_interconnect_0_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid(0) <= axi_interconnect_0_to_s00_couplers_BID(0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(0) <= axi_interconnect_0_to_s00_couplers_RID(0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= axi_interconnect_0_to_s01_couplers_ARREADY;
  S01_AXI_awready <= axi_interconnect_0_to_s01_couplers_AWREADY;
  S01_AXI_bid(0) <= axi_interconnect_0_to_s01_couplers_BID(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= axi_interconnect_0_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(0) <= axi_interconnect_0_to_s01_couplers_RID(0);
  S01_AXI_rlast <= axi_interconnect_0_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_interconnect_0_to_s01_couplers_RVALID;
  S01_AXI_wready <= axi_interconnect_0_to_s01_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_interconnect_0_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s01_couplers_ARID(0) <= S01_AXI_arid(0);
  axi_interconnect_0_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  axi_interconnect_0_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s01_couplers_AWID(0) <= S01_AXI_awid(0);
  axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  axi_interconnect_0_to_s01_couplers_BREADY <= S01_AXI_bready;
  axi_interconnect_0_to_s01_couplers_RREADY <= S01_AXI_rready;
  axi_interconnect_0_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s01_couplers_WLAST <= S01_AXI_wlast;
  axi_interconnect_0_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_interconnect_0_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_interconnect_0_BID(0) <= M00_AXI_bid(0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RID(0) <= M00_AXI_rid(0);
  m00_couplers_to_axi_interconnect_0_RLAST(0) <= M00_AXI_rlast(0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_interconnect_0_WREADY(0) <= M00_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1AS5XEI
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_0_ARID(0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m00_couplers_to_axi_interconnect_0_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_0_AWID(0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m00_couplers_to_axi_interconnect_0_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bid(0) => m00_couplers_to_axi_interconnect_0_BID(0),
      M_AXI_bready(0) => m00_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(0) => m00_couplers_to_axi_interconnect_0_RID(0),
      M_AXI_rlast(0) => m00_couplers_to_axi_interconnect_0_RLAST(0),
      M_AXI_rready(0) => m00_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast(0) => m00_couplers_to_axi_interconnect_0_WLAST(0),
      M_AXI_wready(0) => m00_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_UL75GV
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s00_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s00_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s00_couplers_to_xbar_BID(0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(0) => s00_couplers_to_xbar_RID(0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_interconnect_0_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_interconnect_0_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_interconnect_0_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_interconnect_0_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid(0) => axi_interconnect_0_to_s00_couplers_BID(0),
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => axi_interconnect_0_to_s00_couplers_RID(0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1VH6PSP
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s01_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s01_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bid(0) => s01_couplers_to_xbar_BID(1),
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rid(0) => s01_couplers_to_xbar_RID(1),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_interconnect_0_to_s01_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_interconnect_0_to_s01_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_interconnect_0_to_s01_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_interconnect_0_to_s01_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s01_couplers_AWVALID,
      S_AXI_bid(0) => axi_interconnect_0_to_s01_couplers_BID(0),
      S_AXI_bready => axi_interconnect_0_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => axi_interconnect_0_to_s01_couplers_RID(0),
      S_AXI_rlast => axi_interconnect_0_to_s01_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s01_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s01_couplers_WVALID
    );
xbar: component msys_xbar_2
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arregion(3 downto 0) => NLW_xbar_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awregion(3 downto 0) => NLW_xbar_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1) => s01_couplers_to_xbar_ARID(0),
      s_axi_arid(0) => s00_couplers_to_xbar_ARID(0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(1) => s01_couplers_to_xbar_AWID(0),
      s_axi_awid(0) => s00_couplers_to_xbar_AWID(0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(1) => s01_couplers_to_xbar_BID(1),
      s_axi_bid(0) => s00_couplers_to_xbar_BID(0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(1) => s01_couplers_to_xbar_RID(1),
      s_axi_rid(0) => s00_couplers_to_xbar_RID(0),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC;
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M12_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC;
    M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end msys_microblaze_0_axi_periph_0;

architecture STRUCTURE of msys_microblaze_0_axi_periph_0 is
  component msys_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component msys_xbar_3;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC;
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC;
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC;
  signal M12_ACLK_1 : STD_LOGIC;
  signal M12_ARESETN_1 : STD_LOGIC;
  signal M13_ACLK_1 : STD_LOGIC;
  signal M13_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 41 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(6 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  M03_AXI_awaddr(6 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_microblaze_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_microblaze_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_microblaze_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M06_AXI_bready(0) <= m06_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M06_AXI_rready(0) <= m06_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M08_AXI_bready(0) <= m08_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M08_AXI_rready(0) <= m08_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1 <= M09_ARESETN;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M09_AXI_arvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M09_AXI_awvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M09_AXI_bready(0) <= m09_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M09_AXI_rready(0) <= m09_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M09_AXI_wvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1 <= M10_ARESETN;
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M10_AXI_arvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M10_AXI_awvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M10_AXI_bready(0) <= m10_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M10_AXI_rready(0) <= m10_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M10_AXI_wvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1 <= M11_ARESETN;
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M11_AXI_arvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M11_AXI_awvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M11_AXI_bready(0) <= m11_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M11_AXI_rready(0) <= m11_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M11_AXI_wvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M12_ACLK_1 <= M12_ACLK;
  M12_ARESETN_1 <= M12_ARESETN;
  M12_AXI_araddr(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M12_AXI_arvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M12_AXI_awaddr(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M12_AXI_awvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M12_AXI_bready(0) <= m12_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M12_AXI_rready(0) <= m12_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M12_AXI_wdata(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M12_AXI_wstrb(3 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M12_AXI_wvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M13_ACLK_1 <= M13_ACLK;
  M13_ARESETN_1 <= M13_ARESETN;
  M13_AXI_araddr(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M13_AXI_arvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M13_AXI_awaddr(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M13_AXI_awvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M13_AXI_bready(0) <= m13_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M13_AXI_rready(0) <= m13_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M13_AXI_wdata(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M13_AXI_wstrb(3 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M13_AXI_wvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= microblaze_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= microblaze_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= microblaze_0_axi_periph_to_s00_couplers_WREADY(0);
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_microblaze_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_microblaze_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M06_AXI_arready(0);
  m06_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M06_AXI_awready(0);
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M06_AXI_bvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M06_AXI_rvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M06_AXI_wready(0);
  m07_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M08_AXI_arready(0);
  m08_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M08_AXI_awready(0);
  m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M08_AXI_bvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M08_AXI_rvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M08_AXI_wready(0);
  m09_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M09_AXI_arready(0);
  m09_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M09_AXI_awready(0);
  m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M09_AXI_bvalid(0);
  m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M09_AXI_rvalid(0);
  m09_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M09_AXI_wready(0);
  m10_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M10_AXI_arready(0);
  m10_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M10_AXI_awready(0);
  m10_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M10_AXI_bvalid(0);
  m10_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M10_AXI_rvalid(0);
  m10_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M10_AXI_wready(0);
  m11_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M11_AXI_arready(0);
  m11_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M11_AXI_awready(0);
  m11_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M11_AXI_bvalid(0);
  m11_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M11_AXI_rvalid(0);
  m11_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M11_AXI_wready(0);
  m12_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M12_AXI_arready(0);
  m12_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M12_AXI_awready(0);
  m12_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M12_AXI_bresp(1 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M12_AXI_bvalid(0);
  m12_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M12_AXI_rdata(31 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M12_AXI_rresp(1 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M12_AXI_rvalid(0);
  m12_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M12_AXI_wready(0);
  m13_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M13_AXI_arready(0);
  m13_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M13_AXI_awready(0);
  m13_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M13_AXI_bresp(1 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M13_AXI_bvalid(0);
  m13_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M13_AXI_rdata(31 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M13_AXI_rresp(1 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M13_AXI_rvalid(0);
  m13_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M13_AXI_wready(0);
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net <= ARESETN;
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  microblaze_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
m00_couplers: entity work.m00_couplers_imp_H1JZBS
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_18I2MEM
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1P1M5H1
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_I1SPXF
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(6 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0),
      M_AXI_arready => m03_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(6 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0),
      M_AXI_awready => m03_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_A73CLF
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1FK0SMT
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1IULRN2
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m06_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m06_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m06_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m06_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m06_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m06_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m06_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m06_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m06_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m06_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready(0) => xbar_to_m06_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready(0) => xbar_to_m06_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready(0) => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m06_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m06_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready(0) => xbar_to_m06_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid(0) => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_OLAJ4O
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m07_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m07_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => xbar_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => xbar_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => xbar_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_3XXN72
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m08_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m08_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m08_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m08_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m08_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m08_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m08_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m08_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m08_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m08_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arready(0) => xbar_to_m08_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awready(0) => xbar_to_m08_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready(0) => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m08_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m08_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready(0) => xbar_to_m08_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid(0) => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_14UM57C
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN => M09_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m09_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m09_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m09_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m09_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m09_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m09_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m09_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m09_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m09_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m09_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arready(0) => xbar_to_m09_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awready(0) => xbar_to_m09_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready(0) => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m09_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m09_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready(0) => xbar_to_m09_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid(0) => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_10SF2B4
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN => M10_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m10_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m10_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m10_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m10_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m10_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m10_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m10_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m10_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m10_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m10_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m10_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m10_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arready(0) => xbar_to_m10_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awready(0) => xbar_to_m10_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready(0) => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m10_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m10_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wready(0) => xbar_to_m10_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      S_AXI_wvalid(0) => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_73O2YU
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN => M11_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m11_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m11_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m11_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m11_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m11_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m11_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m11_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m11_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m11_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m11_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m11_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m11_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      S_AXI_arready(0) => xbar_to_m11_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr(31 downto 0) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      S_AXI_awready(0) => xbar_to_m11_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bready(0) => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m11_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m11_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      S_AXI_wready(0) => xbar_to_m11_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      S_AXI_wvalid(0) => xbar_to_m11_couplers_WVALID(11)
    );
m12_couplers: entity work.m12_couplers_imp_SALN19
     port map (
      M_ACLK => M12_ACLK_1,
      M_ARESETN => M12_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m12_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m12_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m12_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m12_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m12_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m12_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m12_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m12_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m12_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m12_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m12_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m12_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m12_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      S_AXI_arready(0) => xbar_to_m12_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m12_couplers_ARVALID(12),
      S_AXI_awaddr(31 downto 0) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      S_AXI_awready(0) => xbar_to_m12_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m12_couplers_AWVALID(12),
      S_AXI_bready(0) => xbar_to_m12_couplers_BREADY(12),
      S_AXI_bresp(1 downto 0) => xbar_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m12_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m12_couplers_RREADY(12),
      S_AXI_rresp(1 downto 0) => xbar_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m12_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m12_couplers_WDATA(415 downto 384),
      S_AXI_wready(0) => xbar_to_m12_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      S_AXI_wvalid(0) => xbar_to_m12_couplers_WVALID(12)
    );
m13_couplers: entity work.m13_couplers_imp_1X2T7E3
     port map (
      M_ACLK => M13_ACLK_1,
      M_ARESETN => M13_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m13_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m13_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m13_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m13_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m13_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m13_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m13_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m13_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m13_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m13_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m13_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m13_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m13_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      S_AXI_arready(0) => xbar_to_m13_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m13_couplers_ARVALID(13),
      S_AXI_awaddr(31 downto 0) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      S_AXI_awready(0) => xbar_to_m13_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m13_couplers_AWVALID(13),
      S_AXI_bready(0) => xbar_to_m13_couplers_BREADY(13),
      S_AXI_bresp(1 downto 0) => xbar_to_m13_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m13_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m13_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m13_couplers_RREADY(13),
      S_AXI_rresp(1 downto 0) => xbar_to_m13_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m13_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m13_couplers_WDATA(447 downto 416),
      S_AXI_wready(0) => xbar_to_m13_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      S_AXI_wvalid(0) => xbar_to_m13_couplers_WVALID(13)
    );
s00_couplers: entity work.s00_couplers_imp_1XV12NH
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_to_s00_couplers_WVALID(0)
    );
xbar: component msys_xbar_3
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(447 downto 416) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      m_axi_araddr(415 downto 384) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(41 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(41 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(13) => xbar_to_m13_couplers_ARREADY(0),
      m_axi_arready(12) => xbar_to_m12_couplers_ARREADY(0),
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY(0),
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY(0),
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY(0),
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY(0),
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY(0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(13) => xbar_to_m13_couplers_ARVALID(13),
      m_axi_arvalid(12) => xbar_to_m12_couplers_ARVALID(12),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(447 downto 416) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      m_axi_awaddr(415 downto 384) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(41 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(41 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(13) => xbar_to_m13_couplers_AWREADY(0),
      m_axi_awready(12) => xbar_to_m12_couplers_AWREADY(0),
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY(0),
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY(0),
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY(0),
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY(0),
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY(0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(13) => xbar_to_m13_couplers_AWVALID(13),
      m_axi_awvalid(12) => xbar_to_m12_couplers_AWVALID(12),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(13) => xbar_to_m13_couplers_BREADY(13),
      m_axi_bready(12) => xbar_to_m12_couplers_BREADY(12),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(27 downto 26) => xbar_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bresp(25 downto 24) => xbar_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(13) => xbar_to_m13_couplers_BVALID(0),
      m_axi_bvalid(12) => xbar_to_m12_couplers_BVALID(0),
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID(0),
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID(0),
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID(0),
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID(0),
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID(0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(447 downto 416) => xbar_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rdata(415 downto 384) => xbar_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(13) => xbar_to_m13_couplers_RREADY(13),
      m_axi_rready(12) => xbar_to_m12_couplers_RREADY(12),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(27 downto 26) => xbar_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rresp(25 downto 24) => xbar_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(13) => xbar_to_m13_couplers_RVALID(0),
      m_axi_rvalid(12) => xbar_to_m12_couplers_RVALID(0),
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID(0),
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID(0),
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID(0),
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID(0),
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID(0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(447 downto 416) => xbar_to_m13_couplers_WDATA(447 downto 416),
      m_axi_wdata(415 downto 384) => xbar_to_m12_couplers_WDATA(415 downto 384),
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(13) => xbar_to_m13_couplers_WREADY(0),
      m_axi_wready(12) => xbar_to_m12_couplers_WREADY(0),
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY(0),
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY(0),
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY(0),
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY(0),
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY(0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(55 downto 52) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      m_axi_wstrb(51 downto 48) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(13) => xbar_to_m13_couplers_WVALID(13),
      m_axi_wvalid(12) => xbar_to_m12_couplers_WVALID(12),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx_FFT_unit_imp_1NLKML1 is
  port (
    aresetn_CD100_in : in STD_LOGIC;
    fft09_aresetn_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft24_aresetn_in : in STD_LOGIC;
    fft24_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft24_config_tvalid_in : in STD_LOGIC;
    fft24_data_tlast_in : in STD_LOGIC;
    fft24_data_tready_out : out STD_LOGIC;
    fft24_data_tvalid_in : in STD_LOGIC;
    postmem_rx09_doutb_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    postmem_rx24_doutb_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    postmem_rx_addrb_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx24_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx24_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx24_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_mig_7series_0_100M_peripheral_reset_in : in STD_LOGIC;
    s_axi_aclk_CD100_in : in STD_LOGIC;
    xfft_rx09_dly3449_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_frame_started_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3449_event_frame_started_out : out STD_LOGIC
  );
end TRX_rx_FFT_unit_imp_1NLKML1;

architecture STRUCTURE of TRX_rx_FFT_unit_imp_1NLKML1 is
  component msys_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 25 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component msys_blk_mem_gen_0_0;
  component msys_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_blk_mem_gen_0_2;
  component msys_post_fft_rx09_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_post_fft_rx09_blk_mem_gen_0_0;
  component msys_pre_fft_rx09_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 25 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component msys_pre_fft_rx09_blk_mem_gen_0_0;
  component msys_xlslice_0_21 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_0_21;
  component msys_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_1_0;
  component msys_xlslice_0_22 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_0_22;
  component msys_xlslice_0_23 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_xlslice_0_23;
  signal TRX_rx_FFT_calc_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cordic_rx09_m_tuser_out_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cordic_rx09_tvalid_out_0 : STD_LOGIC;
  signal cordic_rx24_m_tuser_out_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal cordic_rx24_tvalid_out_0 : STD_LOGIC;
  signal fft09_aresetn_in_0 : STD_LOGIC;
  signal fft09_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft09_config_tvalid_in_0 : STD_LOGIC;
  signal fft09_data_tlast_in_0 : STD_LOGIC;
  signal fft09_data_tready_out_0 : STD_LOGIC;
  signal fft09_data_tvalid_in_0 : STD_LOGIC;
  signal fft24_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft24_config_tvalid_in_0 : STD_LOGIC;
  signal fft24_data_tlast_in_0 : STD_LOGIC;
  signal fft24_data_tready_out_0 : STD_LOGIC;
  signal fft24_data_tvalid_in_0 : STD_LOGIC;
  signal fft_s_data_rx09_im_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx09_re_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx24_im_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx24_re_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal postmem_rx09_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx24_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx_addrb_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal pre_fft_rx09_blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal pre_fft_rx24_blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx09_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx09_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx09_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal premem_rx24_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx24_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx24_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal rx09_postmem_re_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3449_event_frame_started_out_0 : STD_LOGIC;
begin
  fft09_aresetn_in_0 <= fft09_aresetn_in;
  fft09_config_tdata_in_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  fft09_config_tvalid_in_0 <= fft09_config_tvalid_in;
  fft09_data_tlast_in_0 <= fft09_data_tlast_in;
  fft09_data_tready_out <= fft09_data_tready_out_0;
  fft09_data_tvalid_in_0 <= fft09_data_tvalid_in;
  fft24_config_tdata_in_0(7 downto 0) <= fft24_config_tdata_in(7 downto 0);
  fft24_config_tvalid_in_0 <= fft24_config_tvalid_in;
  fft24_data_tlast_in_0 <= fft24_data_tlast_in;
  fft24_data_tready_out <= fft24_data_tready_out_0;
  fft24_data_tvalid_in_0 <= fft24_data_tvalid_in;
  postmem_rx09_doutb_out(31 downto 0) <= postmem_rx09_doutb_out_0(31 downto 0);
  postmem_rx24_doutb_out(31 downto 0) <= postmem_rx24_doutb_out_0(31 downto 0);
  postmem_rx_addrb_in_0(12 downto 0) <= postmem_rx_addrb_in(12 downto 0);
  premem_rx09_addra_in_0(10 downto 0) <= premem_rx09_addra_in(10 downto 0);
  premem_rx09_addrb_in_0(10 downto 0) <= premem_rx09_addrb_in(10 downto 0);
  premem_rx09_dina_in_0(25 downto 0) <= premem_rx09_dina_in(25 downto 0);
  premem_rx09_quarterfrm_in_0(2 downto 0) <= premem_rx09_quarterfrm_in(2 downto 0);
  premem_rx09_wea_in_0(0) <= premem_rx09_wea_in(0);
  premem_rx24_addra_in_0(10 downto 0) <= premem_rx24_addra_in(10 downto 0);
  premem_rx24_addrb_in_0(10 downto 0) <= premem_rx24_addrb_in(10 downto 0);
  premem_rx24_dina_in_0(25 downto 0) <= premem_rx24_dina_in(25 downto 0);
  premem_rx24_quarterfrm_in_0(2 downto 0) <= premem_rx24_quarterfrm_in(2 downto 0);
  premem_rx24_wea_in_0(0) <= premem_rx24_wea_in(0);
  rst_mig_7series_0_100M_peripheral_reset_0 <= rst_mig_7series_0_100M_peripheral_reset_in;
  s_axi_aclk_CD100_0 <= s_axi_aclk_CD100_in;
  xfft_rx09_dly3449_event_data_in_channel_halt_out <= xfft_rx09_dly3449_event_data_in_channel_halt_out_0;
  xfft_rx09_dly3449_event_frame_started_out <= xfft_rx09_dly3449_event_frame_started_out_0;
  xfft_rx09_dly3449_event_tlast_missing_out <= xfft_rx09_dly3449_event_tlast_missing_out_0;
  xfft_rx09_dly3449_event_tlast_unexpected_out <= xfft_rx09_dly3449_event_tlast_unexpected_out_0;
  xfft_rx24_dly3198_event_data_in_channel_halt_out <= xfft_rx24_dly3198_event_data_in_channel_halt_out_0;
  xfft_rx24_dly3198_event_tlast_missing_out <= xfft_rx24_dly3198_event_tlast_missing_out_0;
  xfft_rx24_dly3198_event_tlast_unexpected_out <= xfft_rx24_dly3198_event_tlast_unexpected_out_0;
  xfft_rx24_dly3449_event_frame_started_out <= xfft_rx24_dly3449_event_frame_started_out_0;
TRX_rx_FFT_calc: entity work.TRX_rx_FFT_calc_imp_3HC979
     port map (
      Dout(31 downto 0) => TRX_rx_FFT_calc_Dout(31 downto 0),
      cordic_rx09_m_tuser_out(12 downto 0) => cordic_rx09_m_tuser_out_0(12 downto 0),
      cordic_rx09_tvalid_out => cordic_rx09_tvalid_out_0,
      cordic_rx24_m_tuser_out(12 downto 0) => cordic_rx24_m_tuser_out_0(12 downto 0),
      cordic_rx24_tvalid_out => cordic_rx24_tvalid_out_0,
      fft09_aresetn_in => fft09_aresetn_in_0,
      fft09_config_tdata_in(7 downto 0) => fft09_config_tdata_in_0(7 downto 0),
      fft09_config_tvalid_in => fft09_config_tvalid_in_0,
      fft09_data_tlast_in => fft09_data_tlast_in_0,
      fft09_data_tready_out => fft09_data_tready_out_0,
      fft09_data_tvalid_in => fft09_data_tvalid_in_0,
      fft24_aresetn_in_0 => fft24_aresetn_in,
      fft24_config_tdata_in(7 downto 0) => fft24_config_tdata_in_0(7 downto 0),
      fft24_config_tvalid_in => fft24_config_tvalid_in_0,
      fft24_data_tlast_in => fft24_data_tlast_in_0,
      fft24_data_tready_out => fft24_data_tready_out_0,
      fft24_data_tvalid_in => fft24_data_tvalid_in_0,
      fft_s_data_rx09_im_in(12 downto 0) => fft_s_data_rx09_im_in_0(12 downto 0),
      fft_s_data_rx09_re_in(12 downto 0) => fft_s_data_rx09_re_in_0(12 downto 0),
      fft_s_data_rx24_im_in(12 downto 0) => fft_s_data_rx24_im_in_0(12 downto 0),
      fft_s_data_rx24_re_in(12 downto 0) => fft_s_data_rx24_re_in_0(12 downto 0),
      premem_rx09_quarterfrm_in(2 downto 0) => premem_rx09_quarterfrm_in_0(2 downto 0),
      premem_rx24_quarterfrm_in(2 downto 0) => premem_rx24_quarterfrm_in_0(2 downto 0),
      rst_mig_7series_0_100M_peripheral_reset_in => rst_mig_7series_0_100M_peripheral_reset_0,
      rx09_postmem_re_out(31 downto 0) => rx09_postmem_re_0(31 downto 0),
      s_axi_aclk_CD100_in => s_axi_aclk_CD100_0,
      xfft_rx09_dly3449_event_data_in_channel_halt_out => xfft_rx09_dly3449_event_data_in_channel_halt_out_0,
      xfft_rx09_dly3449_event_frame_started_out => xfft_rx09_dly3449_event_frame_started_out_0,
      xfft_rx09_dly3449_event_tlast_missing_out => xfft_rx09_dly3449_event_tlast_missing_out_0,
      xfft_rx09_dly3449_event_tlast_unexpected_out => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      xfft_rx24_dly3198_event_data_in_channel_halt_out => xfft_rx24_dly3198_event_data_in_channel_halt_out_0,
      xfft_rx24_dly3198_event_tlast_missing_out => xfft_rx24_dly3198_event_tlast_missing_out_0,
      xfft_rx24_dly3198_event_tlast_unexpected_out => xfft_rx24_dly3198_event_tlast_unexpected_out_0,
      xfft_rx24_dly3449_event_frame_started_out => xfft_rx24_dly3449_event_frame_started_out_0
    );
post_fft_rx09_blk_mem_gen_0: component msys_blk_mem_gen_0_2
     port map (
      addra(12 downto 0) => cordic_rx09_m_tuser_out_0(12 downto 0),
      addrb(12 downto 0) => postmem_rx_addrb_in_0(12 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(31 downto 0) => rx09_postmem_re_0(31 downto 0),
      doutb(31 downto 0) => postmem_rx09_doutb_out_0(31 downto 0),
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => cordic_rx09_tvalid_out_0
    );
post_fft_rx24_blk_mem_gen_0: component msys_post_fft_rx09_blk_mem_gen_0_0
     port map (
      addra(12 downto 0) => cordic_rx24_m_tuser_out_0(12 downto 0),
      addrb(12 downto 0) => postmem_rx_addrb_in_0(12 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(31 downto 0) => TRX_rx_FFT_calc_Dout(31 downto 0),
      doutb(31 downto 0) => postmem_rx24_doutb_out_0(31 downto 0),
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => cordic_rx24_tvalid_out_0
    );
pre_fft_rx09_blk_mem_gen_0: component msys_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => premem_rx09_addra_in_0(10 downto 0),
      addrb(10 downto 0) => premem_rx09_addrb_in_0(10 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(25 downto 0) => premem_rx09_dina_in_0(25 downto 0),
      doutb(25 downto 0) => pre_fft_rx09_blk_mem_gen_0_doutb(25 downto 0),
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => premem_rx09_wea_in_0(0)
    );
pre_fft_rx24_blk_mem_gen_0: component msys_pre_fft_rx09_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => premem_rx24_addra_in_0(10 downto 0),
      addrb(10 downto 0) => premem_rx24_addrb_in_0(10 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(25 downto 0) => premem_rx24_dina_in_0(25 downto 0),
      doutb(25 downto 0) => pre_fft_rx24_blk_mem_gen_0_doutb(25 downto 0),
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => premem_rx24_wea_in_0(0)
    );
premem_fft_rx09_xlslice_12to00: component msys_xlslice_1_0
     port map (
      Din(25 downto 0) => pre_fft_rx09_blk_mem_gen_0_doutb(25 downto 0),
      Dout(12 downto 0) => fft_s_data_rx09_re_in_0(12 downto 0)
    );
premem_fft_rx09_xlslice_25to13: component msys_xlslice_0_21
     port map (
      Din(25 downto 0) => pre_fft_rx09_blk_mem_gen_0_doutb(25 downto 0),
      Dout(12 downto 0) => fft_s_data_rx09_im_in_0(12 downto 0)
    );
premem_fft_rx24_xlslice_12to00: component msys_xlslice_0_23
     port map (
      Din(25 downto 0) => pre_fft_rx24_blk_mem_gen_0_doutb(25 downto 0),
      Dout(12 downto 0) => fft_s_data_rx24_re_in_0(12 downto 0)
    );
premem_fft_rx24_xlslice_25to13: component msys_xlslice_0_22
     port map (
      Din(25 downto 0) => pre_fft_rx24_blk_mem_gen_0_doutb(25 downto 0),
      Dout(12 downto 0) => fft_s_data_rx24_im_in_0(12 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_imp_W48V8V is
  port (
    AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_spi_io0_i : in STD_LOGIC;
    TRX_spi_io0_o : out STD_LOGIC;
    TRX_spi_io0_t : out STD_LOGIC;
    TRX_spi_io1_i : in STD_LOGIC;
    TRX_spi_io1_o : out STD_LOGIC;
    TRX_spi_io1_t : out STD_LOGIC;
    TRX_spi_sck_i : in STD_LOGIC;
    TRX_spi_sck_o : out STD_LOGIC;
    TRX_spi_sck_t : out STD_LOGIC;
    TRX_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_t : out STD_LOGIC;
    TRX_tx_PTT_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_div_out : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    fft09_aresetn_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft24_aresetn_in : in STD_LOGIC;
    fft24_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft24_config_tvalid_in : in STD_LOGIC;
    fft24_data_tlast_in : in STD_LOGIC;
    fft24_data_tready_out : out STD_LOGIC;
    fft24_data_tvalid_in : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    postmem_rx09_doutb_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    postmem_rx24_doutb_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    postmem_rx_addrb_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx24_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx24_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx24_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_data_count_CD100_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ref_clock : in STD_LOGIC;
    reset_CD100_i : in STD_LOGIC;
    rx09_32bits_CD100_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx24_32bits_CD100_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    xfft_rx09_dly3449_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_frame_started_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx24_dly3198_event_tlast_unexpected_out : out STD_LOGIC;
    xfft_rx24_dly3449_event_frame_started_out : out STD_LOGIC
  );
end TRX_imp_W48V8V;

architecture STRUCTURE of TRX_imp_W48V8V is
  component msys_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_proc_sys_reset_0_1;
  component msys_c_counter_binary_0_2 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component msys_c_counter_binary_0_2;
  component msys_util_vector_logic_0_4 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_vector_logic_0_4;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_IO0_I : STD_LOGIC;
  signal Conn2_IO0_O : STD_LOGIC;
  signal Conn2_IO0_T : STD_LOGIC;
  signal Conn2_IO1_I : STD_LOGIC;
  signal Conn2_IO1_O : STD_LOGIC;
  signal Conn2_IO1_T : STD_LOGIC;
  signal Conn2_SCK_I : STD_LOGIC;
  signal Conn2_SCK_O : STD_LOGIC;
  signal Conn2_SCK_T : STD_LOGIC;
  signal Conn2_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_SS_T : STD_LOGIC;
  signal Conn4_CLK_N : STD_LOGIC;
  signal Conn4_CLK_P : STD_LOGIC;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal TRX_clk_26MHz_1 : STD_LOGIC;
  signal TRX_clock_TRX_PLL_clk_25MHz_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_clock_TRX_PLL_clk_25MHz_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_config_TRX_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_config_TRX_rfx_mode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_proc_sys_reset_0_peripheral_reset_CD016 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx09_fifo_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx09_fifo_valid_o_0 : STD_LOGIC;
  signal TRX_rx24_fifo_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx24_fifo_valid_o_1 : STD_LOGIC;
  signal TRX_rx_FFT_unit_event_data_in_channel_halt_0 : STD_LOGIC;
  signal TRX_rx_FFT_unit_event_tlast_missing : STD_LOGIC;
  signal TRX_rx_LVDS_rd_data_count_CD100 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal TRX_rx_clk_64MHz_1_CLK_N : STD_LOGIC;
  signal TRX_rx_clk_64MHz_1_CLK_P : STD_LOGIC;
  signal TRX_rx_clkdiv_CD016 : STD_LOGIC;
  signal TRX_rx_data_n_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_data_p_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_selectio_wiz_0_data_out_to_pins_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_selectio_wiz_0_data_out_to_pins_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_tx_4to1_c_counter_binary_0_THRESH0_0 : STD_LOGIC;
  signal TRX_tx_PTT_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal counter_binary_0_THRESH0 : STD_LOGIC;
  signal fft09_aresetn_in_0 : STD_LOGIC;
  signal fft09_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft09_config_tvalid_in_0 : STD_LOGIC;
  signal fft09_data_tlast_in_0 : STD_LOGIC;
  signal fft09_data_tready_out_0 : STD_LOGIC;
  signal fft09_data_tvalid_in_0 : STD_LOGIC;
  signal fft24_aresetn_in_0 : STD_LOGIC;
  signal fft24_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft24_config_tvalid_in_0 : STD_LOGIC;
  signal fft24_data_tlast_in_0 : STD_LOGIC;
  signal fft24_data_tready_out_0 : STD_LOGIC;
  signal fft24_data_tvalid_in_0 : STD_LOGIC;
  signal io_reset_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_ui_addn_clk_0_200MHz : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal postmem_rx09_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx24_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx_addrb_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal premem_rx09_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx09_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx09_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal premem_rx24_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx24_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx24_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_aresetn_0 : STD_LOGIC;
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal NLW_TRX_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_TRX_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_counter_binary_0_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  AXI_LITE_arready(0) <= microblaze_0_axi_periph_M11_AXI_ARREADY(0);
  AXI_LITE_awready(0) <= microblaze_0_axi_periph_M11_AXI_AWREADY(0);
  AXI_LITE_bresp(1 downto 0) <= microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0);
  AXI_LITE_bvalid(0) <= microblaze_0_axi_periph_M11_AXI_BVALID(0);
  AXI_LITE_rdata(31 downto 0) <= microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0);
  AXI_LITE_rresp(1 downto 0) <= microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0);
  AXI_LITE_rvalid(0) <= microblaze_0_axi_periph_M11_AXI_RVALID(0);
  AXI_LITE_wready(0) <= microblaze_0_axi_periph_M11_AXI_WREADY(0);
  Conn1_ARADDR(31 downto 0) <= S_AXI1_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI1_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI1_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI1_awvalid(0);
  Conn1_BREADY(0) <= S_AXI1_bready(0);
  Conn1_RREADY(0) <= S_AXI1_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI1_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI1_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI1_wvalid(0);
  Conn2_IO0_I <= TRX_spi_io0_i;
  Conn2_IO1_I <= TRX_spi_io1_i;
  Conn2_SCK_I <= TRX_spi_sck_i;
  Conn2_SS_I(0) <= TRX_spi_ss_i(0);
  S_AXI1_arready(0) <= Conn1_ARREADY(0);
  S_AXI1_awready(0) <= Conn1_AWREADY(0);
  S_AXI1_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI1_bvalid(0) <= Conn1_BVALID(0);
  S_AXI1_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI1_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI1_rvalid(0) <= Conn1_RVALID(0);
  S_AXI1_wready(0) <= Conn1_WREADY(0);
  S_AXI_1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  S_AXI_1_ARVALID(0) <= S_AXI_arvalid(0);
  S_AXI_1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  S_AXI_1_AWVALID(0) <= S_AXI_awvalid(0);
  S_AXI_1_BREADY(0) <= S_AXI_bready(0);
  S_AXI_1_RREADY(0) <= S_AXI_rready(0);
  S_AXI_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_1_WVALID(0) <= S_AXI_wvalid(0);
  S_AXI_arready(0) <= S_AXI_1_ARREADY(0);
  S_AXI_awready(0) <= S_AXI_1_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= S_AXI_1_BVALID(0);
  S_AXI_rdata(31 downto 0) <= S_AXI_1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= S_AXI_1_RVALID(0);
  S_AXI_wready(0) <= S_AXI_1_WREADY(0);
  TRX_PLL_clk_25MHz_N(0) <= TRX_clock_TRX_PLL_clk_25MHz_N(0);
  TRX_PLL_clk_25MHz_P(0) <= TRX_clock_TRX_PLL_clk_25MHz_P(0);
  TRX_clk_26MHz_1 <= TRX_clk_26MHz;
  TRX_reset(0) <= TRX_config_TRX_reset(0);
  TRX_rfx_mode(0) <= TRX_config_TRX_rfx_mode(0);
  TRX_rx09_fifo_o(31 downto 0) <= TRX_rx09_fifo_o_1(31 downto 0);
  TRX_rx09_fifo_valid_o <= TRX_rx09_fifo_valid_o_0;
  TRX_rx24_fifo_o(31 downto 0) <= TRX_rx24_fifo_o_1(31 downto 0);
  TRX_rx24_fifo_valid_o <= TRX_rx24_fifo_valid_o_1;
  TRX_rx_clk_64MHz_1_CLK_N <= TRX_rx_clk_64MHz_clk_n;
  TRX_rx_clk_64MHz_1_CLK_P <= TRX_rx_clk_64MHz_clk_p;
  TRX_rx_data_n_1(1 downto 0) <= TRX_rx_data_n(1 downto 0);
  TRX_rx_data_p_1(1 downto 0) <= TRX_rx_data_p(1 downto 0);
  TRX_spi_io0_o <= Conn2_IO0_O;
  TRX_spi_io0_t <= Conn2_IO0_T;
  TRX_spi_io1_o <= Conn2_IO1_O;
  TRX_spi_io1_t <= Conn2_IO1_T;
  TRX_spi_sck_o <= Conn2_SCK_O;
  TRX_spi_sck_t <= Conn2_SCK_T;
  TRX_spi_ss_o(0) <= Conn2_SS_O(0);
  TRX_spi_ss_t <= Conn2_SS_T;
  TRX_tx_PTT_in_0(0) <= TRX_tx_PTT_in(0);
  TRX_tx_clk_clk_n <= Conn4_CLK_N;
  TRX_tx_clk_clk_p <= Conn4_CLK_P;
  TRX_tx_data_n(1 downto 0) <= TRX_rx_selectio_wiz_0_data_out_to_pins_n(1 downto 0);
  TRX_tx_data_p(1 downto 0) <= TRX_rx_selectio_wiz_0_data_out_to_pins_p(1 downto 0);
  clk_div_out <= TRX_rx_clkdiv_CD016;
  fft09_aresetn_in_0 <= fft09_aresetn_in;
  fft09_config_tdata_in_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  fft09_config_tvalid_in_0 <= fft09_config_tvalid_in;
  fft09_data_tlast_in_0 <= fft09_data_tlast_in;
  fft09_data_tready_out <= fft09_data_tready_out_0;
  fft09_data_tvalid_in_0 <= fft09_data_tvalid_in;
  fft24_aresetn_in_0 <= fft24_aresetn_in;
  fft24_config_tdata_in_0(7 downto 0) <= fft24_config_tdata_in(7 downto 0);
  fft24_config_tvalid_in_0 <= fft24_config_tvalid_in;
  fft24_data_tlast_in_0 <= fft24_data_tlast_in;
  fft24_data_tready_out <= fft24_data_tready_out_0;
  fft24_data_tvalid_in_0 <= fft24_data_tvalid_in;
  ip2intc_irpt <= TRX_axi_quad_spi_0_ip2intc_irpt;
  microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0) <= AXI_LITE_araddr(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_ARVALID(0) <= AXI_LITE_arvalid(0);
  microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0) <= AXI_LITE_awaddr(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_AWVALID(0) <= AXI_LITE_awvalid(0);
  microblaze_0_axi_periph_M11_AXI_BREADY(0) <= AXI_LITE_bready(0);
  microblaze_0_axi_periph_M11_AXI_RREADY(0) <= AXI_LITE_rready(0);
  microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0) <= AXI_LITE_wdata(31 downto 0);
  microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0) <= AXI_LITE_wstrb(3 downto 0);
  microblaze_0_axi_periph_M11_AXI_WVALID(0) <= AXI_LITE_wvalid(0);
  mig_7series_0_mmcm_locked <= dcm_locked;
  mig_7series_0_ui_addn_clk_0_200MHz <= ref_clock;
  mig_7series_0_ui_clk_sync_rst <= ext_reset_in;
  postmem_rx09_doutb_out(31 downto 0) <= postmem_rx09_doutb_out_0(31 downto 0);
  postmem_rx24_doutb_out(31 downto 0) <= postmem_rx24_doutb_out_0(31 downto 0);
  postmem_rx_addrb_in_0(12 downto 0) <= postmem_rx_addrb_in(12 downto 0);
  premem_rx09_addra_in_0(10 downto 0) <= premem_rx09_addra_in(10 downto 0);
  premem_rx09_addrb_in_0(10 downto 0) <= premem_rx09_addrb_in(10 downto 0);
  premem_rx09_dina_in_0(25 downto 0) <= premem_rx09_dina_in(25 downto 0);
  premem_rx09_quarterfrm_in_0(2 downto 0) <= premem_rx09_quarterfrm_in(2 downto 0);
  premem_rx09_wea_in_0(0) <= premem_rx09_wea_in(0);
  premem_rx24_addra_in_0(10 downto 0) <= premem_rx24_addra_in(10 downto 0);
  premem_rx24_addrb_in_0(10 downto 0) <= premem_rx24_addrb_in(10 downto 0);
  premem_rx24_dina_in_0(25 downto 0) <= premem_rx24_dina_in(25 downto 0);
  premem_rx24_quarterfrm_in_0(2 downto 0) <= premem_rx24_quarterfrm_in(2 downto 0);
  premem_rx24_wea_in_0(0) <= premem_rx24_wea_in(0);
  rd_data_count_CD100_o(8 downto 0) <= TRX_rx_LVDS_rd_data_count_CD100(8 downto 0);
  rst_mig_7series_0_100M_peripheral_aresetn_0 <= s_axi_aresetn;
  rst_mig_7series_0_100M_peripheral_reset_0 <= reset_CD100_i;
  s_axi_aclk_CD100_0 <= s_axi_aclk;
  xfft_rx09_dly3449_event_data_in_channel_halt_out <= TRX_rx_FFT_unit_event_data_in_channel_halt_0;
  xfft_rx09_dly3449_event_frame_started_out <= xfft_rx09_dly3449_event_frame_started_out_0;
  xfft_rx09_dly3449_event_tlast_missing_out <= xfft_rx09_dly3449_event_tlast_missing_out_0;
  xfft_rx09_dly3449_event_tlast_unexpected_out <= xfft_rx09_dly3449_event_tlast_unexpected_out_0;
  xfft_rx24_dly3198_event_data_in_channel_halt_out <= xfft_rx24_dly3198_event_data_in_channel_halt_out_0;
  xfft_rx24_dly3198_event_tlast_missing_out <= TRX_rx_FFT_unit_event_tlast_missing;
  xfft_rx24_dly3198_event_tlast_unexpected_out <= xfft_rx24_dly3198_event_tlast_unexpected_out_0;
  xfft_rx24_dly3449_event_frame_started_out <= xfft_rx24_dly3449_event_frame_started_out_0;
  rx09_32bits_CD100_o(0) <= 'Z';
  rx09_32bits_CD100_o(1) <= 'Z';
  rx09_32bits_CD100_o(2) <= 'Z';
  rx09_32bits_CD100_o(3) <= 'Z';
  rx09_32bits_CD100_o(4) <= 'Z';
  rx09_32bits_CD100_o(5) <= 'Z';
  rx09_32bits_CD100_o(6) <= 'Z';
  rx09_32bits_CD100_o(7) <= 'Z';
  rx09_32bits_CD100_o(8) <= 'Z';
  rx09_32bits_CD100_o(9) <= 'Z';
  rx09_32bits_CD100_o(10) <= 'Z';
  rx09_32bits_CD100_o(11) <= 'Z';
  rx09_32bits_CD100_o(12) <= 'Z';
  rx09_32bits_CD100_o(13) <= 'Z';
  rx09_32bits_CD100_o(14) <= 'Z';
  rx09_32bits_CD100_o(15) <= 'Z';
  rx09_32bits_CD100_o(16) <= 'Z';
  rx09_32bits_CD100_o(17) <= 'Z';
  rx09_32bits_CD100_o(18) <= 'Z';
  rx09_32bits_CD100_o(19) <= 'Z';
  rx09_32bits_CD100_o(20) <= 'Z';
  rx09_32bits_CD100_o(21) <= 'Z';
  rx09_32bits_CD100_o(22) <= 'Z';
  rx09_32bits_CD100_o(23) <= 'Z';
  rx09_32bits_CD100_o(24) <= 'Z';
  rx09_32bits_CD100_o(25) <= 'Z';
  rx09_32bits_CD100_o(26) <= 'Z';
  rx09_32bits_CD100_o(27) <= 'Z';
  rx09_32bits_CD100_o(28) <= 'Z';
  rx09_32bits_CD100_o(29) <= 'Z';
  rx09_32bits_CD100_o(30) <= 'Z';
  rx09_32bits_CD100_o(31) <= 'Z';
  rx24_32bits_CD100_o(0) <= 'Z';
  rx24_32bits_CD100_o(1) <= 'Z';
  rx24_32bits_CD100_o(2) <= 'Z';
  rx24_32bits_CD100_o(3) <= 'Z';
  rx24_32bits_CD100_o(4) <= 'Z';
  rx24_32bits_CD100_o(5) <= 'Z';
  rx24_32bits_CD100_o(6) <= 'Z';
  rx24_32bits_CD100_o(7) <= 'Z';
  rx24_32bits_CD100_o(8) <= 'Z';
  rx24_32bits_CD100_o(9) <= 'Z';
  rx24_32bits_CD100_o(10) <= 'Z';
  rx24_32bits_CD100_o(11) <= 'Z';
  rx24_32bits_CD100_o(12) <= 'Z';
  rx24_32bits_CD100_o(13) <= 'Z';
  rx24_32bits_CD100_o(14) <= 'Z';
  rx24_32bits_CD100_o(15) <= 'Z';
  rx24_32bits_CD100_o(16) <= 'Z';
  rx24_32bits_CD100_o(17) <= 'Z';
  rx24_32bits_CD100_o(18) <= 'Z';
  rx24_32bits_CD100_o(19) <= 'Z';
  rx24_32bits_CD100_o(20) <= 'Z';
  rx24_32bits_CD100_o(21) <= 'Z';
  rx24_32bits_CD100_o(22) <= 'Z';
  rx24_32bits_CD100_o(23) <= 'Z';
  rx24_32bits_CD100_o(24) <= 'Z';
  rx24_32bits_CD100_o(25) <= 'Z';
  rx24_32bits_CD100_o(26) <= 'Z';
  rx24_32bits_CD100_o(27) <= 'Z';
  rx24_32bits_CD100_o(28) <= 'Z';
  rx24_32bits_CD100_o(29) <= 'Z';
  rx24_32bits_CD100_o(30) <= 'Z';
  rx24_32bits_CD100_o(31) <= 'Z';
TRX_LVDS: entity work.TRX_LVDS_imp_1YILY8K
     port map (
      TRX_rx09_fifo_o(31 downto 0) => TRX_rx09_fifo_o_1(31 downto 0),
      TRX_rx09_fifo_valid_o => TRX_rx09_fifo_valid_o_0,
      TRX_rx24_fifo_o(31 downto 0) => TRX_rx24_fifo_o_1(31 downto 0),
      TRX_rx24_fifo_valid_o => TRX_rx24_fifo_valid_o_1,
      TRX_rx_clk_64MHz_clk_n => TRX_rx_clk_64MHz_1_CLK_N,
      TRX_rx_clk_64MHz_clk_p => TRX_rx_clk_64MHz_1_CLK_P,
      TRX_rx_data_n(1 downto 0) => TRX_rx_data_n_1(1 downto 0),
      TRX_rx_data_p(1 downto 0) => TRX_rx_data_p_1(1 downto 0),
      TRX_tx_4to1_c_counter_binary_0_THRESH0 => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      TRX_tx_PTT_in(0) => TRX_tx_PTT_in_0(0),
      TRX_tx_clk_clk_n => Conn4_CLK_N,
      TRX_tx_clk_clk_p => Conn4_CLK_P,
      TRX_tx_data_n(1 downto 0) => TRX_rx_selectio_wiz_0_data_out_to_pins_n(1 downto 0),
      TRX_tx_data_p(1 downto 0) => TRX_rx_selectio_wiz_0_data_out_to_pins_p(1 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_im_out_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_re_out_0(20 downto 8),
      clk_reset => rst_mig_7series_0_100M_peripheral_reset_0,
      clkdiv_CD016_o => TRX_rx_clkdiv_CD016,
      io_reset => io_reset_0(0),
      ref_clock => mig_7series_0_ui_addn_clk_0_200MHz,
      rst => TRX_proc_sys_reset_0_peripheral_reset_CD016(0),
      rx09_rd_data_count_CD100_o(8 downto 0) => TRX_rx_LVDS_rd_data_count_CD100(8 downto 0),
      s_axi_aclk => s_axi_aclk_CD100_0
    );
TRX_clock: entity work.TRX_clock_imp_19R9ARK
     port map (
      TRX_PLL_clk_25MHz_N(0) => TRX_clock_TRX_PLL_clk_25MHz_N(0),
      TRX_PLL_clk_25MHz_P(0) => TRX_clock_TRX_PLL_clk_25MHz_P(0),
      TRX_clk_26MHz => TRX_clk_26MHz_1
    );
TRX_config: entity work.TRX_config_imp_SLQI5S
     port map (
      AXI_LITE_araddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      AXI_LITE_arready(0) => microblaze_0_axi_periph_M11_AXI_ARREADY(0),
      AXI_LITE_arvalid(0) => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      AXI_LITE_awaddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      AXI_LITE_awready(0) => microblaze_0_axi_periph_M11_AXI_AWREADY(0),
      AXI_LITE_awvalid(0) => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      AXI_LITE_bready(0) => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      AXI_LITE_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      AXI_LITE_bvalid(0) => microblaze_0_axi_periph_M11_AXI_BVALID(0),
      AXI_LITE_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      AXI_LITE_rready(0) => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      AXI_LITE_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      AXI_LITE_rvalid(0) => microblaze_0_axi_periph_M11_AXI_RVALID(0),
      AXI_LITE_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      AXI_LITE_wready(0) => microblaze_0_axi_periph_M11_AXI_WREADY(0),
      AXI_LITE_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      AXI_LITE_wvalid(0) => microblaze_0_axi_periph_M11_AXI_WVALID(0),
      S_AXI_araddr(31 downto 0) => S_AXI_1_ARADDR(31 downto 0),
      S_AXI_arready(0) => S_AXI_1_ARREADY(0),
      S_AXI_arvalid(0) => S_AXI_1_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => S_AXI_1_AWADDR(31 downto 0),
      S_AXI_awready(0) => S_AXI_1_AWREADY(0),
      S_AXI_awvalid(0) => S_AXI_1_AWVALID(0),
      S_AXI_bready(0) => S_AXI_1_BREADY(0),
      S_AXI_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      S_AXI_bvalid(0) => S_AXI_1_BVALID(0),
      S_AXI_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      S_AXI_rready(0) => S_AXI_1_RREADY(0),
      S_AXI_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      S_AXI_rvalid(0) => S_AXI_1_RVALID(0),
      S_AXI_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      S_AXI_wready(0) => S_AXI_1_WREADY(0),
      S_AXI_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => S_AXI_1_WVALID(0),
      TRX_reset(0) => TRX_config_TRX_reset(0),
      TRX_rfx_mode(0) => TRX_config_TRX_rfx_mode(0),
      TRX_spi_io0_i => Conn2_IO0_I,
      TRX_spi_io0_o => Conn2_IO0_O,
      TRX_spi_io0_t => Conn2_IO0_T,
      TRX_spi_io1_i => Conn2_IO1_I,
      TRX_spi_io1_o => Conn2_IO1_O,
      TRX_spi_io1_t => Conn2_IO1_T,
      TRX_spi_sck_i => Conn2_SCK_I,
      TRX_spi_sck_o => Conn2_SCK_O,
      TRX_spi_sck_t => Conn2_SCK_T,
      TRX_spi_ss_i(0) => Conn2_SS_I(0),
      TRX_spi_ss_o(0) => Conn2_SS_O(0),
      TRX_spi_ss_t => Conn2_SS_T,
      ip2intc_irpt => TRX_axi_quad_spi_0_ip2intc_irpt,
      s_axi_aclk => s_axi_aclk_CD100_0,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn_0
    );
TRX_proc_sys_reset_0: component msys_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_TRX_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_TRX_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_TRX_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => TRX_proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => TRX_proc_sys_reset_0_peripheral_reset_CD016(0),
      slowest_sync_clk => TRX_rx_clkdiv_CD016
    );
TRX_rx_FFT_unit: entity work.TRX_rx_FFT_unit_imp_1NLKML1
     port map (
      aresetn_CD100_in => rst_mig_7series_0_100M_peripheral_aresetn_0,
      fft09_aresetn_in => fft09_aresetn_in_0,
      fft09_config_tdata_in(7 downto 0) => fft09_config_tdata_in_0(7 downto 0),
      fft09_config_tvalid_in => fft09_config_tvalid_in_0,
      fft09_data_tlast_in => fft09_data_tlast_in_0,
      fft09_data_tready_out => fft09_data_tready_out_0,
      fft09_data_tvalid_in => fft09_data_tvalid_in_0,
      fft24_aresetn_in => fft24_aresetn_in_0,
      fft24_config_tdata_in(7 downto 0) => fft24_config_tdata_in_0(7 downto 0),
      fft24_config_tvalid_in => fft24_config_tvalid_in_0,
      fft24_data_tlast_in => fft24_data_tlast_in_0,
      fft24_data_tready_out => fft24_data_tready_out_0,
      fft24_data_tvalid_in => fft24_data_tvalid_in_0,
      postmem_rx09_doutb_out(31 downto 0) => postmem_rx09_doutb_out_0(31 downto 0),
      postmem_rx24_doutb_out(31 downto 0) => postmem_rx24_doutb_out_0(31 downto 0),
      postmem_rx_addrb_in(12 downto 0) => postmem_rx_addrb_in_0(12 downto 0),
      premem_rx09_addra_in(10 downto 0) => premem_rx09_addra_in_0(10 downto 0),
      premem_rx09_addrb_in(10 downto 0) => premem_rx09_addrb_in_0(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => premem_rx09_dina_in_0(25 downto 0),
      premem_rx09_quarterfrm_in(2 downto 0) => premem_rx09_quarterfrm_in_0(2 downto 0),
      premem_rx09_wea_in(0) => premem_rx09_wea_in_0(0),
      premem_rx24_addra_in(10 downto 0) => premem_rx24_addra_in_0(10 downto 0),
      premem_rx24_addrb_in(10 downto 0) => premem_rx24_addrb_in_0(10 downto 0),
      premem_rx24_dina_in(25 downto 0) => premem_rx24_dina_in_0(25 downto 0),
      premem_rx24_quarterfrm_in(2 downto 0) => premem_rx24_quarterfrm_in_0(2 downto 0),
      premem_rx24_wea_in(0) => premem_rx24_wea_in_0(0),
      rst_mig_7series_0_100M_peripheral_reset_in => rst_mig_7series_0_100M_peripheral_reset_0,
      s_axi_aclk_CD100_in => s_axi_aclk_CD100_0,
      xfft_rx09_dly3449_event_data_in_channel_halt_out => TRX_rx_FFT_unit_event_data_in_channel_halt_0,
      xfft_rx09_dly3449_event_frame_started_out => xfft_rx09_dly3449_event_frame_started_out_0,
      xfft_rx09_dly3449_event_tlast_missing_out => xfft_rx09_dly3449_event_tlast_missing_out_0,
      xfft_rx09_dly3449_event_tlast_unexpected_out => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      xfft_rx24_dly3198_event_data_in_channel_halt_out => xfft_rx24_dly3198_event_data_in_channel_halt_out_0,
      xfft_rx24_dly3198_event_tlast_missing_out => TRX_rx_FFT_unit_event_tlast_missing,
      xfft_rx24_dly3198_event_tlast_unexpected_out => xfft_rx24_dly3198_event_tlast_unexpected_out_0,
      xfft_rx24_dly3449_event_frame_started_out => xfft_rx24_dly3449_event_frame_started_out_0
    );
TRX_tx_DDS_unit: entity work.TRX_tx_DDS_unit_imp_195K6TC
     port map (
      SCLR => TRX_proc_sys_reset_0_peripheral_reset_CD016(0),
      S_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      S_AXI_arready(0) => Conn1_ARREADY(0),
      S_AXI_arvalid(0) => Conn1_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      S_AXI_awready(0) => Conn1_AWREADY(0),
      S_AXI_awvalid(0) => Conn1_AWVALID(0),
      S_AXI_bready(0) => Conn1_BREADY(0),
      S_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      S_AXI_bvalid(0) => Conn1_BVALID(0),
      S_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      S_AXI_rready(0) => Conn1_RREADY(0),
      S_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      S_AXI_rvalid(0) => Conn1_RVALID(0),
      S_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      S_AXI_wready(0) => Conn1_WREADY(0),
      S_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => Conn1_WVALID(0),
      TRX_tx_4to1_c_counter_binary_0_THRESH0 => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      TRX_tx_im_out(20 downto 8) => TRX_tx_im_out_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_re_out_0(20 downto 8),
      aresetn => TRX_proc_sys_reset_0_peripheral_aresetn(0),
      clk_div_out => TRX_rx_clkdiv_CD016,
      s_axi_aclk => s_axi_aclk_CD100_0,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn_0
    );
counter_binary_0: component msys_c_counter_binary_0_2
     port map (
      CE => io_reset_0(0),
      CLK => TRX_rx_clkdiv_CD016,
      Q(6 downto 0) => NLW_counter_binary_0_Q_UNCONNECTED(6 downto 0),
      SCLR => TRX_proc_sys_reset_0_peripheral_reset_CD016(0),
      THRESH0 => counter_binary_0_THRESH0
    );
util_vector_logic_0: component msys_util_vector_logic_0_4
     port map (
      Op1(0) => counter_binary_0_THRESH0,
      Res(0) => io_reset_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys is
  port (
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC;
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_SDRAM_cas_n : out STD_LOGIC;
    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ras_n : out STD_LOGIC;
    DDR3_SDRAM_reset_n : out STD_LOGIC;
    DDR3_SDRAM_we_n : out STD_LOGIC;
    DDR3_init_calib_complete : out STD_LOGIC;
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED_g : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    FPGA_IO : in STD_LOGIC;
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
    PLL_int : in STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_int : in STD_LOGIC;
    TRX_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_spi_io0_i : in STD_LOGIC;
    TRX_spi_io0_o : out STD_LOGIC;
    TRX_spi_io0_t : out STD_LOGIC;
    TRX_spi_io1_i : in STD_LOGIC;
    TRX_spi_io1_o : out STD_LOGIC;
    TRX_spi_io1_t : out STD_LOGIC;
    TRX_spi_sck_i : in STD_LOGIC;
    TRX_spi_sck_o : out STD_LOGIC;
    TRX_spi_sck_t : out STD_LOGIC;
    TRX_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_t : out STD_LOGIC;
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DTRn : in STD_LOGIC;
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RTSn : in STD_LOGIC;
    UART0_clk : out STD_LOGIC;
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    ULI_SYSTEM_XIO : in STD_LOGIC;
    fft09_aresetn_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft24_aresetn_in : in STD_LOGIC;
    fft24_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft24_config_tvalid_in : in STD_LOGIC;
    fft24_data_tlast_in : in STD_LOGIC;
    fft24_data_tready_out : out STD_LOGIC;
    fft24_data_tvalid_in : in STD_LOGIC;
    microblaze_0_Clk_100MHz_o : out STD_LOGIC;
    onewire_EUI48_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    onewire_EUI48_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    onewire_EUI48_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rst_n : out STD_LOGIC;
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx24_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx24_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx24_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_flash_io0_i : in STD_LOGIC;
    qspi_flash_io0_o : out STD_LOGIC;
    qspi_flash_io0_t : out STD_LOGIC;
    qspi_flash_io1_i : in STD_LOGIC;
    qspi_flash_io1_o : out STD_LOGIC;
    qspi_flash_io1_t : out STD_LOGIC;
    qspi_flash_io2_i : in STD_LOGIC;
    qspi_flash_io2_o : out STD_LOGIC;
    qspi_flash_io2_t : out STD_LOGIC;
    qspi_flash_io3_i : in STD_LOGIC;
    qspi_flash_io3_o : out STD_LOGIC;
    qspi_flash_io3_t : out STD_LOGIC;
    qspi_flash_ss_i : in STD_LOGIC;
    qspi_flash_ss_o : out STD_LOGIC;
    qspi_flash_ss_t : out STD_LOGIC;
    reset : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rotenc_decoder_resetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of msys : entity is "msys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=msys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=201,numReposBlks=162,numNonXlnxBlks=3,numHierBlks=39,maxHierDepth=4,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of msys : entity is "msys.hwdef";
end msys;

architecture STRUCTURE of msys is
  component msys_SC0712_0_0 is
  port (
    mcs_clk_out : out STD_LOGIC;
    mcs_clk_in : in STD_LOGIC;
    reset_out : out STD_LOGIC;
    GPIO1_O : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_sda : inout STD_LOGIC;
    ext_scl_o : out STD_LOGIC;
    mon_GPIO1_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mon_GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sda_i : out STD_LOGIC;
    sda_o : in STD_LOGIC;
    sda_t : in STD_LOGIC;
    scl_i : out STD_LOGIC;
    scl_o : in STD_LOGIC;
    scl_t : in STD_LOGIC
  );
  end component msys_SC0712_0_0;
  component msys_labtools_fmeter_0_0 is
  port (
    refclk : in STD_LOGIC;
    fin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    F0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    update : out STD_LOGIC
  );
  end component msys_labtools_fmeter_0_0;
  component msys_mig_7series_0_0 is
  port (
    sys_rst : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_addn_clk_0 : out STD_LOGIC;
    ui_addn_clk_1 : out STD_LOGIC;
    ui_addn_clk_2 : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component msys_mig_7series_0_0;
  component msys_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_proc_sys_reset_0_0;
  component msys_rst_mig_7series_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_rst_mig_7series_0_100M_0;
  component msys_rst_mig_7series_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_rst_mig_7series_0_50M_0;
  component msys_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in11 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_in12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in25 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_in26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in28 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_in29 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_in30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component msys_vio_0_0;
  component msys_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component msys_xlconcat_0_0;
  component msys_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_axi_iic_0_0;
  component msys_axi_iic_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_axi_iic_1_0;
  component msys_axi_pwm_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_axi_pwm_gpio_0_1;
  component msys_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component msys_axi_quad_spi_0_0;
  component msys_axi_timer_0_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component msys_axi_timer_0_0;
  component msys_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component msys_clk_wiz_0_0;
  component msys_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component msys_mdm_1_0;
  component msys_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component msys_microblaze_0_0;
  component msys_microblaze_mcs_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component msys_microblaze_mcs_0_0;
  component msys_util_ds_buf_0_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_ds_buf_0_0;
  component msys_util_ds_buf_1_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_ds_buf_1_0;
  component msys_util_ds_buf_2_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_ds_buf_2_0;
  component msys_util_ds_buf_3_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_util_ds_buf_3_0;
  component msys_xlconstant_0_18 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_xlconstant_0_18;
  component msys_CLK0_util_ds_buf_0_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_CLK0_util_ds_buf_0_0;
  signal ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal BOARD_ROTENC_PUSH_1 : STD_LOGIC;
  signal CLK0_NA_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK0_NA_diff_0_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK0_NA_diff_0_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK0_NA_g_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK1B_50MHz_phy_clk_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK1B_50MHz_phy_clk_g_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK2_125MHz_mgt_diff_0_CLK_N : STD_LOGIC;
  signal CLK2_125MHz_mgt_diff_0_CLK_P : STD_LOGIC;
  signal CLK2_125MHz_mgt_g_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK3_50MHz_mig_diff_0_CLK_N : STD_LOGIC;
  signal CLK3_50MHz_mig_diff_0_CLK_P : STD_LOGIC;
  signal ETH0_ETH0_MDIO_MDC_MDC : STD_LOGIC;
  signal ETH0_ETH0_MDIO_MDC_MDIO_I : STD_LOGIC;
  signal ETH0_ETH0_MDIO_MDC_MDIO_O : STD_LOGIC;
  signal ETH0_ETH0_MDIO_MDC_MDIO_T : STD_LOGIC;
  signal ETH0_LINK_LED_g_0 : STD_LOGIC;
  signal ETH0_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_RMII_PHY_M_0_CRS_DV : STD_LOGIC;
  signal ETH0_RMII_PHY_M_0_RXD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ETH0_RMII_PHY_M_0_TXD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ETH0_RMII_PHY_M_0_TX_EN : STD_LOGIC;
  signal ETH0_ip2intc_irpt : STD_LOGIC;
  signal ETH0_m_mii_tx_er : STD_LOGIC;
  signal ETH0_m_mii_txd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_phy_rst_n : STD_LOGIC;
  signal ETH0_s_mii_col : STD_LOGIC;
  signal ETH0_s_mii_crs : STD_LOGIC;
  signal ETH0_s_mii_rx_clk : STD_LOGIC;
  signal ETH0_s_mii_rx_er : STD_LOGIC;
  signal ETH0_s_mii_rxd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ETH0_s_mii_tx_clk : STD_LOGIC;
  signal FPGA_IO_1 : STD_LOGIC;
  signal INT_ctrl_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal INT_ctrl_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal INT_ctrl_interrupt_INTERRUPT : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal PLL_int_1 : STD_LOGIC;
  signal PTT_xlconstant_1_len10_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_LCD_BL : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_LCD_rstn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_LED_RGB_blue : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_LED_RGB_green : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_LED_RGB_red : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PWM_lights_ip2intc_irpt : STD_LOGIC;
  signal ROTENC_decoder_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ROTENC_decoder_ip2intc_irpt : STD_LOGIC;
  signal SC0712_0_ext_scl_o : STD_LOGIC;
  signal SC0712_0_mcs_clk_out : STD_LOGIC;
  signal SC0712_0_mon_GPIO1_I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SC0712_0_mon_GPIO1_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SC0712_0_reset_out : STD_LOGIC;
  signal TRX_TRX_PLL_clk_25MHz_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_PLL_clk_25MHz_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_rfx_mode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_spi_IO0_I : STD_LOGIC;
  signal TRX_TRX_spi_IO0_O : STD_LOGIC;
  signal TRX_TRX_spi_IO0_T : STD_LOGIC;
  signal TRX_TRX_spi_IO1_I : STD_LOGIC;
  signal TRX_TRX_spi_IO1_O : STD_LOGIC;
  signal TRX_TRX_spi_IO1_T : STD_LOGIC;
  signal TRX_TRX_spi_SCK_I : STD_LOGIC;
  signal TRX_TRX_spi_SCK_O : STD_LOGIC;
  signal TRX_TRX_spi_SCK_T : STD_LOGIC;
  signal TRX_TRX_spi_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_spi_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_TRX_spi_SS_T : STD_LOGIC;
  signal TRX_TRX_tx_clk_CLK_N : STD_LOGIC;
  signal TRX_TRX_tx_clk_CLK_P : STD_LOGIC;
  signal TRX_TRX_tx_data_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_TRX_tx_data_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_clk_26MHz_1 : STD_LOGIC;
  signal TRX_int_1 : STD_LOGIC;
  signal TRX_ip2intc_irpt : STD_LOGIC;
  signal TRX_rd_data_count_CD100 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal TRX_rx09_32bits_CD100 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx09_fifo_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx09_fifo_valid_o_1 : STD_LOGIC;
  signal TRX_rx24_32bits_CD100 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx24_fifo_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx24_fifo_valid_o_1 : STD_LOGIC;
  signal TRX_rx_clk_64MHz_1_CLK_N : STD_LOGIC;
  signal TRX_rx_clk_64MHz_1_CLK_P : STD_LOGIC;
  signal TRX_rx_data_n_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_data_p_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_div_clk_g_0 : STD_LOGIC;
  signal UART0EXT_DTRn_1 : STD_LOGIC;
  signal UART0EXT_RTSn_1 : STD_LOGIC;
  signal UART0_UART0EXT_CTSn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_UART0EXT_DCDn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_UART0EXT_DSRn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_UART0EXT_RIn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_UART0_RxD : STD_LOGIC;
  signal UART0_UART0_TxD : STD_LOGIC;
  signal UART0_UART0_rst_n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UART0_clk_wiz_0_clk_out1 : STD_LOGIC;
  signal UART0_interrupt : STD_LOGIC;
  signal UART0_ip2intc_irpt : STD_LOGIC;
  signal ULI_SYSTEM_XIO_1 : STD_LOGIC;
  signal axi_BOARD_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_ethernetlite_0_phy_tx_en : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_iic_1_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_1_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_1_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_1_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_1_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_1_IIC_SDA_T : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_onewire_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_onewire_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_onewire_gpio_0_GPIO_TRI_T : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_0_cfgmclk : STD_LOGIC;
  signal axi_quad_spi_0_eos : STD_LOGIC;
  signal axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal axi_timer_0_interrupt : STD_LOGIC;
  signal cfgmclk_util_ds_buf_0_BUFG_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fft09_aresetn_in_0 : STD_LOGIC;
  signal fft09_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft09_config_tvalid_in_0 : STD_LOGIC;
  signal fft09_data_tlast_in_0 : STD_LOGIC;
  signal fft09_data_tready_out_0 : STD_LOGIC;
  signal fft09_data_tvalid_in_0 : STD_LOGIC;
  signal fft24_aresetn_in_0 : STD_LOGIC;
  signal fft24_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft24_config_tvalid_in_0 : STD_LOGIC;
  signal fft24_data_tlast_in_0 : STD_LOGIC;
  signal fft24_data_tready_out_0 : STD_LOGIC;
  signal fft24_data_tvalid_in_0 : STD_LOGIC;
  signal labtools_fmeter_0_F5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal labtools_fmeter_0_F6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal labtools_fmeter_0_update : STD_LOGIC;
  signal lt_F0_MIG_50mhz : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lt_F1_mgt_ref : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lt_F2_CLK1B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lt_F3_CLK0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lt_F4_TRX_LVDS_divclk : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_Clk_100MHz : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal microblaze_mcs_0_GPIO1_TRI_I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_GPIO1_TRI_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mig_7series_0_DDR3_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mig_7series_0_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mig_7series_0_DDR3_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mig_7series_0_DDR3_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mig_7series_0_DDR3_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mig_7series_0_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_init_calib_complete : STD_LOGIC;
  signal mig_7series_0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_ui_addn_clk_0_200MHz : STD_LOGIC;
  signal mig_7series_0_ui_addn_clk_1_100MHz : STD_LOGIC;
  signal mig_7series_0_ui_addn_clk_2_50MHz : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal mii_y_adapater_0_s_mii_rx_dv : STD_LOGIC;
  signal postmem_rx09_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx24_doutb_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal postmem_rx_addrb_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal premem_rx09_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx09_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx09_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx09_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal premem_rx24_addra_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_addrb_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal premem_rx24_dina_in_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal premem_rx24_quarterfrm_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal premem_rx24_wea_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_mb_reset : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal rotenc_dec_cnt_en_1 : STD_LOGIC;
  signal rotenc_dec_cnt_up_dwn_1 : STD_LOGIC;
  signal rst_mig_7series_0_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_mb_reset : STD_LOGIC;
  signal rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xfft_rx09_dly3449_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3198_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal xfft_rx24_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_ROTENC_decoder_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_UART0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_BOARD_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_quad_spi_0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_pwm0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_1_Debug_SYS_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_mgt_clk0_CLK2_util_ds_buf_1_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > msys microblaze_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BOARD_IIC_scl_i : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SCL_I";
  attribute X_INTERFACE_INFO of BOARD_IIC_scl_o : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SCL_O";
  attribute X_INTERFACE_INFO of BOARD_IIC_scl_t : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SCL_T";
  attribute X_INTERFACE_INFO of BOARD_IIC_sda_i : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SDA_I";
  attribute X_INTERFACE_INFO of BOARD_IIC_sda_o : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SDA_O";
  attribute X_INTERFACE_INFO of BOARD_IIC_sda_t : signal is "xilinx.com:interface:iic:1.0 BOARD_IIC SDA_T";
  attribute X_INTERFACE_INFO of CLK2_mgt_clk0_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 CLK2_mgt_clk0 CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK2_mgt_clk0_clk_n : signal is "XIL_INTERFACENAME CLK2_mgt_clk0, CAN_DEBUG false, FREQ_HZ 125000000";
  attribute X_INTERFACE_INFO of CLK2_mgt_clk0_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 CLK2_mgt_clk0 CLK_P";
  attribute X_INTERFACE_INFO of CLK3_sys_diff_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 CLK3_sys_diff CLK_N";
  attribute X_INTERFACE_PARAMETER of CLK3_sys_diff_clk_n : signal is "XIL_INTERFACENAME CLK3_sys_diff, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of CLK3_sys_diff_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 CLK3_sys_diff CLK_P";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CAS_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM RAS_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM RESET_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM WE_N";
  attribute X_INTERFACE_INFO of ETH0_MDIO_MDC_mdc : signal is "xilinx.com:interface:mdio:1.0 ETH0_MDIO_MDC MDC";
  attribute X_INTERFACE_PARAMETER of ETH0_MDIO_MDC_mdc : signal is "XIL_INTERFACENAME ETH0_MDIO_MDC, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of ETH0_MDIO_MDC_mdio_i : signal is "xilinx.com:interface:mdio:1.0 ETH0_MDIO_MDC MDIO_I";
  attribute X_INTERFACE_INFO of ETH0_MDIO_MDC_mdio_o : signal is "xilinx.com:interface:mdio:1.0 ETH0_MDIO_MDC MDIO_O";
  attribute X_INTERFACE_INFO of ETH0_MDIO_MDC_mdio_t : signal is "xilinx.com:interface:mdio:1.0 ETH0_MDIO_MDC MDIO_T";
  attribute X_INTERFACE_INFO of PLL_int : signal is "xilinx.com:signal:interrupt:1.0 INTR.PLL_INT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of PLL_int : signal is "XIL_INTERFACENAME INTR.PLL_INT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of RMII_PHY_M_0_crs_dv : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M_0 CRS_DV";
  attribute X_INTERFACE_INFO of RMII_PHY_M_0_tx_en : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M_0 TX_EN";
  attribute X_INTERFACE_INFO of TRX_clk_26MHz : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_CLK_26MHZ CLK";
  attribute X_INTERFACE_PARAMETER of TRX_clk_26MHz : signal is "XIL_INTERFACENAME CLK.TRX_CLK_26MHZ, CLK_DOMAIN msys_TRX_clk_26MHz, FREQ_HZ 26000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of TRX_int : signal is "xilinx.com:signal:interrupt:1.0 INTR.TRX_INT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of TRX_int : signal is "XIL_INTERFACENAME INTR.TRX_INT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of TRX_rx_clk_64MHz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 TRX_rx_clk_64MHz CLK_N";
  attribute X_INTERFACE_PARAMETER of TRX_rx_clk_64MHz_clk_n : signal is "XIL_INTERFACENAME TRX_rx_clk_64MHz, CAN_DEBUG false, FREQ_HZ 64000000";
  attribute X_INTERFACE_INFO of TRX_rx_clk_64MHz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 TRX_rx_clk_64MHz CLK_P";
  attribute X_INTERFACE_INFO of TRX_spi_io0_i : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO0_I";
  attribute X_INTERFACE_INFO of TRX_spi_io0_o : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO0_O";
  attribute X_INTERFACE_INFO of TRX_spi_io0_t : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO0_T";
  attribute X_INTERFACE_INFO of TRX_spi_io1_i : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO1_I";
  attribute X_INTERFACE_INFO of TRX_spi_io1_o : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO1_O";
  attribute X_INTERFACE_INFO of TRX_spi_io1_t : signal is "xilinx.com:interface:spi:1.0 TRX_spi IO1_T";
  attribute X_INTERFACE_INFO of TRX_spi_sck_i : signal is "xilinx.com:interface:spi:1.0 TRX_spi SCK_I";
  attribute X_INTERFACE_INFO of TRX_spi_sck_o : signal is "xilinx.com:interface:spi:1.0 TRX_spi SCK_O";
  attribute X_INTERFACE_INFO of TRX_spi_sck_t : signal is "xilinx.com:interface:spi:1.0 TRX_spi SCK_T";
  attribute X_INTERFACE_INFO of TRX_spi_ss_t : signal is "xilinx.com:interface:spi:1.0 TRX_spi SS_T";
  attribute X_INTERFACE_INFO of TRX_tx_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 TRX_tx_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of TRX_tx_clk_clk_n : signal is "XIL_INTERFACENAME TRX_tx_clk, CAN_DEBUG false, FREQ_HZ 64000000";
  attribute X_INTERFACE_INFO of TRX_tx_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 TRX_tx_clk CLK_P";
  attribute X_INTERFACE_INFO of UART0_clk : signal is "xilinx.com:signal:clock:1.0 CLK.UART0_CLK CLK";
  attribute X_INTERFACE_PARAMETER of UART0_clk : signal is "XIL_INTERFACENAME CLK.UART0_CLK, CLK_DOMAIN /BOARD_clk_wiz_0_clk_out1, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of UART0_rxd : signal is "xilinx.com:interface:uart:1.0 UART0 RxD";
  attribute X_INTERFACE_INFO of UART0_txd : signal is "xilinx.com:interface:uart:1.0 UART0 TxD";
  attribute X_INTERFACE_INFO of fft09_aresetn_in : signal is "xilinx.com:signal:reset:1.0 RST.FFT09_ARESETN_IN RST";
  attribute X_INTERFACE_PARAMETER of fft09_aresetn_in : signal is "XIL_INTERFACENAME RST.FFT09_ARESETN_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of fft24_aresetn_in : signal is "xilinx.com:signal:reset:1.0 RST.FFT24_ARESETN_IN RST";
  attribute X_INTERFACE_PARAMETER of fft24_aresetn_in : signal is "XIL_INTERFACENAME RST.FFT24_ARESETN_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of microblaze_0_Clk_100MHz_o : signal is "xilinx.com:signal:clock:1.0 CLK.MICROBLAZE_0_CLK_100MHZ_O CLK";
  attribute X_INTERFACE_PARAMETER of microblaze_0_Clk_100MHz_o : signal is "XIL_INTERFACENAME CLK.MICROBLAZE_0_CLK_100MHZ_O, ASSOCIATED_RESET fft09_aresetn_in:fft24_aresetn_in, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of qspi_flash_io0_i : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO0_I";
  attribute X_INTERFACE_INFO of qspi_flash_io0_o : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO0_O";
  attribute X_INTERFACE_INFO of qspi_flash_io0_t : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO0_T";
  attribute X_INTERFACE_INFO of qspi_flash_io1_i : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO1_I";
  attribute X_INTERFACE_INFO of qspi_flash_io1_o : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO1_O";
  attribute X_INTERFACE_INFO of qspi_flash_io1_t : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO1_T";
  attribute X_INTERFACE_INFO of qspi_flash_io2_i : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO2_I";
  attribute X_INTERFACE_INFO of qspi_flash_io2_o : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO2_O";
  attribute X_INTERFACE_INFO of qspi_flash_io2_t : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO2_T";
  attribute X_INTERFACE_INFO of qspi_flash_io3_i : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO3_I";
  attribute X_INTERFACE_INFO of qspi_flash_io3_o : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO3_O";
  attribute X_INTERFACE_INFO of qspi_flash_io3_t : signal is "xilinx.com:interface:spi:1.0 qspi_flash IO3_T";
  attribute X_INTERFACE_INFO of qspi_flash_ss_i : signal is "xilinx.com:interface:spi:1.0 qspi_flash SS_I";
  attribute X_INTERFACE_INFO of qspi_flash_ss_o : signal is "xilinx.com:interface:spi:1.0 qspi_flash SS_O";
  attribute X_INTERFACE_INFO of qspi_flash_ss_t : signal is "xilinx.com:interface:spi:1.0 qspi_flash SS_T";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK0_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 CLK0 CLK_N";
  attribute X_INTERFACE_PARAMETER of CLK0_clk_n : signal is "XIL_INTERFACENAME CLK0, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of CLK0_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 CLK0 CLK_P";
  attribute X_INTERFACE_INFO of CLK1B_clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK1B_CLK CLK";
  attribute X_INTERFACE_PARAMETER of CLK1B_clk : signal is "XIL_INTERFACENAME CLK.CLK1B_CLK, CLK_DOMAIN msys_CLK1B_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM ADDR";
  attribute X_INTERFACE_PARAMETER of DDR3_SDRAM_addr : signal is "XIL_INTERFACENAME DDR3_SDRAM, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM BA";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CK_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CK_P";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CKE";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CS_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DM";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQ";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQS_N";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQS_P";
  attribute X_INTERFACE_INFO of DDR3_SDRAM_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM ODT";
  attribute X_INTERFACE_INFO of LCD_rstn : signal is "xilinx.com:signal:reset:1.0 RST.LCD_RSTN RST";
  attribute X_INTERFACE_PARAMETER of LCD_rstn : signal is "XIL_INTERFACENAME RST.LCD_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of RMII_PHY_M_0_rxd : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M_0 RXD";
  attribute X_INTERFACE_INFO of RMII_PHY_M_0_txd : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M_0 TXD";
  attribute X_INTERFACE_INFO of TRX_PLL_clk_25MHz_N : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_PLL_CLK_25MHZ_N CLK";
  attribute X_INTERFACE_PARAMETER of TRX_PLL_clk_25MHz_N : signal is "XIL_INTERFACENAME CLK.TRX_PLL_CLK_25MHZ_N, CLK_DOMAIN /TRX/TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_PLL_clk_25MHz_P : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_PLL_CLK_25MHZ_P CLK";
  attribute X_INTERFACE_PARAMETER of TRX_PLL_clk_25MHz_P : signal is "XIL_INTERFACENAME CLK.TRX_PLL_CLK_25MHZ_P, CLK_DOMAIN /TRX/TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_reset : signal is "xilinx.com:signal:reset:1.0 RST.TRX_RESET RST";
  attribute X_INTERFACE_PARAMETER of TRX_reset : signal is "XIL_INTERFACENAME RST.TRX_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of TRX_spi_ss_i : signal is "xilinx.com:interface:spi:1.0 TRX_spi SS_I";
  attribute X_INTERFACE_INFO of TRX_spi_ss_o : signal is "xilinx.com:interface:spi:1.0 TRX_spi SS_O";
  attribute X_INTERFACE_INFO of UART0_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.UART0_RST_N RST";
  attribute X_INTERFACE_PARAMETER of UART0_rst_n : signal is "XIL_INTERFACENAME RST.UART0_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of onewire_EUI48_tri_i : signal is "xilinx.com:interface:gpio:1.0 onewire_EUI48 TRI_I";
  attribute X_INTERFACE_INFO of onewire_EUI48_tri_o : signal is "xilinx.com:interface:gpio:1.0 onewire_EUI48 TRI_O";
  attribute X_INTERFACE_INFO of onewire_EUI48_tri_t : signal is "xilinx.com:interface:gpio:1.0 onewire_EUI48 TRI_T";
  attribute X_INTERFACE_INFO of premem_rx09_quarterfrm_in : signal is "xilinx.com:signal:data:1.0 DATA.PREMEM_RX09_QUARTERFRM_IN DATA";
  attribute X_INTERFACE_PARAMETER of premem_rx09_quarterfrm_in : signal is "XIL_INTERFACENAME DATA.PREMEM_RX09_QUARTERFRM_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of premem_rx24_quarterfrm_in : signal is "xilinx.com:signal:data:1.0 DATA.PREMEM_RX24_QUARTERFRM_IN DATA";
  attribute X_INTERFACE_PARAMETER of premem_rx24_quarterfrm_in : signal is "XIL_INTERFACENAME DATA.PREMEM_RX24_QUARTERFRM_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rotenc_decoder_resetn : signal is "xilinx.com:signal:reset:1.0 RST.ROTENC_DECODER_RESETN RST";
  attribute X_INTERFACE_PARAMETER of rotenc_decoder_resetn : signal is "XIL_INTERFACENAME RST.ROTENC_DECODER_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  BOARD_IIC_scl_o <= axi_iic_1_IIC_SCL_O;
  BOARD_IIC_scl_t <= axi_iic_1_IIC_SCL_T;
  BOARD_IIC_sda_o <= axi_iic_1_IIC_SDA_O;
  BOARD_IIC_sda_t <= axi_iic_1_IIC_SDA_T;
  BOARD_ROTENC_PUSH_1 <= BOARD_ROTENC_PUSH;
  CLK0_NA_diff_0_CLK_N(0) <= CLK0_clk_n(0);
  CLK0_NA_diff_0_CLK_P(0) <= CLK0_clk_p(0);
  CLK1B_50MHz_phy_clk_0(0) <= CLK1B_clk(0);
  CLK2_125MHz_mgt_diff_0_CLK_N <= CLK2_mgt_clk0_clk_n;
  CLK2_125MHz_mgt_diff_0_CLK_P <= CLK2_mgt_clk0_clk_p;
  CLK3_50MHz_mig_diff_0_CLK_N <= CLK3_sys_diff_clk_n;
  CLK3_50MHz_mig_diff_0_CLK_P <= CLK3_sys_diff_clk_p;
  DDR3_SDRAM_addr(14 downto 0) <= mig_7series_0_DDR3_ADDR(14 downto 0);
  DDR3_SDRAM_ba(2 downto 0) <= mig_7series_0_DDR3_BA(2 downto 0);
  DDR3_SDRAM_cas_n <= mig_7series_0_DDR3_CAS_N;
  DDR3_SDRAM_ck_n(0) <= mig_7series_0_DDR3_CK_N(0);
  DDR3_SDRAM_ck_p(0) <= mig_7series_0_DDR3_CK_P(0);
  DDR3_SDRAM_cke(0) <= mig_7series_0_DDR3_CKE(0);
  DDR3_SDRAM_cs_n(0) <= mig_7series_0_DDR3_CS_N(0);
  DDR3_SDRAM_dm(3 downto 0) <= mig_7series_0_DDR3_DM(3 downto 0);
  DDR3_SDRAM_odt(0) <= mig_7series_0_DDR3_ODT(0);
  DDR3_SDRAM_ras_n <= mig_7series_0_DDR3_RAS_N;
  DDR3_SDRAM_reset_n <= mig_7series_0_DDR3_RESET_N;
  DDR3_SDRAM_we_n <= mig_7series_0_DDR3_WE_N;
  DDR3_init_calib_complete <= mig_7series_0_init_calib_complete;
  ETH0_ETH0_MDIO_MDC_MDIO_I <= ETH0_MDIO_MDC_mdio_i;
  ETH0_LINK_LED_g_0 <= ETH0_LINK_LED_g;
  ETH0_MDIO_MDC_mdc <= ETH0_ETH0_MDIO_MDC_MDC;
  ETH0_MDIO_MDC_mdio_o <= ETH0_ETH0_MDIO_MDC_MDIO_O;
  ETH0_MDIO_MDC_mdio_t <= ETH0_ETH0_MDIO_MDC_MDIO_T;
  ETH0_RMII_PHY_M_0_CRS_DV <= RMII_PHY_M_0_crs_dv;
  ETH0_RMII_PHY_M_0_RXD(1 downto 0) <= RMII_PHY_M_0_rxd(1 downto 0);
  FPGA_IO_1 <= FPGA_IO;
  LCD_BL(0) <= PWM_lights_LCD_BL(0);
  LCD_rstn(0) <= PWM_lights_LCD_rstn(0);
  LED_RGB_blue(0) <= PWM_lights_LED_RGB_blue(0);
  LED_RGB_green(0) <= PWM_lights_LED_RGB_green(0);
  LED_RGB_red(0) <= PWM_lights_LED_RGB_red(0);
  PLL_I2C_ext_scl_o <= SC0712_0_ext_scl_o;
  PLL_int_1 <= PLL_int;
  RMII_PHY_M_0_tx_en <= ETH0_RMII_PHY_M_0_TX_EN;
  RMII_PHY_M_0_txd(1 downto 0) <= ETH0_RMII_PHY_M_0_TXD(1 downto 0);
  TRX_PLL_clk_25MHz_N(0) <= TRX_TRX_PLL_clk_25MHz_N(0);
  TRX_PLL_clk_25MHz_P(0) <= TRX_TRX_PLL_clk_25MHz_P(0);
  TRX_TRX_spi_IO0_I <= TRX_spi_io0_i;
  TRX_TRX_spi_IO1_I <= TRX_spi_io1_i;
  TRX_TRX_spi_SCK_I <= TRX_spi_sck_i;
  TRX_TRX_spi_SS_I(0) <= TRX_spi_ss_i(0);
  TRX_clk_26MHz_1 <= TRX_clk_26MHz;
  TRX_int_1 <= TRX_int;
  TRX_reset(0) <= TRX_TRX_reset(0);
  TRX_rfx_mode(0) <= TRX_TRX_rfx_mode(0);
  TRX_rx09_fifo_o(31 downto 0) <= TRX_rx09_fifo_o_1(31 downto 0);
  TRX_rx09_fifo_valid_o <= TRX_rx09_fifo_valid_o_1;
  TRX_rx24_fifo_o(31 downto 0) <= TRX_rx24_fifo_o_1(31 downto 0);
  TRX_rx24_fifo_valid_o <= TRX_rx24_fifo_valid_o_1;
  TRX_rx_clk_64MHz_1_CLK_N <= TRX_rx_clk_64MHz_clk_n;
  TRX_rx_clk_64MHz_1_CLK_P <= TRX_rx_clk_64MHz_clk_p;
  TRX_rx_data_n_1(1 downto 0) <= TRX_rx_data_n(1 downto 0);
  TRX_rx_data_p_1(1 downto 0) <= TRX_rx_data_p(1 downto 0);
  TRX_spi_io0_o <= TRX_TRX_spi_IO0_O;
  TRX_spi_io0_t <= TRX_TRX_spi_IO0_T;
  TRX_spi_io1_o <= TRX_TRX_spi_IO1_O;
  TRX_spi_io1_t <= TRX_TRX_spi_IO1_T;
  TRX_spi_sck_o <= TRX_TRX_spi_SCK_O;
  TRX_spi_sck_t <= TRX_TRX_spi_SCK_T;
  TRX_spi_ss_o(0) <= TRX_TRX_spi_SS_O(0);
  TRX_spi_ss_t <= TRX_TRX_spi_SS_T;
  TRX_tx_clk_clk_n <= TRX_TRX_tx_clk_CLK_N;
  TRX_tx_clk_clk_p <= TRX_TRX_tx_clk_CLK_P;
  TRX_tx_data_n(1 downto 0) <= TRX_TRX_tx_data_n(1 downto 0);
  TRX_tx_data_p(1 downto 0) <= TRX_TRX_tx_data_p(1 downto 0);
  UART0EXT_CTSn(0) <= UART0_UART0EXT_CTSn(0);
  UART0EXT_DCDn(0) <= UART0_UART0EXT_DCDn(0);
  UART0EXT_DSRn(0) <= UART0_UART0EXT_DSRn(0);
  UART0EXT_DTRn_1 <= UART0EXT_DTRn;
  UART0EXT_RIn(0) <= UART0_UART0EXT_RIn(0);
  UART0EXT_RTSn_1 <= UART0EXT_RTSn;
  UART0_UART0_RxD <= UART0_rxd;
  UART0_clk <= UART0_clk_wiz_0_clk_out1;
  UART0_rst_n(0) <= UART0_UART0_rst_n(0);
  UART0_txd <= UART0_UART0_TxD;
  ULI_SYSTEM_XIO_1 <= ULI_SYSTEM_XIO;
  axi_iic_1_IIC_SCL_I <= BOARD_IIC_scl_i;
  axi_iic_1_IIC_SDA_I <= BOARD_IIC_sda_i;
  axi_onewire_gpio_0_GPIO_TRI_I(0) <= onewire_EUI48_tri_i(0);
  axi_quad_spi_0_SPI_0_IO0_I <= qspi_flash_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= qspi_flash_io1_i;
  axi_quad_spi_0_SPI_0_IO2_I <= qspi_flash_io2_i;
  axi_quad_spi_0_SPI_0_IO3_I <= qspi_flash_io3_i;
  axi_quad_spi_0_SPI_0_SS_I <= qspi_flash_ss_i;
  fft09_aresetn_in_0 <= fft09_aresetn_in;
  fft09_config_tdata_in_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  fft09_config_tvalid_in_0 <= fft09_config_tvalid_in;
  fft09_data_tlast_in_0 <= fft09_data_tlast_in;
  fft09_data_tready_out <= fft09_data_tready_out_0;
  fft09_data_tvalid_in_0 <= fft09_data_tvalid_in;
  fft24_aresetn_in_0 <= fft24_aresetn_in;
  fft24_config_tdata_in_0(7 downto 0) <= fft24_config_tdata_in(7 downto 0);
  fft24_config_tvalid_in_0 <= fft24_config_tvalid_in;
  fft24_data_tlast_in_0 <= fft24_data_tlast_in;
  fft24_data_tready_out <= fft24_data_tready_out_0;
  fft24_data_tvalid_in_0 <= fft24_data_tvalid_in;
  microblaze_0_Clk_100MHz_o <= microblaze_0_Clk_100MHz;
  onewire_EUI48_tri_o(0) <= axi_onewire_gpio_0_GPIO_TRI_O(0);
  onewire_EUI48_tri_t(0) <= axi_onewire_gpio_0_GPIO_TRI_T(0);
  phy_rst_n <= ETH0_phy_rst_n;
  premem_rx09_addra_in_0(10 downto 0) <= premem_rx09_addra_in(10 downto 0);
  premem_rx09_addrb_in_0(10 downto 0) <= premem_rx09_addrb_in(10 downto 0);
  premem_rx09_dina_in_0(25 downto 0) <= premem_rx09_dina_in(25 downto 0);
  premem_rx09_quarterfrm_in_0(2 downto 0) <= premem_rx09_quarterfrm_in(2 downto 0);
  premem_rx09_wea_in_0(0) <= premem_rx09_wea_in(0);
  premem_rx24_addra_in_0(10 downto 0) <= premem_rx24_addra_in(10 downto 0);
  premem_rx24_addrb_in_0(10 downto 0) <= premem_rx24_addrb_in(10 downto 0);
  premem_rx24_dina_in_0(25 downto 0) <= premem_rx24_dina_in(25 downto 0);
  premem_rx24_quarterfrm_in_0(2 downto 0) <= premem_rx24_quarterfrm_in(2 downto 0);
  premem_rx24_wea_in_0(0) <= premem_rx24_wea_in(0);
  qspi_flash_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  qspi_flash_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  qspi_flash_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  qspi_flash_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  qspi_flash_io2_o <= axi_quad_spi_0_SPI_0_IO2_O;
  qspi_flash_io2_t <= axi_quad_spi_0_SPI_0_IO2_T;
  qspi_flash_io3_o <= axi_quad_spi_0_SPI_0_IO3_O;
  qspi_flash_io3_t <= axi_quad_spi_0_SPI_0_IO3_T;
  qspi_flash_ss_o <= axi_quad_spi_0_SPI_0_SS_O(0);
  qspi_flash_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  reset_1 <= reset;
  rotenc_dec_cnt_en_1 <= rotenc_dec_cnt_en;
  rotenc_dec_cnt_up_dwn_1 <= rotenc_dec_cnt_up_dwn;
  rotenc_decoder_resetn(0) <= rst_mig_7series_0_100M_peripheral_aresetn(0);
BOARD_clk_wiz_0: component msys_clk_wiz_0_0
     port map (
      clk_in1 => mig_7series_0_ui_addn_clk_1_100MHz,
      clk_out1 => UART0_clk_wiz_0_clk_out1,
      reset => mig_7series_0_ui_clk_sync_rst
    );
CLK0_util_ds_buf_0: component msys_util_ds_buf_2_0
     port map (
      IBUF_DS_N(0) => CLK0_NA_diff_0_CLK_N(0),
      IBUF_DS_P(0) => CLK0_NA_diff_0_CLK_P(0),
      IBUF_OUT(0) => CLK0_NA_0(0)
    );
CLK0_util_ds_buf_1: component msys_CLK0_util_ds_buf_0_0
     port map (
      BUFG_I(0) => CLK0_NA_0(0),
      BUFG_O(0) => CLK0_NA_g_0(0)
    );
CLK1B_util_ds_buf_0: component msys_util_ds_buf_0_0
     port map (
      BUFG_I(0) => CLK1B_50MHz_phy_clk_0(0),
      BUFG_O(0) => CLK1B_50MHz_phy_clk_g_0(0)
    );
ETH0: entity work.ETH0_imp_1S8N2C8
     port map (
      CLK1B_50MHz_phy_clk_in => CLK1B_50MHz_phy_clk_g_0(0),
      ETH0_DA_G(0) => ETH0_DA_G(0),
      ETH0_DA_Y(0) => ETH0_DA_Y(0),
      ETH0_LINK_LED(0) => ETH0_LINK_LED_g_0,
      ETH0_MDIO_MDC_mdc => ETH0_ETH0_MDIO_MDC_MDC,
      ETH0_MDIO_MDC_mdio_i => ETH0_ETH0_MDIO_MDC_MDIO_I,
      ETH0_MDIO_MDC_mdio_o => ETH0_ETH0_MDIO_MDC_MDIO_O,
      ETH0_MDIO_MDC_mdio_t => ETH0_ETH0_MDIO_MDC_MDIO_T,
      Q(3 downto 0) => ETH0_Q(3 downto 0),
      RMII_PHY_M_0_crs_dv => ETH0_RMII_PHY_M_0_CRS_DV,
      RMII_PHY_M_0_rxd(1 downto 0) => ETH0_RMII_PHY_M_0_RXD(1 downto 0),
      RMII_PHY_M_0_tx_en => ETH0_RMII_PHY_M_0_TX_EN,
      RMII_PHY_M_0_txd(1 downto 0) => ETH0_RMII_PHY_M_0_TXD(1 downto 0),
      SC0712_0_mcs_clk_in => SC0712_0_mcs_clk_out,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_M05_AXI_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_M05_AXI_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_M05_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_M05_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_M05_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      ip2intc_irpt => ETH0_ip2intc_irpt,
      m_mii_tx_er => ETH0_m_mii_tx_er,
      m_mii_txd(3 downto 0) => ETH0_m_mii_txd(3 downto 0),
      phy_rst_n => ETH0_phy_rst_n,
      phy_tx_en => axi_ethernetlite_0_phy_tx_en,
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_mii_col => ETH0_s_mii_col,
      s_mii_crs => ETH0_s_mii_crs,
      s_mii_rx_clk => ETH0_s_mii_rx_clk,
      s_mii_rx_dv => mii_y_adapater_0_s_mii_rx_dv,
      s_mii_rx_er => ETH0_s_mii_rx_er,
      s_mii_rxd(3 downto 0) => ETH0_s_mii_rxd(3 downto 0),
      s_mii_tx_clk => ETH0_s_mii_tx_clk
    );
INT_ctrl: entity work.INT_ctrl_imp_PISLEF
     port map (
      In0(0) => axi_timer_0_interrupt,
      In1(0) => UART0_interrupt,
      In10(0) => TRX_ip2intc_irpt,
      In2(0) => axi_quad_spi_0_ip2intc_irpt,
      In3(0) => axi_iic_0_iic2intc_irpt,
      In4(0) => ETH0_ip2intc_irpt,
      In5(0) => UART0_ip2intc_irpt,
      In6(0) => axi_BOARD_iic_0_iic2intc_irpt,
      In7(0) => PWM_lights_ip2intc_irpt,
      In8(0) => ROTENC_decoder_ip2intc_irpt,
      PLL_int(0) => PLL_int_1,
      TRX_int(0) => TRX_int_1,
      interrupt_ack(0 to 1) => INT_ctrl_interrupt_ACK(0 to 1),
      interrupt_address(31 downto 0) => INT_ctrl_interrupt_ADDRESS(31 downto 0),
      interrupt_interrupt => INT_ctrl_interrupt_INTERRUPT,
      processor_clk => microblaze_0_Clk_100MHz,
      processor_rst => rst_mig_7series_0_100M_mb_reset,
      s_axi_araddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready(0) => microblaze_0_axi_periph_M00_AXI_ARREADY(0),
      s_axi_arvalid(0) => microblaze_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      s_axi_awready(0) => microblaze_0_axi_periph_M00_AXI_AWREADY(0),
      s_axi_awvalid(0) => microblaze_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready(0) => microblaze_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid(0) => microblaze_0_axi_periph_M00_AXI_BVALID(0),
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready(0) => microblaze_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid(0) => microblaze_0_axi_periph_M00_AXI_RVALID(0),
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready(0) => microblaze_0_axi_periph_M00_AXI_WREADY(0),
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid(0) => microblaze_0_axi_periph_M00_AXI_WVALID(0)
    );
PTT_xlconstant_1_len10: component msys_xlconstant_0_18
     port map (
      dout(0) => PTT_xlconstant_1_len10_dout(0)
    );
PWM_lights: entity work.PWM_lights_imp_1HWCS6J
     port map (
      In1(0) => mii_y_adapater_0_s_mii_rx_dv,
      In2(0) => axi_ethernetlite_0_phy_tx_en,
      In3(0) => ETH0_phy_rst_n,
      In4(0) => mig_7series_0_init_calib_complete,
      LCD_BL(0) => PWM_lights_LCD_BL(0),
      LCD_rstn(0) => PWM_lights_LCD_rstn(0),
      LED_RGB_blue(0) => PWM_lights_LED_RGB_blue(0),
      LED_RGB_green(0) => PWM_lights_LED_RGB_green(0),
      LED_RGB_red(0) => PWM_lights_LED_RGB_red(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_M08_AXI_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_M08_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_M08_AXI_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_M08_AXI_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_M08_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_M08_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_M08_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_M08_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_M08_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_M08_AXI_WVALID(0),
      ip2intc_irpt => PWM_lights_ip2intc_irpt,
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0)
    );
ROTENC_decoder: entity work.ROTENC_decoder_imp_9V4OMT
     port map (
      BOARD_ROTENC_PUSH(0) => BOARD_ROTENC_PUSH_1,
      CLK => microblaze_0_Clk_100MHz,
      Q(31 downto 0) => ROTENC_decoder_Q(31 downto 0),
      SINIT => rst_mig_7series_0_100M_peripheral_reset(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(31 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_M09_AXI_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_M09_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(31 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_M09_AXI_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_M09_AXI_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_M09_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_M09_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_M09_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_M09_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_M09_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_M09_AXI_WVALID(0),
      dout(2 downto 0) => NLW_ROTENC_decoder_dout_UNCONNECTED(2 downto 0),
      ip2intc_irpt => ROTENC_decoder_ip2intc_irpt,
      rotenc_dec_cnt_en => rotenc_dec_cnt_en_1,
      rotenc_dec_cnt_up_dwn => rotenc_dec_cnt_up_dwn_1,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0)
    );
SC0712_0: component msys_SC0712_0_0
     port map (
      GPIO1_I(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_I(31 downto 0),
      GPIO1_O(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_O(31 downto 0),
      ext_scl_o => SC0712_0_ext_scl_o,
      ext_sda => PLL_I2C_ext_sda,
      mcs_clk_in => cfgmclk_util_ds_buf_0_BUFG_O(0),
      mcs_clk_out => SC0712_0_mcs_clk_out,
      mon_GPIO1_I(31 downto 0) => SC0712_0_mon_GPIO1_I(31 downto 0),
      mon_GPIO1_O(31 downto 0) => SC0712_0_mon_GPIO1_O(31 downto 0),
      reset_out => SC0712_0_reset_out,
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
TRX: entity work.TRX_imp_W48V8V
     port map (
      AXI_LITE_araddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      AXI_LITE_arready(0) => microblaze_0_axi_periph_M11_AXI_ARREADY(0),
      AXI_LITE_arvalid(0) => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      AXI_LITE_awaddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      AXI_LITE_awready(0) => microblaze_0_axi_periph_M11_AXI_AWREADY(0),
      AXI_LITE_awvalid(0) => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      AXI_LITE_bready(0) => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      AXI_LITE_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      AXI_LITE_bvalid(0) => microblaze_0_axi_periph_M11_AXI_BVALID(0),
      AXI_LITE_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      AXI_LITE_rready(0) => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      AXI_LITE_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      AXI_LITE_rvalid(0) => microblaze_0_axi_periph_M11_AXI_RVALID(0),
      AXI_LITE_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      AXI_LITE_wready(0) => microblaze_0_axi_periph_M11_AXI_WREADY(0),
      AXI_LITE_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      AXI_LITE_wvalid(0) => microblaze_0_axi_periph_M11_AXI_WVALID(0),
      S_AXI1_araddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(31 downto 0),
      S_AXI1_arready(0) => microblaze_0_axi_periph_M13_AXI_ARREADY(0),
      S_AXI1_arvalid(0) => microblaze_0_axi_periph_M13_AXI_ARVALID(0),
      S_AXI1_awaddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(31 downto 0),
      S_AXI1_awready(0) => microblaze_0_axi_periph_M13_AXI_AWREADY(0),
      S_AXI1_awvalid(0) => microblaze_0_axi_periph_M13_AXI_AWVALID(0),
      S_AXI1_bready(0) => microblaze_0_axi_periph_M13_AXI_BREADY(0),
      S_AXI1_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      S_AXI1_bvalid(0) => microblaze_0_axi_periph_M13_AXI_BVALID(0),
      S_AXI1_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      S_AXI1_rready(0) => microblaze_0_axi_periph_M13_AXI_RREADY(0),
      S_AXI1_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      S_AXI1_rvalid(0) => microblaze_0_axi_periph_M13_AXI_RVALID(0),
      S_AXI1_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      S_AXI1_wready(0) => microblaze_0_axi_periph_M13_AXI_WREADY(0),
      S_AXI1_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      S_AXI1_wvalid(0) => microblaze_0_axi_periph_M13_AXI_WVALID(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_ARADDR(31 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_M12_AXI_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_M12_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_AWADDR(31 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_M12_AXI_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_M12_AXI_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_M12_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_M12_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_M12_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_M12_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_M12_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_M12_AXI_WVALID(0),
      TRX_PLL_clk_25MHz_N(0) => TRX_TRX_PLL_clk_25MHz_N(0),
      TRX_PLL_clk_25MHz_P(0) => TRX_TRX_PLL_clk_25MHz_P(0),
      TRX_clk_26MHz => TRX_clk_26MHz_1,
      TRX_reset(0) => TRX_TRX_reset(0),
      TRX_rfx_mode(0) => TRX_TRX_rfx_mode(0),
      TRX_rx09_fifo_o(31 downto 0) => TRX_rx09_fifo_o_1(31 downto 0),
      TRX_rx09_fifo_valid_o => TRX_rx09_fifo_valid_o_1,
      TRX_rx24_fifo_o(31 downto 0) => TRX_rx24_fifo_o_1(31 downto 0),
      TRX_rx24_fifo_valid_o => TRX_rx24_fifo_valid_o_1,
      TRX_rx_clk_64MHz_clk_n => TRX_rx_clk_64MHz_1_CLK_N,
      TRX_rx_clk_64MHz_clk_p => TRX_rx_clk_64MHz_1_CLK_P,
      TRX_rx_data_n(1 downto 0) => TRX_rx_data_n_1(1 downto 0),
      TRX_rx_data_p(1 downto 0) => TRX_rx_data_p_1(1 downto 0),
      TRX_spi_io0_i => TRX_TRX_spi_IO0_I,
      TRX_spi_io0_o => TRX_TRX_spi_IO0_O,
      TRX_spi_io0_t => TRX_TRX_spi_IO0_T,
      TRX_spi_io1_i => TRX_TRX_spi_IO1_I,
      TRX_spi_io1_o => TRX_TRX_spi_IO1_O,
      TRX_spi_io1_t => TRX_TRX_spi_IO1_T,
      TRX_spi_sck_i => TRX_TRX_spi_SCK_I,
      TRX_spi_sck_o => TRX_TRX_spi_SCK_O,
      TRX_spi_sck_t => TRX_TRX_spi_SCK_T,
      TRX_spi_ss_i(0) => TRX_TRX_spi_SS_I(0),
      TRX_spi_ss_o(0) => TRX_TRX_spi_SS_O(0),
      TRX_spi_ss_t => TRX_TRX_spi_SS_T,
      TRX_tx_PTT_in(0) => PTT_xlconstant_1_len10_dout(0),
      TRX_tx_clk_clk_n => TRX_TRX_tx_clk_CLK_N,
      TRX_tx_clk_clk_p => TRX_TRX_tx_clk_CLK_P,
      TRX_tx_data_n(1 downto 0) => TRX_TRX_tx_data_n(1 downto 0),
      TRX_tx_data_p(1 downto 0) => TRX_TRX_tx_data_p(1 downto 0),
      clk_div_out => TRX_rx_div_clk_g_0,
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      fft09_aresetn_in => fft09_aresetn_in_0,
      fft09_config_tdata_in(7 downto 0) => fft09_config_tdata_in_0(7 downto 0),
      fft09_config_tvalid_in => fft09_config_tvalid_in_0,
      fft09_data_tlast_in => fft09_data_tlast_in_0,
      fft09_data_tready_out => fft09_data_tready_out_0,
      fft09_data_tvalid_in => fft09_data_tvalid_in_0,
      fft24_aresetn_in => fft24_aresetn_in_0,
      fft24_config_tdata_in(7 downto 0) => fft24_config_tdata_in_0(7 downto 0),
      fft24_config_tvalid_in => fft24_config_tvalid_in_0,
      fft24_data_tlast_in => fft24_data_tlast_in_0,
      fft24_data_tready_out => fft24_data_tready_out_0,
      fft24_data_tvalid_in => fft24_data_tvalid_in_0,
      ip2intc_irpt => TRX_ip2intc_irpt,
      postmem_rx09_doutb_out(31 downto 0) => postmem_rx09_doutb_out_0(31 downto 0),
      postmem_rx24_doutb_out(31 downto 0) => postmem_rx24_doutb_out_0(31 downto 0),
      postmem_rx_addrb_in(12 downto 0) => postmem_rx_addrb_in_0(12 downto 0),
      premem_rx09_addra_in(10 downto 0) => premem_rx09_addra_in_0(10 downto 0),
      premem_rx09_addrb_in(10 downto 0) => premem_rx09_addrb_in_0(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => premem_rx09_dina_in_0(25 downto 0),
      premem_rx09_quarterfrm_in(2 downto 0) => premem_rx09_quarterfrm_in_0(2 downto 0),
      premem_rx09_wea_in(0) => premem_rx09_wea_in_0(0),
      premem_rx24_addra_in(10 downto 0) => premem_rx24_addra_in_0(10 downto 0),
      premem_rx24_addrb_in(10 downto 0) => premem_rx24_addrb_in_0(10 downto 0),
      premem_rx24_dina_in(25 downto 0) => premem_rx24_dina_in_0(25 downto 0),
      premem_rx24_quarterfrm_in(2 downto 0) => premem_rx24_quarterfrm_in_0(2 downto 0),
      premem_rx24_wea_in(0) => premem_rx24_wea_in_0(0),
      rd_data_count_CD100_o(8 downto 0) => TRX_rd_data_count_CD100(8 downto 0),
      ref_clock => mig_7series_0_ui_addn_clk_0_200MHz,
      reset_CD100_i => rst_mig_7series_0_100M_peripheral_reset(0),
      rx09_32bits_CD100_o(31 downto 0) => TRX_rx09_32bits_CD100(31 downto 0),
      rx24_32bits_CD100_o(31 downto 0) => TRX_rx24_32bits_CD100(31 downto 0),
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      xfft_rx09_dly3449_event_data_in_channel_halt_out => xfft_rx09_dly3449_event_data_in_channel_halt_out_0,
      xfft_rx09_dly3449_event_frame_started_out => xfft_rx09_dly3449_event_frame_started_out_0,
      xfft_rx09_dly3449_event_tlast_missing_out => xfft_rx09_dly3449_event_tlast_missing_out_0,
      xfft_rx09_dly3449_event_tlast_unexpected_out => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      xfft_rx24_dly3198_event_data_in_channel_halt_out => xfft_rx24_dly3198_event_data_in_channel_halt_out_0,
      xfft_rx24_dly3198_event_tlast_missing_out => xfft_rx24_dly3198_event_tlast_missing_out_0,
      xfft_rx24_dly3198_event_tlast_unexpected_out => xfft_rx24_dly3198_event_tlast_unexpected_out_0,
      xfft_rx24_dly3449_event_frame_started_out => xfft_rx24_dly3449_event_frame_started_out_0
    );
UART0: entity work.UART0_imp_1B98M7Q
     port map (
      S_AXI1_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      S_AXI1_arready(0) => microblaze_0_axi_periph_M02_AXI_ARREADY(0),
      S_AXI1_arvalid(0) => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      S_AXI1_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      S_AXI1_awready(0) => microblaze_0_axi_periph_M02_AXI_AWREADY(0),
      S_AXI1_awvalid(0) => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      S_AXI1_bready(0) => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      S_AXI1_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      S_AXI1_bvalid(0) => microblaze_0_axi_periph_M02_AXI_BVALID(0),
      S_AXI1_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      S_AXI1_rready(0) => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      S_AXI1_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      S_AXI1_rvalid(0) => microblaze_0_axi_periph_M02_AXI_RVALID(0),
      S_AXI1_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      S_AXI1_wready(0) => microblaze_0_axi_periph_M02_AXI_WREADY(0),
      S_AXI1_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      S_AXI1_wvalid(0) => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_M06_AXI_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_M06_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_M06_AXI_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_M06_AXI_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_M06_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_M06_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_M06_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_M06_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_M06_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_M06_AXI_WVALID(0),
      UART0EXT_CTSn(0) => UART0_UART0EXT_CTSn(0),
      UART0EXT_DCDn(0) => UART0_UART0EXT_DCDn(0),
      UART0EXT_DSRn(0) => UART0_UART0EXT_DSRn(0),
      UART0EXT_DTRn(0) => UART0EXT_DTRn_1,
      UART0EXT_RIn(0) => UART0_UART0EXT_RIn(0),
      UART0EXT_RTSn(0) => UART0EXT_RTSn_1,
      UART0_rst_n(0) => UART0_UART0_rst_n(0),
      UART0_rxd => UART0_UART0_RxD,
      UART0_txd => UART0_UART0_TxD,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interrupt => UART0_interrupt,
      ip2intc_irpt => UART0_ip2intc_irpt,
      peripheral_reset(0) => NLW_UART0_peripheral_reset_UNCONNECTED(0),
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      slowest_sync_clk => UART0_clk_wiz_0_clk_out1
    );
axi_BOARD_iic_0: component msys_axi_iic_1_0
     port map (
      gpo(0) => NLW_axi_BOARD_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => axi_BOARD_iic_0_iic2intc_irpt,
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID(0),
      scl_i => axi_iic_1_IIC_SCL_I,
      scl_o => axi_iic_1_IIC_SCL_O,
      scl_t => axi_iic_1_IIC_SCL_T,
      sda_i => axi_iic_1_IIC_SDA_I,
      sda_o => axi_iic_1_IIC_SDA_O,
      sda_t => axi_iic_1_IIC_SDA_T
    );
axi_ONEWIRE_gpio_0: component msys_axi_pwm_gpio_0_1
     port map (
      gpio_io_i(0) => axi_onewire_gpio_0_GPIO_TRI_I(0),
      gpio_io_o(0) => axi_onewire_gpio_0_GPIO_TRI_O(0),
      gpio_io_t(0) => axi_onewire_gpio_0_GPIO_TRI_T(0),
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M10_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M10_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M10_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M10_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M10_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M10_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M10_AXI_WVALID(0)
    );
axi_iic_0: component msys_axi_iic_0_0
     port map (
      gpo(0) => NLW_axi_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
axi_interconnect_0: entity work.msys_axi_interconnect_0_0
     port map (
      ACLK => microblaze_0_Clk_100MHz,
      ARESETN => ARESETN_1(0),
      M00_ACLK => microblaze_0_Clk_100MHz,
      M00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_0_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready(0) => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid(0) => axi_interconnect_0_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_0_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready(0) => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid(0) => axi_interconnect_0_M00_AXI_AWVALID(0),
      M00_AXI_bid(0) => axi_interconnect_0_M00_AXI_BID(0),
      M00_AXI_bready(0) => axi_interconnect_0_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(0) => axi_interconnect_0_M00_AXI_RID(0),
      M00_AXI_rlast(0) => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready(0) => axi_interconnect_0_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast(0) => axi_interconnect_0_M00_AXI_WLAST(0),
      M00_AXI_wready(0) => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => axi_interconnect_0_M00_AXI_WVALID(0),
      S00_ACLK => microblaze_0_Clk_100MHz,
      S00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => microblaze_0_M_AXI_DC_ARID(0),
      S00_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      S00_AXI_arlock => microblaze_0_M_AXI_DC_ARLOCK,
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      S00_AXI_arready => microblaze_0_M_AXI_DC_ARREADY,
      S00_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      S00_AXI_arvalid => microblaze_0_M_AXI_DC_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => microblaze_0_M_AXI_DC_AWID(0),
      S00_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      S00_AXI_awlock => microblaze_0_M_AXI_DC_AWLOCK,
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      S00_AXI_awready => microblaze_0_M_AXI_DC_AWREADY,
      S00_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      S00_AXI_awvalid => microblaze_0_M_AXI_DC_AWVALID,
      S00_AXI_bid(0) => microblaze_0_M_AXI_DC_BID(0),
      S00_AXI_bready => microblaze_0_M_AXI_DC_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_0_M_AXI_DC_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      S00_AXI_rid(0) => microblaze_0_M_AXI_DC_RID(0),
      S00_AXI_rlast => microblaze_0_M_AXI_DC_RLAST,
      S00_AXI_rready => microblaze_0_M_AXI_DC_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_0_M_AXI_DC_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      S00_AXI_wlast => microblaze_0_M_AXI_DC_WLAST,
      S00_AXI_wready => microblaze_0_M_AXI_DC_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_0_M_AXI_DC_WVALID,
      S01_ACLK => microblaze_0_Clk_100MHz,
      S01_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => microblaze_0_M_AXI_IC_ARID(0),
      S01_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      S01_AXI_arlock => microblaze_0_M_AXI_IC_ARLOCK,
      S01_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      S01_AXI_arready => microblaze_0_M_AXI_IC_ARREADY,
      S01_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      S01_AXI_arvalid => microblaze_0_M_AXI_IC_ARVALID,
      S01_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => microblaze_0_M_AXI_IC_AWID(0),
      S01_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      S01_AXI_awlock => microblaze_0_M_AXI_IC_AWLOCK,
      S01_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      S01_AXI_awready => microblaze_0_M_AXI_IC_AWREADY,
      S01_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      S01_AXI_awvalid => microblaze_0_M_AXI_IC_AWVALID,
      S01_AXI_bid(0) => microblaze_0_M_AXI_IC_BID(0),
      S01_AXI_bready => microblaze_0_M_AXI_IC_BREADY,
      S01_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      S01_AXI_bvalid => microblaze_0_M_AXI_IC_BVALID,
      S01_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      S01_AXI_rid(0) => microblaze_0_M_AXI_IC_RID(0),
      S01_AXI_rlast => microblaze_0_M_AXI_IC_RLAST,
      S01_AXI_rready => microblaze_0_M_AXI_IC_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      S01_AXI_rvalid => microblaze_0_M_AXI_IC_RVALID,
      S01_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      S01_AXI_wlast => microblaze_0_M_AXI_IC_WLAST,
      S01_AXI_wready => microblaze_0_M_AXI_IC_WREADY,
      S01_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      S01_AXI_wvalid => microblaze_0_M_AXI_IC_WVALID
    );
axi_quad_spi_0: component msys_axi_quad_spi_0_0
     port map (
      cfgclk => NLW_axi_quad_spi_0_cfgclk_UNCONNECTED,
      cfgmclk => axi_quad_spi_0_cfgmclk,
      eos => axi_quad_spi_0_eos,
      ext_spi_clk => mig_7series_0_ui_addn_clk_2_50MHz,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      io2_i => axi_quad_spi_0_SPI_0_IO2_I,
      io2_o => axi_quad_spi_0_SPI_0_IO2_O,
      io2_t => axi_quad_spi_0_SPI_0_IO2_T,
      io3_i => axi_quad_spi_0_SPI_0_IO3_I,
      io3_o => axi_quad_spi_0_SPI_0_IO3_O,
      io3_t => axi_quad_spi_0_SPI_0_IO3_T,
      ip2intc_irpt => axi_quad_spi_0_ip2intc_irpt,
      preq => NLW_axi_quad_spi_0_preq_UNCONNECTED,
      s_axi_aclk => mig_7series_0_ui_addn_clk_2_50MHz,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_mig_7series_0_50M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      ss_i(0) => axi_quad_spi_0_SPI_0_SS_I,
      ss_o(0) => axi_quad_spi_0_SPI_0_SS_O(0),
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
axi_timer_0: component msys_axi_timer_0_0
     port map (
      capturetrig0 => '0',
      capturetrig1 => '0',
      freeze => '0',
      generateout0 => NLW_axi_timer_0_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_0_generateout1_UNCONNECTED,
      interrupt => axi_timer_0_interrupt,
      pwm0 => NLW_axi_timer_0_pwm0_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk_100MHz,
      s_axi_araddr(4 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(4 downto 0),
      s_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(4 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(4 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID(0)
    );
cfgmclk_util_ds_buf_0: component msys_util_ds_buf_3_0
     port map (
      BUFG_I(0) => axi_quad_spi_0_cfgmclk,
      BUFG_O(0) => cfgmclk_util_ds_buf_0_BUFG_O(0)
    );
labtools_fmeter_0: component msys_labtools_fmeter_0_0
     port map (
      F0(31 downto 0) => lt_F0_MIG_50mhz(31 downto 0),
      F1(31 downto 0) => lt_F1_mgt_ref(31 downto 0),
      F2(31 downto 0) => lt_F2_CLK1B(31 downto 0),
      F3(31 downto 0) => lt_F3_CLK0(31 downto 0),
      F4(31 downto 0) => lt_F4_TRX_LVDS_divclk(31 downto 0),
      F5(31 downto 0) => labtools_fmeter_0_F5(31 downto 0),
      F6(31 downto 0) => labtools_fmeter_0_F6(31 downto 0),
      fin(6 downto 0) => xlconcat_0_dout(6 downto 0),
      refclk => microblaze_0_Clk_100MHz,
      update => labtools_fmeter_0_update
    );
lt_fmeter_xlconcat_0: component msys_xlconcat_0_0
     port map (
      In0(0) => mig_7series_0_ui_addn_clk_2_50MHz,
      In1(0) => CLK2_125MHz_mgt_g_0(0),
      In2(0) => CLK1B_50MHz_phy_clk_g_0(0),
      In3(0) => CLK0_NA_g_0(0),
      In4(0) => TRX_rx_div_clk_g_0,
      In5(0) => ETH0_s_mii_tx_clk,
      In6(0) => ETH0_s_mii_rx_clk,
      dout(6 downto 0) => xlconcat_0_dout(6 downto 0)
    );
mdm_1: component msys_mdm_1_0
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => NLW_mdm_1_Debug_SYS_Rst_UNCONNECTED
    );
mgt_clk0_CLK2_util_ds_buf_1: component msys_util_ds_buf_1_0
     port map (
      IBUF_DS_N(0) => CLK2_125MHz_mgt_diff_0_CLK_N,
      IBUF_DS_ODIV2(0) => NLW_mgt_clk0_CLK2_util_ds_buf_1_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => CLK2_125MHz_mgt_diff_0_CLK_P,
      IBUF_OUT(0) => CLK2_125MHz_mgt_g_0(0)
    );
microblaze_0: component msys_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      Clk => microblaze_0_Clk_100MHz,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => microblaze_0_debug_CAPTURE,
      Dbg_Clk => microblaze_0_debug_CLK,
      Dbg_Disable => microblaze_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_0_debug_SHIFT,
      Dbg_TDI => microblaze_0_debug_TDI,
      Dbg_TDO => microblaze_0_debug_TDO,
      Dbg_Update => microblaze_0_debug_UPDATE,
      Debug_Rst => microblaze_0_debug_RST,
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => INT_ctrl_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => INT_ctrl_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => INT_ctrl_interrupt_ADDRESS(31),
      Interrupt_Address(1) => INT_ctrl_interrupt_ADDRESS(30),
      Interrupt_Address(2) => INT_ctrl_interrupt_ADDRESS(29),
      Interrupt_Address(3) => INT_ctrl_interrupt_ADDRESS(28),
      Interrupt_Address(4) => INT_ctrl_interrupt_ADDRESS(27),
      Interrupt_Address(5) => INT_ctrl_interrupt_ADDRESS(26),
      Interrupt_Address(6) => INT_ctrl_interrupt_ADDRESS(25),
      Interrupt_Address(7) => INT_ctrl_interrupt_ADDRESS(24),
      Interrupt_Address(8) => INT_ctrl_interrupt_ADDRESS(23),
      Interrupt_Address(9) => INT_ctrl_interrupt_ADDRESS(22),
      Interrupt_Address(10) => INT_ctrl_interrupt_ADDRESS(21),
      Interrupt_Address(11) => INT_ctrl_interrupt_ADDRESS(20),
      Interrupt_Address(12) => INT_ctrl_interrupt_ADDRESS(19),
      Interrupt_Address(13) => INT_ctrl_interrupt_ADDRESS(18),
      Interrupt_Address(14) => INT_ctrl_interrupt_ADDRESS(17),
      Interrupt_Address(15) => INT_ctrl_interrupt_ADDRESS(16),
      Interrupt_Address(16) => INT_ctrl_interrupt_ADDRESS(15),
      Interrupt_Address(17) => INT_ctrl_interrupt_ADDRESS(14),
      Interrupt_Address(18) => INT_ctrl_interrupt_ADDRESS(13),
      Interrupt_Address(19) => INT_ctrl_interrupt_ADDRESS(12),
      Interrupt_Address(20) => INT_ctrl_interrupt_ADDRESS(11),
      Interrupt_Address(21) => INT_ctrl_interrupt_ADDRESS(10),
      Interrupt_Address(22) => INT_ctrl_interrupt_ADDRESS(9),
      Interrupt_Address(23) => INT_ctrl_interrupt_ADDRESS(8),
      Interrupt_Address(24) => INT_ctrl_interrupt_ADDRESS(7),
      Interrupt_Address(25) => INT_ctrl_interrupt_ADDRESS(6),
      Interrupt_Address(26) => INT_ctrl_interrupt_ADDRESS(5),
      Interrupt_Address(27) => INT_ctrl_interrupt_ADDRESS(4),
      Interrupt_Address(28) => INT_ctrl_interrupt_ADDRESS(3),
      Interrupt_Address(29) => INT_ctrl_interrupt_ADDRESS(2),
      Interrupt_Address(30) => INT_ctrl_interrupt_ADDRESS(1),
      Interrupt_Address(31) => INT_ctrl_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => microblaze_0_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_0_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => microblaze_0_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_0_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_0_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => microblaze_0_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => microblaze_0_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => microblaze_0_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => microblaze_0_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => microblaze_0_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_0_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => microblaze_0_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_0_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => microblaze_0_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => microblaze_0_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => microblaze_0_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => microblaze_0_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => microblaze_0_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => microblaze_0_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => microblaze_0_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => microblaze_0_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => microblaze_0_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => microblaze_0_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => microblaze_0_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => microblaze_0_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => microblaze_0_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_mig_7series_0_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_periph: entity work.msys_microblaze_0_axi_periph_0
     port map (
      ACLK => microblaze_0_Clk_100MHz,
      ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_ACLK => microblaze_0_Clk_100MHz,
      M00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => microblaze_0_axi_periph_M00_AXI_ARREADY(0),
      M00_AXI_arvalid(0) => microblaze_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => microblaze_0_axi_periph_M00_AXI_AWREADY(0),
      M00_AXI_awvalid(0) => microblaze_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => microblaze_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => microblaze_0_axi_periph_M00_AXI_BVALID(0),
      M00_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => microblaze_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => microblaze_0_axi_periph_M00_AXI_RVALID(0),
      M00_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => microblaze_0_axi_periph_M00_AXI_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => microblaze_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => microblaze_0_Clk_100MHz,
      M01_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => microblaze_0_Clk_100MHz,
      M02_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => microblaze_0_axi_periph_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => microblaze_0_axi_periph_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => microblaze_0_axi_periph_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => microblaze_0_axi_periph_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => microblaze_0_axi_periph_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      M03_ACLK => mig_7series_0_ui_addn_clk_2_50MHz,
      M03_ARESETN => rst_mig_7series_0_50M_peripheral_aresetn(0),
      M03_AXI_araddr(6 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(6 downto 0),
      M03_AXI_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(6 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(6 downto 0),
      M03_AXI_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => microblaze_0_Clk_100MHz,
      M04_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready(0) => microblaze_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready(0) => microblaze_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => microblaze_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => microblaze_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => microblaze_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      M05_ACLK => microblaze_0_Clk_100MHz,
      M05_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => microblaze_0_axi_periph_M05_AXI_ARREADY(0),
      M05_AXI_arvalid(0) => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => microblaze_0_axi_periph_M05_AXI_AWREADY(0),
      M05_AXI_awvalid(0) => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => microblaze_0_axi_periph_M05_AXI_BVALID(0),
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => microblaze_0_axi_periph_M05_AXI_RVALID(0),
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => microblaze_0_axi_periph_M05_AXI_WREADY(0),
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      M06_ACLK => microblaze_0_Clk_100MHz,
      M06_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready(0) => microblaze_0_axi_periph_M06_AXI_ARREADY(0),
      M06_AXI_arvalid(0) => microblaze_0_axi_periph_M06_AXI_ARVALID(0),
      M06_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready(0) => microblaze_0_axi_periph_M06_AXI_AWREADY(0),
      M06_AXI_awvalid(0) => microblaze_0_axi_periph_M06_AXI_AWVALID(0),
      M06_AXI_bready(0) => microblaze_0_axi_periph_M06_AXI_BREADY(0),
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => microblaze_0_axi_periph_M06_AXI_BVALID(0),
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready(0) => microblaze_0_axi_periph_M06_AXI_RREADY(0),
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => microblaze_0_axi_periph_M06_AXI_RVALID(0),
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready(0) => microblaze_0_axi_periph_M06_AXI_WREADY(0),
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => microblaze_0_axi_periph_M06_AXI_WVALID(0),
      M07_ACLK => microblaze_0_Clk_100MHz,
      M07_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready(0) => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => microblaze_0_axi_periph_M07_AXI_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready(0) => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => microblaze_0_axi_periph_M07_AXI_AWVALID(0),
      M07_AXI_bready(0) => microblaze_0_axi_periph_M07_AXI_BREADY(0),
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => microblaze_0_axi_periph_M07_AXI_RREADY(0),
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => microblaze_0_axi_periph_M07_AXI_WVALID(0),
      M08_ACLK => microblaze_0_Clk_100MHz,
      M08_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arready(0) => microblaze_0_axi_periph_M08_AXI_ARREADY(0),
      M08_AXI_arvalid(0) => microblaze_0_axi_periph_M08_AXI_ARVALID(0),
      M08_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awready(0) => microblaze_0_axi_periph_M08_AXI_AWREADY(0),
      M08_AXI_awvalid(0) => microblaze_0_axi_periph_M08_AXI_AWVALID(0),
      M08_AXI_bready(0) => microblaze_0_axi_periph_M08_AXI_BREADY(0),
      M08_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid(0) => microblaze_0_axi_periph_M08_AXI_BVALID(0),
      M08_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready(0) => microblaze_0_axi_periph_M08_AXI_RREADY(0),
      M08_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid(0) => microblaze_0_axi_periph_M08_AXI_RVALID(0),
      M08_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready(0) => microblaze_0_axi_periph_M08_AXI_WREADY(0),
      M08_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid(0) => microblaze_0_axi_periph_M08_AXI_WVALID(0),
      M09_ACLK => microblaze_0_Clk_100MHz,
      M09_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready(0) => microblaze_0_axi_periph_M09_AXI_ARREADY(0),
      M09_AXI_arvalid(0) => microblaze_0_axi_periph_M09_AXI_ARVALID(0),
      M09_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready(0) => microblaze_0_axi_periph_M09_AXI_AWREADY(0),
      M09_AXI_awvalid(0) => microblaze_0_axi_periph_M09_AXI_AWVALID(0),
      M09_AXI_bready(0) => microblaze_0_axi_periph_M09_AXI_BREADY(0),
      M09_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid(0) => microblaze_0_axi_periph_M09_AXI_BVALID(0),
      M09_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready(0) => microblaze_0_axi_periph_M09_AXI_RREADY(0),
      M09_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid(0) => microblaze_0_axi_periph_M09_AXI_RVALID(0),
      M09_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready(0) => microblaze_0_axi_periph_M09_AXI_WREADY(0),
      M09_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid(0) => microblaze_0_axi_periph_M09_AXI_WVALID(0),
      M10_ACLK => microblaze_0_Clk_100MHz,
      M10_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready(0) => microblaze_0_axi_periph_M10_AXI_ARREADY,
      M10_AXI_arvalid(0) => microblaze_0_axi_periph_M10_AXI_ARVALID(0),
      M10_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready(0) => microblaze_0_axi_periph_M10_AXI_AWREADY,
      M10_AXI_awvalid(0) => microblaze_0_axi_periph_M10_AXI_AWVALID(0),
      M10_AXI_bready(0) => microblaze_0_axi_periph_M10_AXI_BREADY(0),
      M10_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid(0) => microblaze_0_axi_periph_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready(0) => microblaze_0_axi_periph_M10_AXI_RREADY(0),
      M10_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid(0) => microblaze_0_axi_periph_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready(0) => microblaze_0_axi_periph_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid(0) => microblaze_0_axi_periph_M10_AXI_WVALID(0),
      M11_ACLK => microblaze_0_Clk_100MHz,
      M11_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready(0) => microblaze_0_axi_periph_M11_AXI_ARREADY(0),
      M11_AXI_arvalid(0) => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      M11_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready(0) => microblaze_0_axi_periph_M11_AXI_AWREADY(0),
      M11_AXI_awvalid(0) => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      M11_AXI_bready(0) => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      M11_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid(0) => microblaze_0_axi_periph_M11_AXI_BVALID(0),
      M11_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready(0) => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      M11_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid(0) => microblaze_0_axi_periph_M11_AXI_RVALID(0),
      M11_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready(0) => microblaze_0_axi_periph_M11_AXI_WREADY(0),
      M11_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid(0) => microblaze_0_axi_periph_M11_AXI_WVALID(0),
      M12_ACLK => microblaze_0_Clk_100MHz,
      M12_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M12_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_ARADDR(31 downto 0),
      M12_AXI_arready(0) => microblaze_0_axi_periph_M12_AXI_ARREADY(0),
      M12_AXI_arvalid(0) => microblaze_0_axi_periph_M12_AXI_ARVALID(0),
      M12_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_AWADDR(31 downto 0),
      M12_AXI_awready(0) => microblaze_0_axi_periph_M12_AXI_AWREADY(0),
      M12_AXI_awvalid(0) => microblaze_0_axi_periph_M12_AXI_AWVALID(0),
      M12_AXI_bready(0) => microblaze_0_axi_periph_M12_AXI_BREADY(0),
      M12_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid(0) => microblaze_0_axi_periph_M12_AXI_BVALID(0),
      M12_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready(0) => microblaze_0_axi_periph_M12_AXI_RREADY(0),
      M12_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid(0) => microblaze_0_axi_periph_M12_AXI_RVALID(0),
      M12_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready(0) => microblaze_0_axi_periph_M12_AXI_WREADY(0),
      M12_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0),
      M12_AXI_wvalid(0) => microblaze_0_axi_periph_M12_AXI_WVALID(0),
      M13_ACLK => microblaze_0_Clk_100MHz,
      M13_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M13_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(31 downto 0),
      M13_AXI_arready(0) => microblaze_0_axi_periph_M13_AXI_ARREADY(0),
      M13_AXI_arvalid(0) => microblaze_0_axi_periph_M13_AXI_ARVALID(0),
      M13_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(31 downto 0),
      M13_AXI_awready(0) => microblaze_0_axi_periph_M13_AXI_AWREADY(0),
      M13_AXI_awvalid(0) => microblaze_0_axi_periph_M13_AXI_AWVALID(0),
      M13_AXI_bready(0) => microblaze_0_axi_periph_M13_AXI_BREADY(0),
      M13_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      M13_AXI_bvalid(0) => microblaze_0_axi_periph_M13_AXI_BVALID(0),
      M13_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      M13_AXI_rready(0) => microblaze_0_axi_periph_M13_AXI_RREADY(0),
      M13_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      M13_AXI_rvalid(0) => microblaze_0_axi_periph_M13_AXI_RVALID(0),
      M13_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      M13_AXI_wready(0) => microblaze_0_axi_periph_M13_AXI_WREADY(0),
      M13_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      M13_AXI_wvalid(0) => microblaze_0_axi_periph_M13_AXI_WVALID(0),
      S00_ACLK => microblaze_0_Clk_100MHz,
      S00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_axi_dp_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_axi_dp_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready(0) => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_axi_dp_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_axi_dp_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_axi_dp_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_axi_dp_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_17WFGJG
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      LMB_Clk => microblaze_0_Clk_100MHz,
      SYS_Rst => rst_mig_7series_0_100M_bus_struct_reset(0)
    );
microblaze_mcs_0: component msys_microblaze_mcs_0_0
     port map (
      Clk => SC0712_0_mcs_clk_out,
      GPIO1_tri_i(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_I(31 downto 0),
      GPIO1_tri_o(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_O(31 downto 0),
      Reset => proc_sys_reset_0_mb_reset
    );
mig_7series_0: component msys_mig_7series_0_0
     port map (
      aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      clk_ref_i => mig_7series_0_ui_addn_clk_0_200MHz,
      ddr3_addr(14 downto 0) => mig_7series_0_DDR3_ADDR(14 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_DDR3_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_DDR3_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_DDR3_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_DDR3_CK_P(0),
      ddr3_cke(0) => mig_7series_0_DDR3_CKE(0),
      ddr3_cs_n(0) => mig_7series_0_DDR3_CS_N(0),
      ddr3_dm(3 downto 0) => mig_7series_0_DDR3_DM(3 downto 0),
      ddr3_dq(31 downto 0) => DDR3_SDRAM_dq(31 downto 0),
      ddr3_dqs_n(3 downto 0) => DDR3_SDRAM_dqs_n(3 downto 0),
      ddr3_dqs_p(3 downto 0) => DDR3_SDRAM_dqs_p(3 downto 0),
      ddr3_odt(0) => mig_7series_0_DDR3_ODT(0),
      ddr3_ras_n => mig_7series_0_DDR3_RAS_N,
      ddr3_reset_n => mig_7series_0_DDR3_RESET_N,
      ddr3_we_n => mig_7series_0_DDR3_WE_N,
      init_calib_complete => mig_7series_0_init_calib_complete,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(29 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(29 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      s_axi_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_interconnect_0_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID(0),
      s_axi_awaddr(29 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(29 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      s_axi_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_interconnect_0_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID(0),
      s_axi_bid(0) => axi_interconnect_0_M00_AXI_BID(0),
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(0) => axi_interconnect_0_M00_AXI_RID(0),
      s_axi_rlast => axi_interconnect_0_M00_AXI_RLAST,
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_interconnect_0_M00_AXI_WLAST(0),
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID(0),
      sys_clk_n => CLK3_50MHz_mig_diff_0_CLK_N,
      sys_clk_p => CLK3_50MHz_mig_diff_0_CLK_P,
      sys_rst => SC0712_0_reset_out,
      ui_addn_clk_0 => mig_7series_0_ui_addn_clk_0_200MHz,
      ui_addn_clk_1 => mig_7series_0_ui_addn_clk_1_100MHz,
      ui_addn_clk_2 => mig_7series_0_ui_addn_clk_2_50MHz,
      ui_clk => microblaze_0_Clk_100MHz,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
proc_sys_reset_0: component msys_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => axi_quad_spi_0_eos,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => proc_sys_reset_0_mb_reset,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => SC0712_0_mcs_clk_out
    );
rst_mig_7series_0_100M: component msys_rst_mig_7series_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_mig_7series_0_100M_bus_struct_reset(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => rst_mig_7series_0_100M_mb_reset,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_mig_7series_0_100M_peripheral_reset(0),
      slowest_sync_clk => microblaze_0_Clk_100MHz
    );
rst_mig_7series_0_50M: component msys_rst_mig_7series_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_ui_addn_clk_2_50MHz
    );
vio_0: component msys_vio_0_0
     port map (
      clk => SC0712_0_mcs_clk_out,
      probe_in0(31 downto 0) => lt_F0_MIG_50mhz(31 downto 0),
      probe_in1(31 downto 0) => lt_F1_mgt_ref(31 downto 0),
      probe_in10(0) => ULI_SYSTEM_XIO_1,
      probe_in11(8 downto 0) => TRX_rd_data_count_CD100(8 downto 0),
      probe_in12(31 downto 0) => TRX_rx09_32bits_CD100(31 downto 0),
      probe_in13(31 downto 0) => TRX_rx24_32bits_CD100(31 downto 0),
      probe_in14(0) => xfft_rx09_dly3449_event_frame_started_out_0,
      probe_in15(0) => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      probe_in16(0) => xfft_rx09_dly3449_event_tlast_missing_out_0,
      probe_in17(0) => xfft_rx09_dly3449_event_data_in_channel_halt_out_0,
      probe_in18(0) => xfft_rx24_dly3449_event_frame_started_out_0,
      probe_in19(0) => xfft_rx24_dly3198_event_tlast_unexpected_out_0,
      probe_in2(31 downto 0) => lt_F2_CLK1B(31 downto 0),
      probe_in20(0) => xfft_rx24_dly3198_event_tlast_missing_out_0,
      probe_in21(0) => xfft_rx24_dly3198_event_data_in_channel_halt_out_0,
      probe_in22(31 downto 0) => postmem_rx09_doutb_out_0(31 downto 0),
      probe_in23(31 downto 0) => postmem_rx24_doutb_out_0(31 downto 0),
      probe_in24(31 downto 0) => ROTENC_decoder_Q(31 downto 0),
      probe_in25(3 downto 0) => ETH0_Q(3 downto 0),
      probe_in26(31 downto 0) => labtools_fmeter_0_F5(31 downto 0),
      probe_in27(31 downto 0) => labtools_fmeter_0_F6(31 downto 0),
      probe_in28(3 downto 0) => ETH0_m_mii_txd(3 downto 0),
      probe_in29(3 downto 0) => ETH0_s_mii_rxd(3 downto 0),
      probe_in3(31 downto 0) => lt_F3_CLK0(31 downto 0),
      probe_in30(0) => ETH0_s_mii_crs,
      probe_in31(0) => ETH0_s_mii_col,
      probe_in32(0) => ETH0_s_mii_rx_er,
      probe_in33(0) => ETH0_m_mii_tx_er,
      probe_in4(0) => labtools_fmeter_0_update,
      probe_in5(0) => SC0712_0_reset_out,
      probe_in6(31 downto 0) => SC0712_0_mon_GPIO1_O(31 downto 0),
      probe_in7(31 downto 0) => SC0712_0_mon_GPIO1_I(31 downto 0),
      probe_in8(31 downto 0) => lt_F4_TRX_LVDS_divclk(31 downto 0),
      probe_in9(0) => FPGA_IO_1,
      probe_out0(12 downto 0) => postmem_rx_addrb_in_0(12 downto 0)
    );
end STRUCTURE;
