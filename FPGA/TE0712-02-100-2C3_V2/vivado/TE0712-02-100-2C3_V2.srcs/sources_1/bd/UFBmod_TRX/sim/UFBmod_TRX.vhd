--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Thu Mar 11 17:01:35 2021
--Host        : DESKTOP-I3NV8HO running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_TRX.bd
--Design      : UFBmod_TRX
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PULLDATA_imp_1WTMK8 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_tx_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    encoder_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoder_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_empty : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ui_clk_sync_rst : in STD_LOGIC
  );
end PULLDATA_imp_1WTMK8;

architecture STRUCTURE of PULLDATA_imp_1WTMK8 is
  component UFBmod_TRX_pulldata_tx09_fifo_generator_0_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component UFBmod_TRX_pulldata_tx09_fifo_generator_0_1;
  component UFBmod_TRX_xlslice_7to0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_xlslice_7to0_1;
  component UFBmod_TRX_xlslice_30to30_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_30to30_1;
  component UFBmod_TRX_pulldata_tx09_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_pulldata_tx09_c_shift_ram_0_1;
  component UFBmod_TRX_pulldata_tx09_util_reduced_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  end component UFBmod_TRX_pulldata_tx09_util_reduced_logic_0_1;
  component UFBmod_TRX_xlslice_14to8_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component UFBmod_TRX_xlslice_14to8_1;
  component UFBmod_TRX_xlslice_29to29_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_29to29_1;
  component UFBmod_TRX_xlslice_28to28_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_28to28_1;
  component UFBmod_TRX_pulldata_tx09_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_pulldata_tx09_util_vector_logic_0_1;
  component UFBmod_TRX_pulldata_tx09_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component UFBmod_TRX_pulldata_tx09_xlconcat_1_1;
  component UFBmod_TRX_xlconcat_0_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_xlconcat_0_3;
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^trx_tx_rf09_pulldata_fifo_empty\ : STD_LOGIC;
  signal TRX_tx_data_count_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pulldata_tx09_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pulldata_tx09_en_1 : STD_LOGIC;
  signal pulldata_tx09_fifo_generator_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pulldata_tx09_util_reduced_logic_0_Res : STD_LOGIC;
  signal pulldata_tx09_util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pulldata_tx09_xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal ui_clk_sync_rst_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_15to8_Dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlslice_28to28_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_29to29_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_30to30_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_7to0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pulldata_tx09_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
begin
  Din_1(31 downto 0) <= Din(31 downto 0);
  TRX_TX_RF09_PULLDATA_FIFO_empty <= \^trx_tx_rf09_pulldata_fifo_empty\;
  TRX_tx_data_count(11 downto 0) <= TRX_tx_data_count_0(11 downto 0);
  encoder_pull_FIFO_dump(0) <= xlslice_28to28_Dout(0);
  encoder_pull_data_len(6 downto 0) <= xlslice_15to8_Dout(6 downto 0);
  encoder_pull_do_start(0) <= xlslice_29to29_Dout(0);
  fifo_empty(31 downto 0) <= xlconcat_0_dout(31 downto 0);
  pulldata_tx09_byteData(7 downto 0) <= pulldata_tx09_fifo_generator_0_dout(7 downto 0);
  pulldata_tx09_en_1 <= pulldata_tx09_en;
  s_axi_aclk_1 <= s_axi_aclk;
  ui_clk_sync_rst_1 <= ui_clk_sync_rst;
pulldata_tx09_c_shift_ram_0: component UFBmod_TRX_pulldata_tx09_c_shift_ram_0_1
     port map (
      CLK => s_axi_aclk_1,
      D(0) => xlslice_30to30_Dout(0),
      Q(0) => pulldata_tx09_c_shift_ram_0_Q(0),
      SCLR => ui_clk_sync_rst_1
    );
pulldata_tx09_fifo_generator_0: component UFBmod_TRX_pulldata_tx09_fifo_generator_0_1
     port map (
      clk => s_axi_aclk_1,
      data_count(11 downto 0) => TRX_tx_data_count_0(11 downto 0),
      din(7 downto 0) => xlslice_7to0_Dout(7 downto 0),
      dout(7 downto 0) => pulldata_tx09_fifo_generator_0_dout(7 downto 0),
      empty => \^trx_tx_rf09_pulldata_fifo_empty\,
      full => NLW_pulldata_tx09_fifo_generator_0_full_UNCONNECTED,
      rd_en => pulldata_tx09_en_1,
      srst => ui_clk_sync_rst_1,
      wr_en => pulldata_tx09_util_reduced_logic_0_Res
    );
pulldata_tx09_util_reduced_logic_0: component UFBmod_TRX_pulldata_tx09_util_reduced_logic_0_1
     port map (
      Op1(1 downto 0) => pulldata_tx09_xlconcat_1_dout(1 downto 0),
      Res => pulldata_tx09_util_reduced_logic_0_Res
    );
pulldata_tx09_util_vector_logic_0: component UFBmod_TRX_pulldata_tx09_util_vector_logic_0_1
     port map (
      Op1(0) => pulldata_tx09_c_shift_ram_0_Q(0),
      Res(0) => pulldata_tx09_util_vector_logic_0_Res(0)
    );
pulldata_tx09_xlconcat_1: component UFBmod_TRX_pulldata_tx09_xlconcat_1_1
     port map (
      In0(0) => xlslice_30to30_Dout(0),
      In1(0) => pulldata_tx09_util_vector_logic_0_Res(0),
      dout(1 downto 0) => pulldata_tx09_xlconcat_1_dout(1 downto 0)
    );
xlconcat_0: component UFBmod_TRX_xlconcat_0_3
     port map (
      In0(30 downto 0) => B"0000000000000000000000000000000",
      In1(0) => \^trx_tx_rf09_pulldata_fifo_empty\,
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
xlslice_14to8: component UFBmod_TRX_xlslice_14to8_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(6 downto 0) => xlslice_15to8_Dout(6 downto 0)
    );
xlslice_28to28: component UFBmod_TRX_xlslice_28to28_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_28to28_Dout(0)
    );
xlslice_29to29: component UFBmod_TRX_xlslice_29to29_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_29to29_Dout(0)
    );
xlslice_30to30: component UFBmod_TRX_xlslice_30to30_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_30to30_Dout(0)
    );
xlslice_7to0: component UFBmod_TRX_xlslice_7to0_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(7 downto 0) => xlslice_7to0_Dout(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PUSHDATA_imp_TPI30Q is
  port (
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_wr_en : in STD_LOGIC;
    TRX_RX_PUSHDATA_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_mig_7series_0_100M_peripheral_reset_in : in STD_LOGIC;
    s_axi_aclk_CD100_in : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end PUSHDATA_imp_TPI30Q;

architecture STRUCTURE of PUSHDATA_imp_TPI30Q is
  component UFBmod_TRX_pushdata_rx09_xlslice_31to16_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_pushdata_rx09_xlslice_31to16_1;
  component UFBmod_TRX_pushdata_rx09_xlslice_8to8_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_pushdata_rx09_xlslice_8to8_1;
  component UFBmod_TRX_fifo_generator_0_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component UFBmod_TRX_fifo_generator_0_1;
  component UFBmod_TRX_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  end component UFBmod_TRX_util_reduced_logic_0_0;
  component UFBmod_TRX_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_c_shift_ram_0_0;
  component UFBmod_TRX_TRX_FIFO_Arbiter_0_0 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch00_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch00_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_wr_en : out STD_LOGIC;
    TRX_PUSHDATA_din : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_TRX_FIFO_Arbiter_0_0;
  component UFBmod_TRX_pushdata_rx09_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 21 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_pushdata_rx09_xlconcat_0_1;
  component UFBmod_TRX_xlconcat_0_4 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component UFBmod_TRX_xlconcat_0_4;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch00_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch01_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch02_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch03_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch04_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch05_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch06_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch07_grant : STD_LOGIC;
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_FIFO_Arbiter_0_TRX_PUSHDATA_wr_en : STD_LOGIC;
  signal TRX_PUSHDATA_ch00_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch01_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch02_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch03_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch04_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch05_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch06_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch07_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_wr_en_1 : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal pushdata_rx09_axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pushdata_rx09_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pushdata_rx09_util_reduced_logic_0_Res : STD_LOGIC;
  signal pushdata_rx09_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pushdata_rx09_xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pushdata_rx09_xlslice_18to0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pushdata_rx09_xlslice_8to8_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_reset_in_1 : STD_LOGIC;
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
begin
  TRX_PUSHDATA_ch00_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch00_grant;
  TRX_PUSHDATA_ch00_req_1 <= TRX_PUSHDATA_ch00_req;
  TRX_PUSHDATA_ch01_din_1(7 downto 0) <= TRX_PUSHDATA_ch01_din(7 downto 0);
  TRX_PUSHDATA_ch01_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch01_grant;
  TRX_PUSHDATA_ch01_req_1 <= TRX_PUSHDATA_ch01_req;
  TRX_PUSHDATA_ch01_wr_en_1 <= TRX_PUSHDATA_ch01_wr_en;
  TRX_PUSHDATA_ch02_din_1(7 downto 0) <= TRX_PUSHDATA_ch02_din(7 downto 0);
  TRX_PUSHDATA_ch02_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch02_grant;
  TRX_PUSHDATA_ch02_req_1 <= TRX_PUSHDATA_ch02_req;
  TRX_PUSHDATA_ch02_wr_en_1 <= TRX_PUSHDATA_ch02_wr_en;
  TRX_PUSHDATA_ch03_din_1(7 downto 0) <= TRX_PUSHDATA_ch03_din(7 downto 0);
  TRX_PUSHDATA_ch03_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch03_grant;
  TRX_PUSHDATA_ch03_req_1 <= TRX_PUSHDATA_ch03_req;
  TRX_PUSHDATA_ch03_wr_en_1 <= TRX_PUSHDATA_ch03_wr_en;
  TRX_PUSHDATA_ch04_din_1(7 downto 0) <= TRX_PUSHDATA_ch04_din(7 downto 0);
  TRX_PUSHDATA_ch04_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch04_grant;
  TRX_PUSHDATA_ch04_req_1 <= TRX_PUSHDATA_ch04_req;
  TRX_PUSHDATA_ch04_wr_en_1 <= TRX_PUSHDATA_ch04_wr_en;
  TRX_PUSHDATA_ch05_din_1(7 downto 0) <= TRX_PUSHDATA_ch05_din(7 downto 0);
  TRX_PUSHDATA_ch05_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch05_grant;
  TRX_PUSHDATA_ch05_req_1 <= TRX_PUSHDATA_ch05_req;
  TRX_PUSHDATA_ch05_wr_en_1 <= TRX_PUSHDATA_ch05_wr_en;
  TRX_PUSHDATA_ch06_din_1(7 downto 0) <= TRX_PUSHDATA_ch06_din(7 downto 0);
  TRX_PUSHDATA_ch06_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch06_grant;
  TRX_PUSHDATA_ch06_req_1 <= TRX_PUSHDATA_ch06_req;
  TRX_PUSHDATA_ch06_wr_en_1 <= TRX_PUSHDATA_ch06_wr_en;
  TRX_PUSHDATA_ch07_din_1(7 downto 0) <= TRX_PUSHDATA_ch07_din(7 downto 0);
  TRX_PUSHDATA_ch07_grant <= TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch07_grant;
  TRX_PUSHDATA_ch07_req_1 <= TRX_PUSHDATA_ch07_req;
  TRX_PUSHDATA_ch07_wr_en_1 <= TRX_PUSHDATA_ch07_wr_en;
  TRX_PUSHDATA_din_1(7 downto 0) <= TRX_PUSHDATA_din(7 downto 0);
  TRX_PUSHDATA_wr_en_1 <= TRX_PUSHDATA_wr_en;
  TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) <= pushdata_rx09_xlconcat_0_dout(31 downto 0);
  decoder_rx09_squelch_lvl(15 downto 0) <= pushdata_rx09_xlslice_18to0_Dout(15 downto 0);
  pushdata_rx09_axi_gpio_0_gpio2_io_o(31 downto 0) <= TRX_RX_PUSHDATA_GPIO2_o(31 downto 0);
  rst_mig_7series_0_100M_peripheral_reset_in_1 <= rst_mig_7series_0_100M_peripheral_reset_in;
  s_axi_aclk_CD100_0 <= s_axi_aclk_CD100_in;
TRX_FIFO_Arbiter_0: component UFBmod_TRX_TRX_FIFO_Arbiter_0_0
     port map (
      TRX_PUSHDATA_ch00_din(7 downto 0) => TRX_PUSHDATA_din_1(7 downto 0),
      TRX_PUSHDATA_ch00_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch00_grant,
      TRX_PUSHDATA_ch00_req => TRX_PUSHDATA_ch00_req_1,
      TRX_PUSHDATA_ch00_wr_en => TRX_PUSHDATA_wr_en_1,
      TRX_PUSHDATA_ch01_din(7 downto 0) => TRX_PUSHDATA_ch01_din_1(7 downto 0),
      TRX_PUSHDATA_ch01_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch01_grant,
      TRX_PUSHDATA_ch01_req => TRX_PUSHDATA_ch01_req_1,
      TRX_PUSHDATA_ch01_wr_en => TRX_PUSHDATA_ch01_wr_en_1,
      TRX_PUSHDATA_ch02_din(7 downto 0) => TRX_PUSHDATA_ch02_din_1(7 downto 0),
      TRX_PUSHDATA_ch02_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch02_grant,
      TRX_PUSHDATA_ch02_req => TRX_PUSHDATA_ch02_req_1,
      TRX_PUSHDATA_ch02_wr_en => TRX_PUSHDATA_ch02_wr_en_1,
      TRX_PUSHDATA_ch03_din(7 downto 0) => TRX_PUSHDATA_ch03_din_1(7 downto 0),
      TRX_PUSHDATA_ch03_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch03_grant,
      TRX_PUSHDATA_ch03_req => TRX_PUSHDATA_ch03_req_1,
      TRX_PUSHDATA_ch03_wr_en => TRX_PUSHDATA_ch03_wr_en_1,
      TRX_PUSHDATA_ch04_din(7 downto 0) => TRX_PUSHDATA_ch04_din_1(7 downto 0),
      TRX_PUSHDATA_ch04_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch04_grant,
      TRX_PUSHDATA_ch04_req => TRX_PUSHDATA_ch04_req_1,
      TRX_PUSHDATA_ch04_wr_en => TRX_PUSHDATA_ch04_wr_en_1,
      TRX_PUSHDATA_ch05_din(7 downto 0) => TRX_PUSHDATA_ch05_din_1(7 downto 0),
      TRX_PUSHDATA_ch05_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch05_grant,
      TRX_PUSHDATA_ch05_req => TRX_PUSHDATA_ch05_req_1,
      TRX_PUSHDATA_ch05_wr_en => TRX_PUSHDATA_ch05_wr_en_1,
      TRX_PUSHDATA_ch06_din(7 downto 0) => TRX_PUSHDATA_ch06_din_1(7 downto 0),
      TRX_PUSHDATA_ch06_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch06_grant,
      TRX_PUSHDATA_ch06_req => TRX_PUSHDATA_ch06_req_1,
      TRX_PUSHDATA_ch06_wr_en => TRX_PUSHDATA_ch06_wr_en_1,
      TRX_PUSHDATA_ch07_din(7 downto 0) => TRX_PUSHDATA_ch07_din_1(7 downto 0),
      TRX_PUSHDATA_ch07_grant => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch07_grant,
      TRX_PUSHDATA_ch07_req => TRX_PUSHDATA_ch07_req_1,
      TRX_PUSHDATA_ch07_wr_en => TRX_PUSHDATA_ch07_wr_en_1,
      TRX_PUSHDATA_din(7 downto 0) => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_din(7 downto 0),
      TRX_PUSHDATA_wr_en => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_wr_en,
      clk_100MHz => s_axi_aclk_CD100_0,
      reset_100MHz => rst_mig_7series_0_100M_peripheral_reset_in_1
    );
fifo_generator_0: component UFBmod_TRX_fifo_generator_0_1
     port map (
      clk => s_axi_aclk_CD100_0,
      din(7 downto 0) => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_din(7 downto 0),
      dout(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_en => pushdata_rx09_util_reduced_logic_0_Res,
      srst => rst_mig_7series_0_100M_peripheral_reset_in_1,
      wr_en => TRX_FIFO_Arbiter_0_TRX_PUSHDATA_wr_en
    );
pushdata_rx09_c_shift_ram_0: component UFBmod_TRX_c_shift_ram_0_0
     port map (
      CLK => s_axi_aclk_CD100_0,
      D(0) => pushdata_rx09_xlslice_8to8_Dout(0),
      Q(0) => pushdata_rx09_c_shift_ram_0_Q(0)
    );
pushdata_rx09_util_reduced_logic_0: component UFBmod_TRX_util_reduced_logic_0_0
     port map (
      Op1(1 downto 0) => pushdata_rx09_xlconcat_1_dout(1 downto 0),
      Res => pushdata_rx09_util_reduced_logic_0_Res
    );
pushdata_rx09_xlconcat_0: component UFBmod_TRX_pushdata_rx09_xlconcat_0_1
     port map (
      In0(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      In1(21 downto 0) => B"0000000000000000000000",
      In2(0) => fifo_generator_0_empty,
      In3(0) => fifo_generator_0_full,
      dout(31 downto 0) => pushdata_rx09_xlconcat_0_dout(31 downto 0)
    );
pushdata_rx09_xlconcat_1: component UFBmod_TRX_xlconcat_0_4
     port map (
      In0(0) => pushdata_rx09_xlslice_8to8_Dout(0),
      In1(0) => pushdata_rx09_c_shift_ram_0_Q(0),
      dout(1 downto 0) => pushdata_rx09_xlconcat_1_dout(1 downto 0)
    );
pushdata_rx09_xlslice_31to16: component UFBmod_TRX_pushdata_rx09_xlslice_31to16_1
     port map (
      Din(31 downto 0) => pushdata_rx09_axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(15 downto 0) => pushdata_rx09_xlslice_18to0_Dout(15 downto 0)
    );
pushdata_rx09_xlslice_8to8: component UFBmod_TRX_pushdata_rx09_xlslice_8to8_1
     port map (
      Din(31 downto 0) => pushdata_rx09_axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => pushdata_rx09_xlslice_8to8_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_clock_imp_1A7SU8Q is
  port (
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    clk_trx_26MHz_vio : out STD_LOGIC;
    clk_trx_pll_25MHz_vio : out STD_LOGIC;
    locked : out STD_LOGIC
  );
end TRX_clock_imp_1A7SU8Q;

architecture STRUCTURE of TRX_clock_imp_1A7SU8Q is
  component UFBmod_TRX_TRX_PLL_clk_wiz_0_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clkfb_in : in STD_LOGIC;
    clk_out1_25MHz : out STD_LOGIC;
    clk_trx_26MHz_vio : out STD_LOGIC;
    clk_trx_pll_25MHz_vio : out STD_LOGIC;
    clkfb_out : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component UFBmod_TRX_TRX_PLL_clk_wiz_0_1;
  component UFBmod_TRX_TRX_PLL_util_ds_buf_0_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_PLL_util_ds_buf_0_1;
  signal TRX_PLL_clk_wiz_0_25MHz_vio : STD_LOGIC;
  signal TRX_PLL_clk_wiz_0_26MHz_vio : STD_LOGIC;
  signal TRX_PLL_clk_wiz_0_clk_in1_26MHz_0 : STD_LOGIC;
  signal TRX_PLL_clk_wiz_0_clk_out1_25MHz_0 : STD_LOGIC;
  signal TRX_PLL_clk_wiz_0_clkfb_out_0 : STD_LOGIC;
  signal TRX_PLL_clk_wiz_0_locked_0 : STD_LOGIC;
  signal TRX_PLL_util_ds_buf_0_OBUF_DS_n_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_PLL_util_ds_buf_0_OBUF_DS_p_0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  TRX_PLL_clk_25MHz_N(0) <= TRX_PLL_util_ds_buf_0_OBUF_DS_n_0(0);
  TRX_PLL_clk_25MHz_P(0) <= TRX_PLL_util_ds_buf_0_OBUF_DS_p_0(0);
  TRX_PLL_clk_wiz_0_clk_in1_26MHz_0 <= TRX_clk_26MHz;
  clk_trx_26MHz_vio <= TRX_PLL_clk_wiz_0_26MHz_vio;
  clk_trx_pll_25MHz_vio <= TRX_PLL_clk_wiz_0_25MHz_vio;
  locked <= TRX_PLL_clk_wiz_0_locked_0;
TRX_PLL_clk_wiz_0: component UFBmod_TRX_TRX_PLL_clk_wiz_0_1
     port map (
      clk_in1 => TRX_PLL_clk_wiz_0_clk_in1_26MHz_0,
      clk_out1_25MHz => TRX_PLL_clk_wiz_0_clk_out1_25MHz_0,
      clk_trx_26MHz_vio => TRX_PLL_clk_wiz_0_26MHz_vio,
      clk_trx_pll_25MHz_vio => TRX_PLL_clk_wiz_0_25MHz_vio,
      clkfb_in => TRX_PLL_clk_wiz_0_clkfb_out_0,
      clkfb_out => TRX_PLL_clk_wiz_0_clkfb_out_0,
      locked => TRX_PLL_clk_wiz_0_locked_0
    );
TRX_PLL_util_ds_buf_0: component UFBmod_TRX_TRX_PLL_util_ds_buf_0_1
     port map (
      OBUF_DS_N(0) => TRX_PLL_util_ds_buf_0_OBUF_DS_n_0(0),
      OBUF_DS_P(0) => TRX_PLL_util_ds_buf_0_OBUF_DS_p_0(0),
      OBUF_IN(0) => TRX_PLL_clk_wiz_0_clk_out1_25MHz_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_config_imp_1VZ7P75 is
  port (
    LVDS_tx_blank : out STD_LOGIC_VECTOR ( 0 to 0 );
    Status_LVDS_rx09_synced : in STD_LOGIC_VECTOR ( 0 to 0 );
    Status_LVDS_rx24_synced : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_CONFIG_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    locked : in STD_LOGIC;
    proc_sys_reset_aux : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end TRX_config_imp_1VZ7P75;

architecture STRUCTURE of TRX_config_imp_1VZ7P75 is
  component UFBmod_TRX_TRX_gpio_xlslice_31downto31_resetn_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_gpio_xlslice_31downto31_resetn_0_1;
  component UFBmod_TRX_TRX_gpio_xlslice_30downto30_rfxmode_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_gpio_xlslice_30downto30_rfxmode_0_1;
  component UFBmod_TRX_TRX_gpio_xlslice_0downto0_blankTx_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_gpio_xlslice_0downto0_blankTx_0_1;
  component UFBmod_TRX_TRX_gpio_xlslice_0to0_blankTx_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_gpio_xlslice_0to0_blankTx_0_0;
  component UFBmod_TRX_TRX_gpio_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 28 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_gpio_xlconcat_0_1;
  signal TRX_gpio_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_gpio_xlslice_0to0_resetn_dout_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_gpio_xlslice_1to1_blankTx_dout_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_gpio_xlslice_1to1_rfxmode_dout_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_rf09_LVDS_status_synced_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_rf24_LVDS_status_synced_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_TRX_gpio_0_gpio_io_o_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal locked_0 : STD_LOGIC;
  signal proc_sys_reset_aux_0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  LVDS_tx_blank(0) <= TRX_gpio_xlslice_1to1_blankTx_dout_0(0);
  TRX_CONFIG_GPIO2_i(31 downto 0) <= TRX_gpio_xlconcat_0_dout(31 downto 0);
  TRX_resetn(0) <= TRX_gpio_xlslice_0to0_resetn_dout_0(0);
  TRX_rfx_mode(0) <= TRX_gpio_xlslice_1to1_rfxmode_dout_0(0);
  TRX_rx_rf09_LVDS_status_synced_0(0) <= Status_LVDS_rx09_synced(0);
  TRX_rx_rf24_LVDS_status_synced_0(0) <= Status_LVDS_rx24_synced(0);
  axi_TRX_gpio_0_gpio_io_o_0(31 downto 0) <= TRX_CONFIG_GPIO1_o(31 downto 0);
  locked_0 <= locked;
  proc_sys_reset_aux(0) <= proc_sys_reset_aux_0(0);
TRX_gpio_xlconcat_0: component UFBmod_TRX_TRX_gpio_xlconcat_0_1
     port map (
      In0(0) => locked_0,
      In1(0) => TRX_rx_rf09_LVDS_status_synced_0(0),
      In2(0) => TRX_rx_rf24_LVDS_status_synced_0(0),
      In3(28 downto 0) => B"00000000000000000000000000000",
      dout(31 downto 0) => TRX_gpio_xlconcat_0_dout(31 downto 0)
    );
TRX_gpio_xlslice_0to0_blankTx_0: component UFBmod_TRX_TRX_gpio_xlslice_0downto0_blankTx_0_1
     port map (
      Din(31 downto 0) => axi_TRX_gpio_0_gpio_io_o_0(31 downto 0),
      Dout(0) => TRX_gpio_xlslice_1to1_blankTx_dout_0(0)
    );
TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0: component UFBmod_TRX_TRX_gpio_xlslice_0to0_blankTx_0_0
     port map (
      Din(31 downto 0) => axi_TRX_gpio_0_gpio_io_o_0(31 downto 0),
      Dout(0) => proc_sys_reset_aux_0(0)
    );
TRX_gpio_xlslice_30to30_rfxmode_0: component UFBmod_TRX_TRX_gpio_xlslice_30downto30_rfxmode_0_1
     port map (
      Din(31 downto 0) => axi_TRX_gpio_0_gpio_io_o_0(31 downto 0),
      Dout(0) => TRX_gpio_xlslice_1to1_rfxmode_dout_0(0)
    );
TRX_gpio_xlslice_31to31_resetn_0: component UFBmod_TRX_TRX_gpio_xlslice_31downto31_resetn_0_1
     port map (
      Din(31 downto 0) => axi_TRX_gpio_0_gpio_io_o_0(31 downto 0),
      Dout(0) => TRX_gpio_xlslice_0to0_resetn_dout_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx09_concat_imp_1KKL3Z9 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx09_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TRX_rx09_concat_imp_1KKL3Z9;

architecture STRUCTURE of TRX_rx09_concat_imp_1KKL3Z9 is
  component UFBmod_TRX_TRX_rx_xlslice_00to00_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_00to00_1;
  component UFBmod_TRX_TRX_rx_xlslice_02to02_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_02to02_1;
  component UFBmod_TRX_TRX_rx_xlslice_04to04_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_04to04_1;
  component UFBmod_TRX_TRX_rx_xlslice_06to06_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_06to06_1;
  component UFBmod_TRX_TRX_rx_xlslice_10to10_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_10to10_1;
  component UFBmod_TRX_TRX_rx_xlslice_12to12_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_12to12_1;
  component UFBmod_TRX_TRX_rx_xlslice_14to14_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_14to14_1;
  component UFBmod_TRX_TRX_rx_xlslice_08to08_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_08to08_1;
  component UFBmod_TRX_TRX_rx09_xlconcat_0_1 is
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
  end component UFBmod_TRX_TRX_rx09_xlconcat_0_1;
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
TRX_rx09_xlconcat_0: component UFBmod_TRX_TRX_rx09_xlconcat_0_1
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
TRX_rx_xlslice_00to00: component UFBmod_TRX_TRX_rx_xlslice_00to00_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_14to14_Dout(0)
    );
TRX_rx_xlslice_02to02: component UFBmod_TRX_TRX_rx_xlslice_02to02_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_12to12_Dout(0)
    );
TRX_rx_xlslice_04to04: component UFBmod_TRX_TRX_rx_xlslice_04to04_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_10to10_Dout(0)
    );
TRX_rx_xlslice_06to06: component UFBmod_TRX_TRX_rx_xlslice_06to06_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_08to08_Dout(0)
    );
TRX_rx_xlslice_08to08: component UFBmod_TRX_TRX_rx_xlslice_08to08_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_06to06_Dout(0)
    );
TRX_rx_xlslice_10to10: component UFBmod_TRX_TRX_rx_xlslice_10to10_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_04to04_Dout(0)
    );
TRX_rx_xlslice_12to12: component UFBmod_TRX_TRX_rx_xlslice_12to12_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_02to02_Dout(0)
    );
TRX_rx_xlslice_14to14: component UFBmod_TRX_TRX_rx_xlslice_14to14_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_00to00_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx24_concat_imp_LD03GF is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx24_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TRX_rx24_concat_imp_LD03GF;

architecture STRUCTURE of TRX_rx24_concat_imp_LD03GF is
  component UFBmod_TRX_TRX_rx_xlslice_15to15_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_15to15_1;
  component UFBmod_TRX_TRX_rx_xlslice_13to13_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_13to13_1;
  component UFBmod_TRX_TRX_rx_xlslice_11to11_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_11to11_1;
  component UFBmod_TRX_TRX_rx_xlslice_09to09_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_09to09_1;
  component UFBmod_TRX_TRX_rx_xlslice_07to07_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_07to07_1;
  component UFBmod_TRX_TRX_rx_xlslice_05to05_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_05to05_1;
  component UFBmod_TRX_TRX_rx_xlslice_03to03_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_03to03_1;
  component UFBmod_TRX_TRX_rx_xlslice_01to01_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_rx_xlslice_01to01_1;
  component UFBmod_TRX_TRX_rx24_xlconcat_0_1 is
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
  end component UFBmod_TRX_TRX_rx24_xlconcat_0_1;
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
TRX_rx24_xlconcat_0: component UFBmod_TRX_TRX_rx24_xlconcat_0_1
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
TRX_rx_xlslice_01to01: component UFBmod_TRX_TRX_rx_xlslice_01to01_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_15to15_Dout(0)
    );
TRX_rx_xlslice_03to03: component UFBmod_TRX_TRX_rx_xlslice_03to03_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_13to13_Dout(0)
    );
TRX_rx_xlslice_05to05: component UFBmod_TRX_TRX_rx_xlslice_05to05_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_11to11_Dout(0)
    );
TRX_rx_xlslice_07to07: component UFBmod_TRX_TRX_rx_xlslice_07to07_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_09to09_Dout(0)
    );
TRX_rx_xlslice_09to09: component UFBmod_TRX_TRX_rx_xlslice_09to09_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_07to07_Dout(0)
    );
TRX_rx_xlslice_11to11: component UFBmod_TRX_TRX_rx_xlslice_11to11_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_05to05_Dout(0)
    );
TRX_rx_xlslice_13to13: component UFBmod_TRX_TRX_rx_xlslice_13to13_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_03to03_Dout(0)
    );
TRX_rx_xlslice_15to15: component UFBmod_TRX_TRX_rx_xlslice_15to15_1
     port map (
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(0) => TRX_rx_xlslice_01to01_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_tx_concat_imp_18SKXTB is
  port (
    TRX_config_LVDS_tx_blank_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx09_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_tx_data_out_from_device_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_im_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    clk_div_out : in STD_LOGIC
  );
end TRX_tx_concat_imp_18SKXTB;

architecture STRUCTURE of TRX_tx_concat_imp_18SKXTB is
  component UFBmod_TRX_xlslice_00to00_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_00to00_1;
  component UFBmod_TRX_xlslice_01to01_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_01to01_1;
  component UFBmod_TRX_xlslice_02to02_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_02to02_1;
  component UFBmod_TRX_xlslice_03to03_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_03to03_1;
  component UFBmod_TRX_xlslice_04to04_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_04to04_1;
  component UFBmod_TRX_xlslice_05to05_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_05to05_1;
  component UFBmod_TRX_xlslice_06to06_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_06to06_1;
  component UFBmod_TRX_xlslice_07to07_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlslice_07to07_1;
  component UFBmod_TRX_xlconstant_val0_len1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val0_len1_2;
  component UFBmod_TRX_xlconstant_val1_len1_5 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val1_len1_5;
  component UFBmod_TRX_TRX_blank_tx_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_blank_tx_c_shift_ram_0_1;
  component UFBmod_TRX_TRX_blank_tx_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_TRX_blank_tx_util_vector_logic_0_1;
  component UFBmod_TRX_TRX_blank_tx_util_vector_logic_1_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_blank_tx_util_vector_logic_1_1;
  component UFBmod_TRX_TRX_blank_tx_xlconcat_0_1 is
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
  end component UFBmod_TRX_TRX_blank_tx_xlconcat_0_1;
  component UFBmod_TRX_TRX_tx_LVDS_interleave_xlconcat_0_1 is
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
  end component UFBmod_TRX_TRX_tx_LVDS_interleave_xlconcat_0_1;
  component UFBmod_TRX_TRX_tx_word_format_xlconcat_0_1 is
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
  end component UFBmod_TRX_TRX_tx_word_format_xlconcat_0_1;
  signal TRX_blank_tx_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_blank_tx_util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_blank_tx_xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_config_LVDS_tx_blank_in_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_config_LVDS_tx_blankn_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx09_fifo_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_LVDS_interleave_xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_PTT_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_word_format_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_div_out_1 : STD_LOGIC;
  signal xlconstant_val0_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_val1_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_00to00_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_01to01_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_02to02_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_03to03_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_04to04_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_05to05_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_06to06_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_07to07_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  TRX_config_LVDS_tx_blank_in_1(0) <= TRX_config_LVDS_tx_blank_in(0);
  TRX_tx09_fifo_din(31 downto 0) <= TRX_tx_word_format_xlconcat_0_dout(31 downto 0);
  TRX_tx09_fifo_dout_0(7 downto 0) <= TRX_tx09_fifo_dout(7 downto 0);
  TRX_tx_PTT_in_0(0) <= TRX_dds_tx_rf09_ptt(0);
  TRX_tx_data_out_from_device_in(15 downto 0) <= TRX_blank_tx_util_vector_logic_0_Res(15 downto 0);
  TRX_tx_im_out_0(20 downto 8) <= TRX_tx_im_out(20 downto 8);
  TRX_tx_re_out_0(20 downto 8) <= TRX_tx_re_out(20 downto 8);
  clk_div_out_1 <= clk_div_out;
TRX_blank_tx_c_shift_ram_0: component UFBmod_TRX_TRX_blank_tx_c_shift_ram_0_1
     port map (
      CLK => clk_div_out_1,
      D(0) => TRX_config_LVDS_tx_blank_in_1(0),
      Q(0) => TRX_blank_tx_c_shift_ram_0_Q(0)
    );
TRX_blank_tx_util_vector_logic_0: component UFBmod_TRX_TRX_blank_tx_util_vector_logic_0_1
     port map (
      Op1(15 downto 0) => TRX_tx_LVDS_interleave_xlconcat_0_dout(15 downto 0),
      Op2(15 downto 0) => TRX_blank_tx_xlconcat_0_dout(15 downto 0),
      Res(15 downto 0) => TRX_blank_tx_util_vector_logic_0_Res(15 downto 0)
    );
TRX_blank_tx_util_vector_logic_1: component UFBmod_TRX_TRX_blank_tx_util_vector_logic_1_1
     port map (
      Op1(0) => TRX_blank_tx_c_shift_ram_0_Q(0),
      Res(0) => TRX_config_LVDS_tx_blankn_0(0)
    );
TRX_blank_tx_xlconcat_0: component UFBmod_TRX_TRX_blank_tx_xlconcat_0_1
     port map (
      In0(0) => TRX_config_LVDS_tx_blankn_0(0),
      In1(0) => TRX_config_LVDS_tx_blankn_0(0),
      In10(0) => TRX_config_LVDS_tx_blankn_0(0),
      In11(0) => TRX_config_LVDS_tx_blankn_0(0),
      In12(0) => TRX_config_LVDS_tx_blankn_0(0),
      In13(0) => TRX_config_LVDS_tx_blankn_0(0),
      In14(0) => TRX_config_LVDS_tx_blankn_0(0),
      In15(0) => TRX_config_LVDS_tx_blankn_0(0),
      In2(0) => TRX_config_LVDS_tx_blankn_0(0),
      In3(0) => TRX_config_LVDS_tx_blankn_0(0),
      In4(0) => TRX_config_LVDS_tx_blankn_0(0),
      In5(0) => TRX_config_LVDS_tx_blankn_0(0),
      In6(0) => TRX_config_LVDS_tx_blankn_0(0),
      In7(0) => TRX_config_LVDS_tx_blankn_0(0),
      In8(0) => TRX_config_LVDS_tx_blankn_0(0),
      In9(0) => TRX_config_LVDS_tx_blankn_0(0),
      dout(15 downto 0) => TRX_blank_tx_xlconcat_0_dout(15 downto 0)
    );
TRX_tx_LVDS_interleave_xlconcat_0: component UFBmod_TRX_TRX_tx_LVDS_interleave_xlconcat_0_1
     port map (
      In0(0) => xlslice_07to07_Dout(0),
      In1(0) => xlconstant_val0_len1_dout(0),
      In10(0) => xlslice_02to02_Dout(0),
      In11(0) => xlconstant_val0_len1_dout(0),
      In12(0) => xlslice_01to01_Dout(0),
      In13(0) => xlconstant_val0_len1_dout(0),
      In14(0) => xlslice_00to00_Dout(0),
      In15(0) => xlconstant_val0_len1_dout(0),
      In2(0) => xlslice_06to06_Dout(0),
      In3(0) => xlconstant_val0_len1_dout(0),
      In4(0) => xlslice_05to05_Dout(0),
      In5(0) => xlconstant_val0_len1_dout(0),
      In6(0) => xlslice_04to04_Dout(0),
      In7(0) => xlconstant_val0_len1_dout(0),
      In8(0) => xlslice_03to03_Dout(0),
      In9(0) => xlconstant_val0_len1_dout(0),
      dout(15 downto 0) => TRX_tx_LVDS_interleave_xlconcat_0_dout(15 downto 0)
    );
TRX_tx_word_format_xlconcat_0: component UFBmod_TRX_TRX_tx_word_format_xlconcat_0_1
     port map (
      In0(0) => xlconstant_val0_len1_dout(0),
      In1(12 downto 0) => TRX_tx_im_out_0(20 downto 8),
      In2(0) => xlconstant_val1_len1_dout(0),
      In3(0) => xlconstant_val0_len1_dout(0),
      In4(0) => TRX_tx_PTT_in_0(0),
      In5(12 downto 0) => TRX_tx_re_out_0(20 downto 8),
      In6(0) => xlconstant_val0_len1_dout(0),
      In7(0) => xlconstant_val1_len1_dout(0),
      dout(31 downto 0) => TRX_tx_word_format_xlconcat_0_dout(31 downto 0)
    );
xlconstant_val0_len1: component UFBmod_TRX_xlconstant_val0_len1_2
     port map (
      dout(0) => xlconstant_val0_len1_dout(0)
    );
xlconstant_val1_len1: component UFBmod_TRX_xlconstant_val1_len1_5
     port map (
      dout(0) => xlconstant_val1_len1_dout(0)
    );
xlslice_00to00: component UFBmod_TRX_xlslice_00to00_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_00to00_Dout(0)
    );
xlslice_01to01: component UFBmod_TRX_xlslice_01to01_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_01to01_Dout(0)
    );
xlslice_02to02: component UFBmod_TRX_xlslice_02to02_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_02to02_Dout(0)
    );
xlslice_03to03: component UFBmod_TRX_xlslice_03to03_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_03to03_Dout(0)
    );
xlslice_04to04: component UFBmod_TRX_xlslice_04to04_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_04to04_Dout(0)
    );
xlslice_05to05: component UFBmod_TRX_xlslice_05to05_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_05to05_Dout(0)
    );
xlslice_06to06: component UFBmod_TRX_xlslice_06to06_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_06to06_Dout(0)
    );
xlslice_07to07: component UFBmod_TRX_xlslice_07to07_1
     port map (
      Din(7 downto 0) => TRX_tx09_fifo_dout_0(7 downto 0),
      Dout(0) => xlslice_07to07_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity delay_rx09_3459minus1024clk_imp_AONRGF is
  port (
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    premem_rx09_quarterfrm_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_CD100_i : in STD_LOGIC;
    s_axi_aclk_CD100_i : in STD_LOGIC
  );
end delay_rx09_3459minus1024clk_imp_AONRGF;

architecture STRUCTURE of delay_rx09_3459minus1024clk_imp_AONRGF is
  component UFBmod_TRX_c_shift_ram_dly386_1_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_c_shift_ram_dly386_1_1;
  component UFBmod_TRX_fifo_generator_dly2049_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component UFBmod_TRX_fifo_generator_dly2049_0_1;
  component UFBmod_TRX_xlconstant_val1_len1_6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val1_len1_6;
  component UFBmod_TRX_xlconcat_0_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_xlconcat_0_2;
  signal RF09_framectr_0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal RF09_quarterfrm_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal c_shift_ram_dly126_3_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC;
  signal s_axi_aclk_CD100 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_val1_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_generator_dly2049_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_dly2049_0_full_UNCONNECTED : STD_LOGIC;
begin
  RF09_framectr_0(29 downto 0) <= RF09_framectr(29 downto 0);
  RF09_quarterfrm_0(1 downto 0) <= RF09_quarterfrm(1 downto 0);
  premem_rx09_quarterfrm_out(31 downto 0) <= c_shift_ram_dly126_3_Q(31 downto 0);
  rst_mig_7series_0_100M_peripheral_reset <= reset_CD100_i;
  s_axi_aclk_CD100 <= s_axi_aclk_CD100_i;
c_shift_ram_dly386_1: component UFBmod_TRX_c_shift_ram_dly386_1_1
     port map (
      CLK => s_axi_aclk_CD100,
      D(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      Q(31 downto 0) => c_shift_ram_dly126_3_Q(31 downto 0),
      SCLR => rst_mig_7series_0_100M_peripheral_reset
    );
fifo_generator_dly2049_0: component UFBmod_TRX_fifo_generator_dly2049_0_1
     port map (
      clk => s_axi_aclk_CD100,
      din(31 downto 0) => xlconcat_0_dout(31 downto 0),
      dout(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      empty => NLW_fifo_generator_dly2049_0_empty_UNCONNECTED,
      full => NLW_fifo_generator_dly2049_0_full_UNCONNECTED,
      rd_en => xlconstant_val1_len1_dout(0),
      rst => rst_mig_7series_0_100M_peripheral_reset,
      wr_en => xlconstant_val1_len1_dout(0)
    );
xlconcat_0: component UFBmod_TRX_xlconcat_0_2
     port map (
      In0(1 downto 0) => RF09_quarterfrm_0(1 downto 0),
      In1(29 downto 0) => RF09_framectr_0(29 downto 0),
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
xlconstant_val1_len1: component UFBmod_TRX_xlconstant_val1_len1_6
     port map (
      dout(0) => xlconstant_val1_len1_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_LVDS_imp_GRAJC5 is
  port (
    TRX_LVDS_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_config_LVDS_tx_blank_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_io_reset_i : in STD_LOGIC;
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_clkdiv_16MHz_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz : in STD_LOGIC;
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_im_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : in STD_LOGIC_VECTOR ( 20 downto 8 );
    clk_rst_i : in STD_LOGIC;
    ref_clock_i : in STD_LOGIC;
    reset_CD100_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end TRX_LVDS_imp_GRAJC5;

architecture STRUCTURE of TRX_LVDS_imp_GRAJC5 is
  component UFBmod_TRX_TRX_rx09_fifo_generator_0_1 is
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
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component UFBmod_TRX_TRX_rx09_fifo_generator_0_1;
  component UFBmod_TRX_TRX_rx24_fifo_generator_0_1 is
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
  end component UFBmod_TRX_TRX_rx24_fifo_generator_0_1;
  component UFBmod_TRX_TRX_tx09_fifo_generator_0_1 is
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
  end component UFBmod_TRX_TRX_tx09_fifo_generator_0_1;
  component UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1 is
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
  end component UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1;
  component UFBmod_TRX_xlconstant_1_len1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_1_len1_1;
  component UFBmod_TRX_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component UFBmod_TRX_xlconstant_0_0;
  component UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1;
  signal Conn4_CLK_N : STD_LOGIC;
  signal Conn4_CLK_P : STD_LOGIC;
  signal TRX_LVDS_peripheral_reset_0 : STD_LOGIC;
  signal TRX_LVDS_rx_clkdiv_16MHz : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_LVDS_rx_data_n_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_LVDS_rx_data_p_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_LVDS_selectio_wiz_0_clk_div_out_0 : STD_LOGIC;
  signal TRX_LVDS_tx_rf09_DDS_ptt_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_LVDS_tx_rf09_concat_tx_blank_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_io_reset_0 : STD_LOGIC;
  signal TRX_rx_rf09_FIFO_generator_0_dout_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx_rf09_FIFO_generator_0_rd_data_count_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TRX_rx_rf09_FIFO_generator_0_valid_0 : STD_LOGIC;
  signal TRX_rx_rf09_LVDS_16bits_CD016_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_LVDS_concat_CD016_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf24_Concat_CD016_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf24_fifo_generator_0_dout_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx_rf24_fifo_generator_0_valid_0 : STD_LOGIC;
  signal TRX_tx_rf09_4to1_c_counter_binary_0_THRESH0_4MHz : STD_LOGIC;
  signal TRX_tx_rf09_Concat_data_out_from_device_in_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_rf09_FIFO_din_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_rf09_FIFO_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_rf09_LVDS_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_rf09_LVDS_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ref_clock_200MHz_0 : STD_LOGIC;
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal rx_clk_CD064_CLK_N : STD_LOGIC;
  signal rx_clk_CD064_CLK_P : STD_LOGIC;
  signal s_axi_aclk_100MHz_0 : STD_LOGIC;
  signal val1_len1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_val0_len2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_TRX_LVDS_selectio_wiz_0_delay_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
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
  TRX_LVDS_peripheral_reset_0 <= clk_rst_i;
  TRX_LVDS_rx_data_n_1(1 downto 0) <= TRX_rx_data_n(1 downto 0);
  TRX_LVDS_rx_data_p_1(1 downto 0) <= TRX_rx_data_p(1 downto 0);
  TRX_LVDS_tx09_fifo_din(31 downto 0) <= TRX_tx_rf09_FIFO_din_0(31 downto 0);
  TRX_LVDS_tx_rf09_DDS_ptt_0(0) <= TRX_dds_tx_rf09_ptt(0);
  TRX_LVDS_tx_rf09_concat_tx_blank_0(0) <= TRX_config_LVDS_tx_blank_in(0);
  TRX_io_reset_0 <= TRX_io_reset_i;
  TRX_rx09_fifo_o(31 downto 0) <= TRX_rx_rf09_FIFO_generator_0_dout_0(31 downto 0);
  TRX_rx09_fifo_valid_o <= TRX_rx_rf09_FIFO_generator_0_valid_0;
  TRX_rx24_fifo_o(31 downto 0) <= TRX_rx_rf24_fifo_generator_0_dout_0(31 downto 0);
  TRX_rx24_fifo_valid_o <= TRX_rx_rf24_fifo_generator_0_valid_0;
  TRX_rx_clkdiv_16MHz_o(0) <= TRX_LVDS_rx_clkdiv_16MHz(0);
  TRX_rx_rd_data_count(3 downto 0) <= TRX_rx_rf09_FIFO_generator_0_rd_data_count_0(3 downto 0);
  TRX_tx_clk_clk_n <= Conn4_CLK_N;
  TRX_tx_clk_clk_p <= Conn4_CLK_P;
  TRX_tx_data_n(1 downto 0) <= TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_n(1 downto 0);
  TRX_tx_data_p(1 downto 0) <= TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_p(1 downto 0);
  TRX_tx_rf09_4to1_c_counter_binary_0_THRESH0_4MHz <= TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz;
  TRX_tx_rf09_LVDS_im_out_0(20 downto 8) <= TRX_tx_im_out(20 downto 8);
  TRX_tx_rf09_LVDS_re_out_0(20 downto 8) <= TRX_tx_re_out(20 downto 8);
  ref_clock_200MHz_0 <= ref_clock_i;
  rst_mig_7series_0_100M_peripheral_reset_0 <= reset_CD100_i;
  rx_clk_CD064_CLK_N <= TRX_rx_clk_64MHz_clk_n;
  rx_clk_CD064_CLK_P <= TRX_rx_clk_64MHz_clk_p;
  s_axi_aclk_100MHz_0 <= s_axi_aclk;
TRX_LVDS_selectio_wiz_0: component UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1
     port map (
      bitslip(1 downto 0) => xlconstant_val0_len2_dout(1 downto 0),
      clk_div_out => TRX_LVDS_selectio_wiz_0_clk_div_out_0,
      clk_in_n => rx_clk_CD064_CLK_N,
      clk_in_p => rx_clk_CD064_CLK_P,
      clk_reset => rst_mig_7series_0_100M_peripheral_reset_0,
      clk_to_pins_n => Conn4_CLK_N,
      clk_to_pins_p => Conn4_CLK_P,
      data_in_from_pins_n(1 downto 0) => TRX_LVDS_rx_data_n_1(1 downto 0),
      data_in_from_pins_p(1 downto 0) => TRX_LVDS_rx_data_p_1(1 downto 0),
      data_in_to_device(15 downto 0) => TRX_rx_rf09_LVDS_16bits_CD016_0(15 downto 0),
      data_out_from_device(15 downto 0) => TRX_tx_rf09_Concat_data_out_from_device_in_0(15 downto 0),
      data_out_to_pins_n(1 downto 0) => TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_n(1 downto 0),
      data_out_to_pins_p(1 downto 0) => TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_p(1 downto 0),
      delay_locked => NLW_TRX_LVDS_selectio_wiz_0_delay_locked_UNCONNECTED,
      io_reset => TRX_io_reset_0,
      ref_clock => ref_clock_200MHz_0
    );
TRX_LVDS_util_ds_buf_0: component UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1
     port map (
      BUFG_I(0) => TRX_LVDS_selectio_wiz_0_clk_div_out_0,
      BUFG_O(0) => TRX_LVDS_rx_clkdiv_16MHz(0)
    );
TRX_rx09_concat: entity work.TRX_rx09_concat_imp_1KKL3Z9
     port map (
      Din(15 downto 0) => TRX_rx_rf09_LVDS_16bits_CD016_0(15 downto 0),
      rx09_o(7 downto 0) => TRX_rx_rf09_LVDS_concat_CD016_0(7 downto 0)
    );
TRX_rx09_fifo_generator_0: component UFBmod_TRX_TRX_rx09_fifo_generator_0_1
     port map (
      din(7 downto 0) => TRX_rx_rf09_LVDS_concat_CD016_0(7 downto 0),
      dout(31 downto 0) => TRX_rx_rf09_FIFO_generator_0_dout_0(31 downto 0),
      empty => NLW_TRX_rx09_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_rx09_fifo_generator_0_full_UNCONNECTED,
      rd_clk => s_axi_aclk_100MHz_0,
      rd_data_count(3 downto 0) => TRX_rx_rf09_FIFO_generator_0_rd_data_count_0(3 downto 0),
      rd_en => val1_len1(0),
      rd_rst_busy => NLW_TRX_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_LVDS_peripheral_reset_0,
      valid => TRX_rx_rf09_FIFO_generator_0_valid_0,
      wr_clk => TRX_LVDS_rx_clkdiv_16MHz(0),
      wr_en => val1_len1(0),
      wr_rst_busy => NLW_TRX_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_rx24_concat: entity work.TRX_rx24_concat_imp_LD03GF
     port map (
      Din(15 downto 0) => TRX_rx_rf09_LVDS_16bits_CD016_0(15 downto 0),
      rx24_o(7 downto 0) => TRX_rx_rf24_Concat_CD016_0(7 downto 0)
    );
TRX_rx24_fifo_generator_0: component UFBmod_TRX_TRX_rx24_fifo_generator_0_1
     port map (
      din(7 downto 0) => TRX_rx_rf24_Concat_CD016_0(7 downto 0),
      dout(31 downto 0) => TRX_rx_rf24_fifo_generator_0_dout_0(31 downto 0),
      empty => NLW_TRX_rx24_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_rx24_fifo_generator_0_full_UNCONNECTED,
      rd_clk => s_axi_aclk_100MHz_0,
      rd_en => val1_len1(0),
      rd_rst_busy => NLW_TRX_rx24_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_LVDS_peripheral_reset_0,
      valid => TRX_rx_rf24_fifo_generator_0_valid_0,
      wr_clk => TRX_LVDS_rx_clkdiv_16MHz(0),
      wr_en => val1_len1(0),
      wr_rst_busy => NLW_TRX_rx24_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_tx09_fifo_generator_0: component UFBmod_TRX_TRX_tx09_fifo_generator_0_1
     port map (
      din(31 downto 0) => TRX_tx_rf09_FIFO_din_0(31 downto 0),
      dout(7 downto 0) => TRX_tx_rf09_FIFO_dout_0(7 downto 0),
      empty => NLW_TRX_tx09_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_TRX_tx09_fifo_generator_0_full_UNCONNECTED,
      rd_clk => TRX_LVDS_rx_clkdiv_16MHz(0),
      rd_data_count(5 downto 0) => NLW_TRX_tx09_fifo_generator_0_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => val1_len1(0),
      rd_rst_busy => NLW_TRX_tx09_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => TRX_LVDS_peripheral_reset_0,
      valid => NLW_TRX_tx09_fifo_generator_0_valid_UNCONNECTED,
      wr_clk => TRX_tx_rf09_4to1_c_counter_binary_0_THRESH0_4MHz,
      wr_data_count(3 downto 0) => NLW_TRX_tx09_fifo_generator_0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => val1_len1(0),
      wr_rst_busy => NLW_TRX_tx09_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
TRX_tx_concat: entity work.TRX_tx_concat_imp_18SKXTB
     port map (
      TRX_config_LVDS_tx_blank_in(0) => TRX_LVDS_tx_rf09_concat_tx_blank_0(0),
      TRX_dds_tx_rf09_ptt(0) => TRX_LVDS_tx_rf09_DDS_ptt_0(0),
      TRX_tx09_fifo_din(31 downto 0) => TRX_tx_rf09_FIFO_din_0(31 downto 0),
      TRX_tx09_fifo_dout(7 downto 0) => TRX_tx_rf09_FIFO_dout_0(7 downto 0),
      TRX_tx_data_out_from_device_in(15 downto 0) => TRX_tx_rf09_Concat_data_out_from_device_in_0(15 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_rf09_LVDS_im_out_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_rf09_LVDS_re_out_0(20 downto 8),
      clk_div_out => TRX_LVDS_rx_clkdiv_16MHz(0)
    );
xlconstant_val0_len2: component UFBmod_TRX_xlconstant_0_0
     port map (
      dout(1 downto 0) => xlconstant_val0_len2_dout(1 downto 0)
    );
xlconstant_val1_len1: component UFBmod_TRX_xlconstant_1_len1_1
     port map (
      dout(0) => val1_len1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx_FFT_calc_imp_VKX3UL is
  port (
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn_CD100_in : in STD_LOGIC;
    cordic_rx09_m_tuser_out : out STD_LOGIC_VECTOR ( 41 downto 0 );
    cordic_rx09_tvalid_out : out STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft_s_data_rx09_im_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    fft_s_data_rx09_re_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    rst_mig_7series_0_100M_peripheral_reset_in : in STD_LOGIC;
    rx09_postmem_magnitude_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk_CD100_in : in STD_LOGIC;
    xfft_rx09_dly3449_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_frame_started_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_unexpected_out : out STD_LOGIC
  );
end TRX_rx_FFT_calc_imp_VKX3UL;

architecture STRUCTURE of TRX_rx_FFT_calc_imp_VKX3UL is
  component UFBmod_TRX_cordic_rx09_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tuser : in STD_LOGIC_VECTOR ( 41 downto 0 );
    s_axis_cartesian_tlast : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_cordic_rx09_1;
  component UFBmod_TRX_rx09_xlslice_15to0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_rx09_xlslice_15to0_1;
  component UFBmod_TRX_cordic_rx09_addra_xlslice_9to0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component UFBmod_TRX_cordic_rx09_addra_xlslice_9to0_1;
  component UFBmod_TRX_window_rx09_re_mult_gen_0_1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_window_rx09_re_mult_gen_0_1;
  component UFBmod_TRX_window_rx09_im_mult_gen_0_1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_window_rx09_im_mult_gen_0_1;
  component UFBmod_TRX_window_coef_rom_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_window_coef_rom_blk_mem_gen_0_1;
  component UFBmod_TRX_cordic_rx09_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  end component UFBmod_TRX_cordic_rx09_xlconcat_0_1;
  component UFBmod_TRX_fft_rx09_s_data_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_fft_rx09_s_data_xlconcat_0_1;
  component UFBmod_TRX_xfft_rx09_dly3459_1 is
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
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC
  );
  end component UFBmod_TRX_xfft_rx09_dly3459_1;
  signal FFT_window_coef_rom_rx09_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal RF09_framectr_0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal RF09_quarterfrm_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_xfft_dly8334_m_axis_data_tlast_0 : STD_LOGIC;
  signal TRX_rx_xfft_dly8334_m_axis_data_tvalid_0 : STD_LOGIC;
  signal aresetn_CD100_0 : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_rx09_addra_xlslice_9to0_Dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cordic_rx09_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cordic_rx09_m_tuser_out_0 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal cordic_rx09_tvalid_out_0 : STD_LOGIC;
  signal cordic_rx09_xlconcat_0_dout : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal delay_rx09_3459minus1024clk_premem_rx09_quarterfrm_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft09_config_tdata_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft09_config_tvalid_in_0 : STD_LOGIC;
  signal fft09_data_tlast_in_0 : STD_LOGIC;
  signal fft09_data_tready_out_0 : STD_LOGIC;
  signal fft09_data_tvalid_in_0 : STD_LOGIC;
  signal fft09_s_data_xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_s_data_rx09_im_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fft_s_data_rx09_re_in_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal rx09_postmem_magnitude_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
  signal window_rx09_im_mult_gen_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal window_rx09_re_mult_gen_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xfft_rx09_dly3198_m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xfft_rx09_dly3198_m_axis_data_tuser : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xfft_rx09_dly3449_event_data_in_channel_halt_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_frame_started_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_missing_out_0 : STD_LOGIC;
  signal xfft_rx09_dly3449_event_tlast_unexpected_out_0 : STD_LOGIC;
  signal NLW_cordic_rx09_m_axis_dout_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_rx09_dly3459_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
begin
  FFT_window_coef_rom_rx09_1(9 downto 0) <= FFT_window_coef_rom_rx09(9 downto 0);
  RF09_framectr_0(29 downto 0) <= RF09_framectr(29 downto 0);
  RF09_quarterfrm_0(1 downto 0) <= RF09_quarterfrm(1 downto 0);
  aresetn_CD100_0 <= aresetn_CD100_in;
  cordic_rx09_m_tuser_out(41 downto 0) <= cordic_rx09_m_tuser_out_0(41 downto 0);
  cordic_rx09_tvalid_out <= cordic_rx09_tvalid_out_0;
  fft09_config_tdata_in_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  fft09_config_tvalid_in_0 <= fft09_config_tvalid_in;
  fft09_data_tlast_in_0 <= fft09_data_tlast_in;
  fft09_data_tready_out <= fft09_data_tready_out_0;
  fft09_data_tvalid_in_0 <= fft09_data_tvalid_in;
  fft_s_data_rx09_im_in_0(12 downto 0) <= fft_s_data_rx09_im_in(12 downto 0);
  fft_s_data_rx09_re_in_0(12 downto 0) <= fft_s_data_rx09_re_in(12 downto 0);
  rst_mig_7series_0_100M_peripheral_reset_0 <= rst_mig_7series_0_100M_peripheral_reset_in;
  rx09_postmem_magnitude_out(15 downto 0) <= rx09_postmem_magnitude_0(15 downto 0);
  s_axi_aclk_CD100_0 <= s_axi_aclk_CD100_in;
  xfft_rx09_dly3449_event_data_in_channel_halt_out <= xfft_rx09_dly3449_event_data_in_channel_halt_out_0;
  xfft_rx09_dly3449_event_frame_started_out <= xfft_rx09_dly3449_event_frame_started_out_0;
  xfft_rx09_dly3449_event_tlast_missing_out <= xfft_rx09_dly3449_event_tlast_missing_out_0;
  xfft_rx09_dly3449_event_tlast_unexpected_out <= xfft_rx09_dly3449_event_tlast_unexpected_out_0;
cordic_rx09: component UFBmod_TRX_cordic_rx09_1
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => aresetn_CD100_0,
      m_axis_dout_tdata(31 downto 0) => cordic_rx09_m_axis_dout_tdata(31 downto 0),
      m_axis_dout_tlast => NLW_cordic_rx09_m_axis_dout_tlast_UNCONNECTED,
      m_axis_dout_tuser(41 downto 0) => cordic_rx09_m_tuser_out_0(41 downto 0),
      m_axis_dout_tvalid => cordic_rx09_tvalid_out_0,
      s_axis_cartesian_tdata(63 downto 0) => xfft_rx09_dly3198_m_axis_data_tdata_0(63 downto 0),
      s_axis_cartesian_tlast => TRX_rx_xfft_dly8334_m_axis_data_tlast_0,
      s_axis_cartesian_tuser(41 downto 0) => cordic_rx09_xlconcat_0_dout(41 downto 0),
      s_axis_cartesian_tvalid => TRX_rx_xfft_dly8334_m_axis_data_tvalid_0
    );
cordic_rx09_addra_xlslice_9to0: component UFBmod_TRX_cordic_rx09_addra_xlslice_9to0_1
     port map (
      Din(15 downto 0) => xfft_rx09_dly3198_m_axis_data_tuser(15 downto 0),
      Dout(9 downto 0) => cordic_rx09_addra_xlslice_9to0_Dout(9 downto 0)
    );
cordic_rx09_xlconcat_0: component UFBmod_TRX_cordic_rx09_xlconcat_0_1
     port map (
      In0(9 downto 0) => cordic_rx09_addra_xlslice_9to0_Dout(9 downto 0),
      In1(31 downto 0) => delay_rx09_3459minus1024clk_premem_rx09_quarterfrm_out(31 downto 0),
      dout(41 downto 0) => cordic_rx09_xlconcat_0_dout(41 downto 0)
    );
delay_rx09_3459minus1024clk: entity work.delay_rx09_3459minus1024clk_imp_AONRGF
     port map (
      RF09_framectr(29 downto 0) => RF09_framectr_0(29 downto 0),
      RF09_quarterfrm(1 downto 0) => RF09_quarterfrm_0(1 downto 0),
      premem_rx09_quarterfrm_out(31 downto 0) => delay_rx09_3459minus1024clk_premem_rx09_quarterfrm_out(31 downto 0),
      reset_CD100_i => rst_mig_7series_0_100M_peripheral_reset_0,
      s_axi_aclk_CD100_i => s_axi_aclk_CD100_0
    );
fft_rx09_s_data_xlconcat_0: component UFBmod_TRX_fft_rx09_s_data_xlconcat_0_1
     port map (
      In0(15 downto 0) => window_rx09_re_mult_gen_0_P(15 downto 0),
      In1(15 downto 0) => window_rx09_im_mult_gen_0_P(15 downto 0),
      dout(31 downto 0) => fft09_s_data_xlconcat_0_dout(31 downto 0)
    );
rx09_xlslice_15to0: component UFBmod_TRX_rx09_xlslice_15to0_1
     port map (
      Din(31 downto 0) => cordic_rx09_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => rx09_postmem_magnitude_0(15 downto 0)
    );
window_coef_rom_blk_mem_gen_0: component UFBmod_TRX_window_coef_rom_blk_mem_gen_0_1
     port map (
      addra(9 downto 0) => FFT_window_coef_rom_rx09_1(9 downto 0),
      clka => s_axi_aclk_CD100_0,
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0)
    );
window_rx09_im_mult_gen_0: component UFBmod_TRX_window_rx09_im_mult_gen_0_1
     port map (
      A(12 downto 0) => fft_s_data_rx09_im_in_0(12 downto 0),
      B(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      CLK => s_axi_aclk_CD100_0,
      P(15 downto 0) => window_rx09_im_mult_gen_0_P(15 downto 0)
    );
window_rx09_re_mult_gen_0: component UFBmod_TRX_window_rx09_re_mult_gen_0_1
     port map (
      A(12 downto 0) => fft_s_data_rx09_re_in_0(12 downto 0),
      B(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      CLK => s_axi_aclk_CD100_0,
      P(15 downto 0) => window_rx09_re_mult_gen_0_P(15 downto 0)
    );
xfft_rx09_dly3459: component UFBmod_TRX_xfft_rx09_dly3459_1
     port map (
      aclk => s_axi_aclk_CD100_0,
      aresetn => aresetn_CD100_0,
      event_data_in_channel_halt => xfft_rx09_dly3449_event_data_in_channel_halt_out_0,
      event_frame_started => xfft_rx09_dly3449_event_frame_started_out_0,
      event_tlast_missing => xfft_rx09_dly3449_event_tlast_missing_out_0,
      event_tlast_unexpected => xfft_rx09_dly3449_event_tlast_unexpected_out_0,
      m_axis_data_tdata(63 downto 0) => xfft_rx09_dly3198_m_axis_data_tdata_0(63 downto 0),
      m_axis_data_tlast => TRX_rx_xfft_dly8334_m_axis_data_tlast_0,
      m_axis_data_tuser(15 downto 0) => xfft_rx09_dly3198_m_axis_data_tuser(15 downto 0),
      m_axis_data_tvalid => TRX_rx_xfft_dly8334_m_axis_data_tvalid_0,
      s_axis_config_tdata(7 downto 0) => fft09_config_tdata_in_0(7 downto 0),
      s_axis_config_tready => NLW_xfft_rx09_dly3459_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => fft09_config_tvalid_in_0,
      s_axis_data_tdata(31 downto 0) => fft09_s_data_xlconcat_0_dout(31 downto 0),
      s_axis_data_tlast => fft09_data_tlast_in_0,
      s_axis_data_tready => fft09_data_tready_out_0,
      s_axis_data_tvalid => fft09_data_tvalid_in_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_tx_DDS_unit_imp_1L2CWOY is
  port (
    SCLR : in STD_LOGIC;
    TRX_TX_DDSAMPL_GPIO1_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDS_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_rx_clkdiv_16MHz_i : in STD_LOGIC;
    TRX_tx_4to1_c_counter_binary_0_THRESH0 : out STD_LOGIC;
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    aresetn : in STD_LOGIC;
    encoder_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoder_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    pulldata_dds_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ui_clk_sync_rst : in STD_LOGIC
  );
end TRX_tx_DDS_unit_imp_1L2CWOY;

architecture STRUCTURE of TRX_tx_DDS_unit_imp_1L2CWOY is
  component UFBmod_TRX_TRX_tx_4to1_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx_4to1_c_counter_binary_0_1;
  component UFBmod_TRX_TRX_tx0_re_xlslice_12to00_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx0_re_xlslice_12to00_1;
  component UFBmod_TRX_TRX_tx1_re_xlslice_12to00_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx1_re_xlslice_12to00_1;
  component UFBmod_TRX_TRX_tx0_im_xlslice_28to16_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx0_im_xlslice_28to16_1;
  component UFBmod_TRX_TRX_tx1_im_xlslice_28to16_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx1_im_xlslice_28to16_1;
  component UFBmod_TRX_TRX_tx0_re_xbip_multadd_0_1 is
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
  end component UFBmod_TRX_TRX_tx0_re_xbip_multadd_0_1;
  component UFBmod_TRX_TRX_tx0_im_xbip_multadd_0_1 is
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
  end component UFBmod_TRX_TRX_tx0_im_xbip_multadd_0_1;
  component UFBmod_TRX_TRX_CDC_dds_tx0_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_CDC_dds_tx0_c_shift_ram_0_1;
  component UFBmod_TRX_TRX_CDC_dds_tx1_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_CDC_dds_tx1_c_shift_ram_0_1;
  component UFBmod_TRX_TRX_ampt_tx1_xslice_15to8_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_TRX_ampt_tx1_xslice_15to8_1;
  component UFBmod_TRX_TRX_ampt_tx1_xslice_7to0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_TRX_ampt_tx1_xslice_7to0_1;
  component UFBmod_TRX_TRX_tx1_re_xbip_multadd_0_1 is
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
  end component UFBmod_TRX_TRX_tx1_re_xbip_multadd_0_1;
  component UFBmod_TRX_TRX_tx1_im_xbip_multadd_0_1 is
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
  end component UFBmod_TRX_TRX_tx1_im_xbip_multadd_0_1;
  component UFBmod_TRX_TRX_tx1_dds_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx1_dds_compiler_0_1;
  component UFBmod_TRX_TRX_tx0_dds_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_tx0_dds_compiler_0_1;
  component UFBmod_TRX_xlconstant_val0_len1_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val0_len1_3;
  component UFBmod_TRX_xlconstant_val1_len1_9 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val1_len1_9;
  component UFBmod_TRX_TRX_CDC_ampt_tx0_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_TRX_CDC_ampt_tx0_c_shift_ram_0_1;
  component UFBmod_TRX_TRX_CDC_ampt_tx1_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_TRX_CDC_ampt_tx1_c_shift_ram_0_1;
  component UFBmod_TRX_TRX_ampt_tx0_xslice_15to8_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_TRX_ampt_tx0_xslice_15to8_1;
  component UFBmod_TRX_TRX_ampt_tx0_xslice_7to0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_TRX_TRX_ampt_tx0_xslice_7to0_1;
  component UFBmod_TRX_TRX_CDC_dds_tx0_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_TRX_TRX_CDC_dds_tx0_xlconcat_0_1;
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PULLDATA_DDS_inc_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal PULLDATA_Encoder_FIFO_byteData_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PULLDATA_Encoder_FIFO_data_len_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal PULLDATA_Encoder_FIFO_do_start_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PULLDATA_Encoder_FIFO_dump_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PULLDATA_Encoder_FIFO_en_0 : STD_LOGIC;
  signal PULLDATA_Encoder_FIFO_prog_empty_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_CDC_ampt_tx0_c_shift_ram_0_Q_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_CDC_ampt_tx1_c_shift_ram_0_Q_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_CDC_dds_tx0_xlconcat_0_dout_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_TX_DDSAMPL_GPIO1_o_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_TX_DDSAMPL_GPIO2_o_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_TX_DDS_GPIO2_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_TX_RF09_PULLDATA_FIFO_empty_0 : STD_LOGIC;
  signal TRX_ampt_tx0_xslice_15to8_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_ampt_tx0_xslice_7to0_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_ampt_tx1_xslice_15to8_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_ampt_tx1_xslice_7to0_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx0_c_shift_ram_0_Q_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx0_im_xbip_multadd_0_P_0 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal TRX_tx0_re_xbip_multadd_0_P_0 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal TRX_tx1_c_shift_ram_0_Q_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx1_im_xlslice_28to16_dout_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_tx1_re_xlslice_12to00_dout_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_tx_4to1_c_counter_binary_0_THRESH0_0 : STD_LOGIC;
  signal TRX_tx_dds_compiler_0_m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_dds_compiler_1_m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_im_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_re_out_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal aresetn_0 : STD_LOGIC;
  signal clk_div_out_0 : STD_LOGIC;
  signal s_axi_aclk_0 : STD_LOGIC;
  signal sclr_0 : STD_LOGIC;
  signal ui_clk_sync_rst_0 : STD_LOGIC;
  signal val0_len1_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal val1_len1_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_12to00_dout_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal xlslice_0_28to16_dout_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_TRX_tx0_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx0_im_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx0_re_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx1_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_tx1_im_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx1_re_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_TRX_tx_4to1_c_counter_binary_0_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Din_1(31 downto 0) <= TRX_TX_DDS_GPIO1_o(31 downto 0);
  PULLDATA_DDS_inc_0(25 downto 0) <= pulldata_dds_inc(25 downto 0);
  PULLDATA_Encoder_FIFO_en_0 <= pulldata_tx09_en;
  TRX_TX_DDSAMPL_GPIO1_o_1(15 downto 0) <= TRX_TX_DDSAMPL_GPIO1_o(15 downto 0);
  TRX_TX_DDSAMPL_GPIO2_o_1(15 downto 0) <= TRX_TX_DDSAMPL_GPIO2_o(15 downto 0);
  TRX_TX_DDS_GPIO1_i(31 downto 0) <= PULLDATA_Encoder_FIFO_prog_empty_0(31 downto 0);
  TRX_TX_DDS_GPIO2_o_1(31 downto 0) <= TRX_TX_DDS_GPIO2_o(31 downto 0);
  TRX_TX_RF09_PULLDATA_FIFO_empty <= TRX_TX_RF09_PULLDATA_FIFO_empty_0;
  TRX_tx_4to1_c_counter_binary_0_THRESH0 <= TRX_tx_4to1_c_counter_binary_0_THRESH0_0;
  TRX_tx_DDS0_gpio_ampt(15 downto 0) <= TRX_TX_DDSAMPL_GPIO1_o_1(15 downto 0);
  TRX_tx_DDS1_gpio_ampt(15 downto 0) <= TRX_TX_DDSAMPL_GPIO2_o_1(15 downto 0);
  TRX_tx_im_out(20 downto 8) <= TRX_tx_im_out_0(20 downto 8);
  TRX_tx_re_out(20 downto 8) <= TRX_tx_re_out_0(20 downto 8);
  aresetn_0 <= aresetn;
  clk_div_out_0 <= TRX_rx_clkdiv_16MHz_i;
  encoder_pull_FIFO_dump(0) <= PULLDATA_Encoder_FIFO_dump_0(0);
  encoder_pull_data_len(6 downto 0) <= PULLDATA_Encoder_FIFO_data_len_0(6 downto 0);
  encoder_pull_do_start(0) <= PULLDATA_Encoder_FIFO_do_start_0(0);
  pulldata_tx09_byteData(7 downto 0) <= PULLDATA_Encoder_FIFO_byteData_0(7 downto 0);
  s_axi_aclk_0 <= s_axi_aclk;
  sclr_0 <= SCLR;
  ui_clk_sync_rst_0 <= ui_clk_sync_rst;
PULLDATA: entity work.PULLDATA_imp_1WTMK8
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_TX_RF09_PULLDATA_FIFO_empty_0,
      TRX_tx_data_count(11 downto 0) => TRX_tx_data_count(11 downto 0),
      encoder_pull_FIFO_dump(0) => PULLDATA_Encoder_FIFO_dump_0(0),
      encoder_pull_data_len(6 downto 0) => PULLDATA_Encoder_FIFO_data_len_0(6 downto 0),
      encoder_pull_do_start(0) => PULLDATA_Encoder_FIFO_do_start_0(0),
      fifo_empty(31 downto 0) => PULLDATA_Encoder_FIFO_prog_empty_0(31 downto 0),
      pulldata_tx09_byteData(7 downto 0) => PULLDATA_Encoder_FIFO_byteData_0(7 downto 0),
      pulldata_tx09_en => PULLDATA_Encoder_FIFO_en_0,
      s_axi_aclk => s_axi_aclk_0,
      ui_clk_sync_rst => ui_clk_sync_rst_0
    );
TRX_CDC_ampt_tx0_c_shift_ram_0: component UFBmod_TRX_TRX_CDC_ampt_tx0_c_shift_ram_0_1
     port map (
      CLK => clk_div_out_0,
      D(15 downto 0) => TRX_TX_DDSAMPL_GPIO1_o_1(15 downto 0),
      Q(15 downto 0) => TRX_CDC_ampt_tx0_c_shift_ram_0_Q_0(15 downto 0),
      SCLR => sclr_0
    );
TRX_CDC_ampt_tx1_c_shift_ram_0: component UFBmod_TRX_TRX_CDC_ampt_tx1_c_shift_ram_0_1
     port map (
      CLK => clk_div_out_0,
      D(15 downto 0) => TRX_TX_DDSAMPL_GPIO2_o_1(15 downto 0),
      Q(15 downto 0) => TRX_CDC_ampt_tx1_c_shift_ram_0_Q_0(15 downto 0),
      SCLR => sclr_0
    );
TRX_CDC_dds_tx0_c_shift_ram_0: component UFBmod_TRX_TRX_CDC_dds_tx0_c_shift_ram_0_1
     port map (
      CLK => clk_div_out_0,
      D(31 downto 0) => TRX_CDC_dds_tx0_xlconcat_0_dout_0(31 downto 0),
      Q(31 downto 0) => TRX_tx0_c_shift_ram_0_Q_0(31 downto 0),
      SCLR => sclr_0
    );
TRX_CDC_dds_tx0_xlconcat_0: component UFBmod_TRX_TRX_CDC_dds_tx0_xlconcat_0_1
     port map (
      In0(25 downto 0) => PULLDATA_DDS_inc_0(25 downto 0),
      In1(5 downto 0) => B"000000",
      dout(31 downto 0) => TRX_CDC_dds_tx0_xlconcat_0_dout_0(31 downto 0)
    );
TRX_CDC_dds_tx1_c_shift_ram_0: component UFBmod_TRX_TRX_CDC_dds_tx1_c_shift_ram_0_1
     port map (
      CLK => clk_div_out_0,
      D(31 downto 0) => TRX_TX_DDS_GPIO2_o_1(31 downto 0),
      Q(31 downto 0) => TRX_tx1_c_shift_ram_0_Q_0(31 downto 0),
      SCLR => sclr_0
    );
TRX_ampt_tx0_xslice_15to8: component UFBmod_TRX_TRX_ampt_tx0_xslice_15to8_1
     port map (
      Din(15 downto 0) => TRX_CDC_ampt_tx0_c_shift_ram_0_Q_0(15 downto 0),
      Dout(7 downto 0) => TRX_ampt_tx0_xslice_15to8_dout_0(7 downto 0)
    );
TRX_ampt_tx0_xslice_7to0: component UFBmod_TRX_TRX_ampt_tx0_xslice_7to0_1
     port map (
      Din(15 downto 0) => TRX_CDC_ampt_tx0_c_shift_ram_0_Q_0(15 downto 0),
      Dout(7 downto 0) => TRX_ampt_tx0_xslice_7to0_dout_0(7 downto 0)
    );
TRX_ampt_tx1_xslice_15to8: component UFBmod_TRX_TRX_ampt_tx1_xslice_15to8_1
     port map (
      Din(15 downto 0) => TRX_CDC_ampt_tx1_c_shift_ram_0_Q_0(15 downto 0),
      Dout(7 downto 0) => TRX_ampt_tx1_xslice_15to8_dout_0(7 downto 0)
    );
TRX_ampt_tx1_xslice_7to0: component UFBmod_TRX_TRX_ampt_tx1_xslice_7to0_1
     port map (
      Din(15 downto 0) => TRX_CDC_ampt_tx1_c_shift_ram_0_Q_0(15 downto 0),
      Dout(7 downto 0) => TRX_ampt_tx1_xslice_7to0_dout_0(7 downto 0)
    );
TRX_tx0_dds_compiler_0: component UFBmod_TRX_TRX_tx0_dds_compiler_0_1
     port map (
      aclk => clk_div_out_0,
      aclken => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      aresetn => aresetn_0,
      m_axis_data_tdata(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata_0(31 downto 0),
      m_axis_data_tvalid => NLW_TRX_tx0_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(31 downto 0) => TRX_tx0_c_shift_ram_0_Q_0(31 downto 0),
      s_axis_config_tvalid => val1_len1_0(0)
    );
TRX_tx0_im_xbip_multadd_0: component UFBmod_TRX_TRX_tx0_im_xbip_multadd_0_1
     port map (
      A(12 downto 0) => xlslice_0_28to16_dout_0(12 downto 0),
      B(7 downto 0) => TRX_ampt_tx0_xslice_15to8_dout_0(7 downto 0),
      C(0) => val0_len1_0(0),
      CE => val1_len1_0(0),
      CLK => clk_div_out_0,
      P(20 downto 0) => TRX_tx0_im_xbip_multadd_0_P_0(20 downto 0),
      PCOUT(47 downto 0) => NLW_TRX_tx0_im_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => sclr_0,
      SUBTRACT => val0_len1_0(0)
    );
TRX_tx0_im_xlslice_28to16: component UFBmod_TRX_TRX_tx0_im_xlslice_28to16_1
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata_0(31 downto 0),
      Dout(12 downto 0) => xlslice_0_28to16_dout_0(12 downto 0)
    );
TRX_tx0_re_xbip_multadd_0: component UFBmod_TRX_TRX_tx0_re_xbip_multadd_0_1
     port map (
      A(12 downto 0) => xlslice_0_12to00_dout_0(12 downto 0),
      B(7 downto 0) => TRX_ampt_tx0_xslice_7to0_dout_0(7 downto 0),
      C(0) => val0_len1_0(0),
      CE => val1_len1_0(0),
      CLK => clk_div_out_0,
      P(20 downto 0) => TRX_tx0_re_xbip_multadd_0_P_0(20 downto 0),
      PCOUT(47 downto 0) => NLW_TRX_tx0_re_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => sclr_0,
      SUBTRACT => val0_len1_0(0)
    );
TRX_tx0_re_xlslice_12to00: component UFBmod_TRX_TRX_tx0_re_xlslice_12to00_1
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_0_m_axis_data_tdata_0(31 downto 0),
      Dout(12 downto 0) => xlslice_0_12to00_dout_0(12 downto 0)
    );
TRX_tx1_dds_compiler_0: component UFBmod_TRX_TRX_tx1_dds_compiler_0_1
     port map (
      aclk => clk_div_out_0,
      aclken => TRX_tx_4to1_c_counter_binary_0_THRESH0_0,
      aresetn => aresetn_0,
      m_axis_data_tdata(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata_0(31 downto 0),
      m_axis_data_tvalid => NLW_TRX_tx1_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(31 downto 0) => TRX_tx1_c_shift_ram_0_Q_0(31 downto 0),
      s_axis_config_tvalid => val1_len1_0(0)
    );
TRX_tx1_im_xbip_multadd_0: component UFBmod_TRX_TRX_tx1_im_xbip_multadd_0_1
     port map (
      A(12 downto 0) => TRX_tx1_im_xlslice_28to16_dout_0(12 downto 0),
      B(7 downto 0) => TRX_ampt_tx1_xslice_15to8_dout_0(7 downto 0),
      C(20 downto 0) => TRX_tx0_im_xbip_multadd_0_P_0(20 downto 0),
      CE => val1_len1_0(0),
      CLK => clk_div_out_0,
      P(20 downto 8) => TRX_tx_im_out_0(20 downto 8),
      PCOUT(47 downto 0) => NLW_TRX_tx1_im_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => sclr_0,
      SUBTRACT => val0_len1_0(0)
    );
TRX_tx1_im_xlslice_28to16: component UFBmod_TRX_TRX_tx1_im_xlslice_28to16_1
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata_0(31 downto 0),
      Dout(12 downto 0) => TRX_tx1_im_xlslice_28to16_dout_0(12 downto 0)
    );
TRX_tx1_re_xbip_multadd_0: component UFBmod_TRX_TRX_tx1_re_xbip_multadd_0_1
     port map (
      A(12 downto 0) => TRX_tx1_re_xlslice_12to00_dout_0(12 downto 0),
      B(7 downto 0) => TRX_ampt_tx1_xslice_7to0_dout_0(7 downto 0),
      C(20 downto 0) => TRX_tx0_re_xbip_multadd_0_P_0(20 downto 0),
      CE => val1_len1_0(0),
      CLK => clk_div_out_0,
      P(20 downto 8) => TRX_tx_re_out_0(20 downto 8),
      PCOUT(47 downto 0) => NLW_TRX_tx1_re_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => sclr_0,
      SUBTRACT => val0_len1_0(0)
    );
TRX_tx1_re_xlslice_12to00: component UFBmod_TRX_TRX_tx1_re_xlslice_12to00_1
     port map (
      Din(31 downto 0) => TRX_tx_dds_compiler_1_m_axis_data_tdata_0(31 downto 0),
      Dout(12 downto 0) => TRX_tx1_re_xlslice_12to00_dout_0(12 downto 0)
    );
TRX_tx_4to1_c_counter_binary_0: component UFBmod_TRX_TRX_tx_4to1_c_counter_binary_0_1
     port map (
      CLK => clk_div_out_0,
      Q(2 downto 0) => NLW_TRX_tx_4to1_c_counter_binary_0_Q_UNCONNECTED(2 downto 0),
      SCLR => sclr_0,
      THRESH0 => TRX_tx_4to1_c_counter_binary_0_THRESH0_0
    );
xlconstant_val0_len1: component UFBmod_TRX_xlconstant_val0_len1_3
     port map (
      dout(0) => val0_len1_0(0)
    );
xlconstant_val1_len1: component UFBmod_TRX_xlconstant_val1_len1_9
     port map (
      dout(0) => val1_len1_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRX_rx_FFT_unit_imp_6J07ED is
  port (
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_wr_en : in STD_LOGIC;
    TRX_RX_PUSHDATA_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_rf09_Pre_FFT_mem_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn_CD100_in : in STD_LOGIC;
    decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    post_fft_rx09_mem_a_addr_out : out STD_LOGIC_VECTOR ( 41 downto 0 );
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_mig_7series_0_100M_peripheral_reset_in : in STD_LOGIC;
    s_axi_aclk_CD100_in : in STD_LOGIC;
    xfft_rx09_dly3449_event_data_in_channel_halt_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_frame_started_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_missing_out : out STD_LOGIC;
    xfft_rx09_dly3449_event_tlast_unexpected_out : out STD_LOGIC
  );
end TRX_rx_FFT_unit_imp_6J07ED;

architecture STRUCTURE of TRX_rx_FFT_unit_imp_6J07ED is
  component UFBmod_TRX_pre_fft_rx09_blk_mem_gen_0_1 is
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
  end component UFBmod_TRX_pre_fft_rx09_blk_mem_gen_0_1;
  component UFBmod_TRX_post_fft_rx09_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_blk_mem_gen_0_1;
  component UFBmod_TRX_pre_fft_rx09_xlslice_25to13_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_pre_fft_rx09_xlslice_25to13_1;
  component UFBmod_TRX_pre_fft_rx09_xlslice_12to00_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component UFBmod_TRX_pre_fft_rx09_xlslice_12to00_1;
  component UFBmod_TRX_post_fft_rx09_xlslice_9downto0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 41 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_xlslice_9downto0_1;
  component UFBmod_TRX_xlconstant_val1_len1_7 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_xlconstant_val1_len1_7;
  component UFBmod_TRX_post_fft_mem_a_rx09_util_reduced_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Res : out STD_LOGIC
  );
  end component UFBmod_TRX_post_fft_mem_a_rx09_util_reduced_logic_0_1;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_0;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_1;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_2;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_3 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_3;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_4 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_4;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_5 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_5;
  component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_6 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_6;
  component UFBmod_TRX_TRX_post_fft_rx09_ad_0_0 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    addr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    tvalid : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ena_ch00 : out STD_LOGIC;
    ena_ch01 : out STD_LOGIC;
    ena_ch02 : out STD_LOGIC;
    ena_ch03 : out STD_LOGIC;
    ena_ch04 : out STD_LOGIC;
    ena_ch05 : out STD_LOGIC;
    ena_ch06 : out STD_LOGIC;
    ena_ch07 : out STD_LOGIC
  );
  end component UFBmod_TRX_TRX_post_fft_rx09_ad_0_0;
  component UFBmod_TRX_post_fft_mem_a_rx09_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component UFBmod_TRX_post_fft_mem_a_rx09_xlconcat_0_1;
  signal PUSHDATA_TRX_PUSHDATA_ch00_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch01_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch02_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch03_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch04_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch05_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch06_grant : STD_LOGIC;
  signal PUSHDATA_TRX_PUSHDATA_ch07_grant : STD_LOGIC;
  signal PUSHDATA_TRX_RX_PUSHDATA_GPIO1_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_PUSHDATA_ch00_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch01_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch02_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch03_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch04_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch05_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch06_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch07_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_wr_en_1 : STD_LOGIC;
  signal TRX_RX_PUSHDATA_GPIO2_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_post_fft_rx09_ad_0_ena_ch00 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_post_fft_rx09_decoder_0_ena_ch01 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch02 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch03 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch04 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch05 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch06 : STD_LOGIC;
  signal TRX_post_fft_rx09_decoder_0_ena_ch07 : STD_LOGIC;
  signal TRX_rx_rf09_Cordic_rx09_tvalid_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_config_tdata_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf09_FFT_config_tvalid_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tlast_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tready_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tvalid_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_frame_started_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_tlast_missing_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_s_data_rx09_im_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_rx_rf09_FFT_s_data_rx09_re_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal TRX_rx_rf09_FFT_window_coef_rom_rx09_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal TRX_rx_rf09_PUSHDATA_decoder_rx09_squelch_lvl_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_PUSHDATA_din_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf09_PUSHDATA_wr_en_0 : STD_LOGIC;
  signal TRX_rx_rf09_Post_FFT_mem_a_addr_0 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal TRX_rx_rf09_Post_FFT_mem_a_rx09_util_reduced_logic_0_Res_0 : STD_LOGIC;
  signal TRX_rx_rf09_Post_FFT_mem_a_rx09_xlconcat_0_dout_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_rx_rf09_Post_FFT_mem_magnitude_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_Post_FFT_xlslice_14downto0_dout_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal TRX_rx_rf09_Pre_FFT_blk_mem_gen_0_doutb_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TRX_rx_rf09_Pre_FFT_mem_addra_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_rx_rf09_Pre_FFT_mem_addrb_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_rx_rf09_Pre_FFT_mem_dina_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TRX_rx_rf09_Pre_FFT_mem_wea_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_framectr_0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal TRX_rx_rf09_uarterfrm_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aresetn_CD100_0 : STD_LOGIC;
  signal post_fft_rx09_ch00_xlslice_4to0_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal post_fft_rx09_ch01_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch02_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch03_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch04_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch05_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch06_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal post_fft_rx09_ch07_blk_mem_gen_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rst_mig_7series_0_100M_peripheral_reset_0 : STD_LOGIC;
  signal s_axi_aclk_CD100_0 : STD_LOGIC;
  signal val1_len1_0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  TRX_PUSHDATA_ch00_grant <= PUSHDATA_TRX_PUSHDATA_ch00_grant;
  TRX_PUSHDATA_ch00_req_1 <= TRX_PUSHDATA_ch00_req;
  TRX_PUSHDATA_ch01_din_1(7 downto 0) <= TRX_PUSHDATA_ch01_din(7 downto 0);
  TRX_PUSHDATA_ch01_grant <= PUSHDATA_TRX_PUSHDATA_ch01_grant;
  TRX_PUSHDATA_ch01_req_1 <= TRX_PUSHDATA_ch01_req;
  TRX_PUSHDATA_ch01_wr_en_1 <= TRX_PUSHDATA_ch01_wr_en;
  TRX_PUSHDATA_ch02_din_1(7 downto 0) <= TRX_PUSHDATA_ch02_din(7 downto 0);
  TRX_PUSHDATA_ch02_grant <= PUSHDATA_TRX_PUSHDATA_ch02_grant;
  TRX_PUSHDATA_ch02_req_1 <= TRX_PUSHDATA_ch02_req;
  TRX_PUSHDATA_ch02_wr_en_1 <= TRX_PUSHDATA_ch02_wr_en;
  TRX_PUSHDATA_ch03_din_1(7 downto 0) <= TRX_PUSHDATA_ch03_din(7 downto 0);
  TRX_PUSHDATA_ch03_grant <= PUSHDATA_TRX_PUSHDATA_ch03_grant;
  TRX_PUSHDATA_ch03_req_1 <= TRX_PUSHDATA_ch03_req;
  TRX_PUSHDATA_ch03_wr_en_1 <= TRX_PUSHDATA_ch03_wr_en;
  TRX_PUSHDATA_ch04_din_1(7 downto 0) <= TRX_PUSHDATA_ch04_din(7 downto 0);
  TRX_PUSHDATA_ch04_grant <= PUSHDATA_TRX_PUSHDATA_ch04_grant;
  TRX_PUSHDATA_ch04_req_1 <= TRX_PUSHDATA_ch04_req;
  TRX_PUSHDATA_ch04_wr_en_1 <= TRX_PUSHDATA_ch04_wr_en;
  TRX_PUSHDATA_ch05_din_1(7 downto 0) <= TRX_PUSHDATA_ch05_din(7 downto 0);
  TRX_PUSHDATA_ch05_grant <= PUSHDATA_TRX_PUSHDATA_ch05_grant;
  TRX_PUSHDATA_ch05_req_1 <= TRX_PUSHDATA_ch05_req;
  TRX_PUSHDATA_ch05_wr_en_1 <= TRX_PUSHDATA_ch05_wr_en;
  TRX_PUSHDATA_ch06_din_1(7 downto 0) <= TRX_PUSHDATA_ch06_din(7 downto 0);
  TRX_PUSHDATA_ch06_grant <= PUSHDATA_TRX_PUSHDATA_ch06_grant;
  TRX_PUSHDATA_ch06_req_1 <= TRX_PUSHDATA_ch06_req;
  TRX_PUSHDATA_ch06_wr_en_1 <= TRX_PUSHDATA_ch06_wr_en;
  TRX_PUSHDATA_ch07_din_1(7 downto 0) <= TRX_PUSHDATA_ch07_din(7 downto 0);
  TRX_PUSHDATA_ch07_grant <= PUSHDATA_TRX_PUSHDATA_ch07_grant;
  TRX_PUSHDATA_ch07_req_1 <= TRX_PUSHDATA_ch07_req;
  TRX_PUSHDATA_ch07_wr_en_1 <= TRX_PUSHDATA_ch07_wr_en;
  TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) <= PUSHDATA_TRX_RX_PUSHDATA_GPIO1_i(31 downto 0);
  TRX_RX_PUSHDATA_GPIO2_o_1(31 downto 0) <= TRX_RX_PUSHDATA_GPIO2_o(31 downto 0);
  TRX_rx_rf09_FFT_config_tdata_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  TRX_rx_rf09_FFT_config_tvalid_0 <= fft09_config_tvalid_in;
  TRX_rx_rf09_FFT_data_tlast_0 <= fft09_data_tlast_in;
  TRX_rx_rf09_FFT_data_tvalid_0 <= fft09_data_tvalid_in;
  TRX_rx_rf09_FFT_window_coef_rom_rx09_0(9 downto 0) <= FFT_window_coef_rom_rx09(9 downto 0);
  TRX_rx_rf09_PUSHDATA_din_0(7 downto 0) <= TRX_PUSHDATA_din(7 downto 0);
  TRX_rx_rf09_PUSHDATA_wr_en_0 <= TRX_PUSHDATA_wr_en;
  TRX_rx_rf09_Pre_FFT_mem_addra_0(10 downto 0) <= premem_rx09_addra_in(10 downto 0);
  TRX_rx_rf09_Pre_FFT_mem_addrb_0(10 downto 0) <= TRX_rx_rf09_Pre_FFT_mem_addrb(10 downto 0);
  TRX_rx_rf09_Pre_FFT_mem_dina_0(25 downto 0) <= premem_rx09_dina_in(25 downto 0);
  TRX_rx_rf09_Pre_FFT_mem_wea_0(0) <= premem_rx09_wea_in(0);
  TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0(4 downto 0) <= TRX_rx_rf09_ch00_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch00_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0(15 downto 0);
  TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch01_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch01_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch02_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch02_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch03_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch03_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch04_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch04_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch05_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch05_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch06_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch06_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch07_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0) <= post_fft_rx09_ch07_blk_mem_gen_doutb(15 downto 0);
  TRX_rx_rf09_framectr_0(29 downto 0) <= RF09_framectr(29 downto 0);
  TRX_rx_rf09_uarterfrm_0(1 downto 0) <= RF09_quarterfrm(1 downto 0);
  aresetn_CD100_0 <= aresetn_CD100_in;
  decoder_rx09_squelch_lvl(15 downto 0) <= TRX_rx_rf09_PUSHDATA_decoder_rx09_squelch_lvl_0(15 downto 0);
  fft09_data_tready_out <= TRX_rx_rf09_FFT_data_tready_0;
  post_fft_mem_a_rx09_EoT <= TRX_rx_rf09_Post_FFT_mem_a_rx09_util_reduced_logic_0_Res_0;
  post_fft_rx09_mem_a_addr_out(41 downto 0) <= TRX_rx_rf09_Post_FFT_mem_a_addr_0(41 downto 0);
  rst_mig_7series_0_100M_peripheral_reset_0 <= rst_mig_7series_0_100M_peripheral_reset_in;
  s_axi_aclk_CD100_0 <= s_axi_aclk_CD100_in;
  xfft_rx09_dly3449_event_data_in_channel_halt_out <= TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_0;
  xfft_rx09_dly3449_event_frame_started_out <= TRX_rx_rf09_FFT_dly3449_event_frame_started_0;
  xfft_rx09_dly3449_event_tlast_missing_out <= TRX_rx_rf09_FFT_dly3449_event_tlast_missing_0;
  xfft_rx09_dly3449_event_tlast_unexpected_out <= TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_0;
PUSHDATA: entity work.PUSHDATA_imp_TPI30Q
     port map (
      TRX_PUSHDATA_ch00_grant => PUSHDATA_TRX_PUSHDATA_ch00_grant,
      TRX_PUSHDATA_ch00_req => TRX_PUSHDATA_ch00_req_1,
      TRX_PUSHDATA_ch01_din(7 downto 0) => TRX_PUSHDATA_ch01_din_1(7 downto 0),
      TRX_PUSHDATA_ch01_grant => PUSHDATA_TRX_PUSHDATA_ch01_grant,
      TRX_PUSHDATA_ch01_req => TRX_PUSHDATA_ch01_req_1,
      TRX_PUSHDATA_ch01_wr_en => TRX_PUSHDATA_ch01_wr_en_1,
      TRX_PUSHDATA_ch02_din(7 downto 0) => TRX_PUSHDATA_ch02_din_1(7 downto 0),
      TRX_PUSHDATA_ch02_grant => PUSHDATA_TRX_PUSHDATA_ch02_grant,
      TRX_PUSHDATA_ch02_req => TRX_PUSHDATA_ch02_req_1,
      TRX_PUSHDATA_ch02_wr_en => TRX_PUSHDATA_ch02_wr_en_1,
      TRX_PUSHDATA_ch03_din(7 downto 0) => TRX_PUSHDATA_ch03_din_1(7 downto 0),
      TRX_PUSHDATA_ch03_grant => PUSHDATA_TRX_PUSHDATA_ch03_grant,
      TRX_PUSHDATA_ch03_req => TRX_PUSHDATA_ch03_req_1,
      TRX_PUSHDATA_ch03_wr_en => TRX_PUSHDATA_ch03_wr_en_1,
      TRX_PUSHDATA_ch04_din(7 downto 0) => TRX_PUSHDATA_ch04_din_1(7 downto 0),
      TRX_PUSHDATA_ch04_grant => PUSHDATA_TRX_PUSHDATA_ch04_grant,
      TRX_PUSHDATA_ch04_req => TRX_PUSHDATA_ch04_req_1,
      TRX_PUSHDATA_ch04_wr_en => TRX_PUSHDATA_ch04_wr_en_1,
      TRX_PUSHDATA_ch05_din(7 downto 0) => TRX_PUSHDATA_ch05_din_1(7 downto 0),
      TRX_PUSHDATA_ch05_grant => PUSHDATA_TRX_PUSHDATA_ch05_grant,
      TRX_PUSHDATA_ch05_req => TRX_PUSHDATA_ch05_req_1,
      TRX_PUSHDATA_ch05_wr_en => TRX_PUSHDATA_ch05_wr_en_1,
      TRX_PUSHDATA_ch06_din(7 downto 0) => TRX_PUSHDATA_ch06_din_1(7 downto 0),
      TRX_PUSHDATA_ch06_grant => PUSHDATA_TRX_PUSHDATA_ch06_grant,
      TRX_PUSHDATA_ch06_req => TRX_PUSHDATA_ch06_req_1,
      TRX_PUSHDATA_ch06_wr_en => TRX_PUSHDATA_ch06_wr_en_1,
      TRX_PUSHDATA_ch07_din(7 downto 0) => TRX_PUSHDATA_ch07_din_1(7 downto 0),
      TRX_PUSHDATA_ch07_grant => PUSHDATA_TRX_PUSHDATA_ch07_grant,
      TRX_PUSHDATA_ch07_req => TRX_PUSHDATA_ch07_req_1,
      TRX_PUSHDATA_ch07_wr_en => TRX_PUSHDATA_ch07_wr_en_1,
      TRX_PUSHDATA_din(7 downto 0) => TRX_rx_rf09_PUSHDATA_din_0(7 downto 0),
      TRX_PUSHDATA_wr_en => TRX_rx_rf09_PUSHDATA_wr_en_0,
      TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) => PUSHDATA_TRX_RX_PUSHDATA_GPIO1_i(31 downto 0),
      TRX_RX_PUSHDATA_GPIO2_o(31 downto 0) => TRX_RX_PUSHDATA_GPIO2_o_1(31 downto 0),
      decoder_rx09_squelch_lvl(15 downto 0) => TRX_rx_rf09_PUSHDATA_decoder_rx09_squelch_lvl_0(15 downto 0),
      rst_mig_7series_0_100M_peripheral_reset_in => rst_mig_7series_0_100M_peripheral_reset_0,
      s_axi_aclk_CD100_in => s_axi_aclk_CD100_0,
      s_axi_aresetn => aresetn_CD100_0
    );
TRX_post_fft_rx09_decoder_0: component UFBmod_TRX_TRX_post_fft_rx09_ad_0_0
     port map (
      addr_in(9 downto 0) => TRX_rx_rf09_Post_FFT_xlslice_14downto0_dout_0(9 downto 0),
      addr_out(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      clk_100MHz => s_axi_aclk_CD100_0,
      din(15 downto 0) => TRX_rx_rf09_Post_FFT_mem_magnitude_0(15 downto 0),
      dout(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      ena_ch00 => TRX_post_fft_rx09_ad_0_ena_ch00,
      ena_ch01 => TRX_post_fft_rx09_decoder_0_ena_ch01,
      ena_ch02 => TRX_post_fft_rx09_decoder_0_ena_ch02,
      ena_ch03 => TRX_post_fft_rx09_decoder_0_ena_ch03,
      ena_ch04 => TRX_post_fft_rx09_decoder_0_ena_ch04,
      ena_ch05 => TRX_post_fft_rx09_decoder_0_ena_ch05,
      ena_ch06 => TRX_post_fft_rx09_decoder_0_ena_ch06,
      ena_ch07 => TRX_post_fft_rx09_decoder_0_ena_ch07,
      reset_100MHz => rst_mig_7series_0_100M_peripheral_reset_0,
      tvalid => TRX_rx_rf09_Cordic_rx09_tvalid_0
    );
TRX_rx_FFT_calc: entity work.TRX_rx_FFT_calc_imp_VKX3UL
     port map (
      FFT_window_coef_rom_rx09(9 downto 0) => TRX_rx_rf09_FFT_window_coef_rom_rx09_0(9 downto 0),
      RF09_framectr(29 downto 0) => TRX_rx_rf09_framectr_0(29 downto 0),
      RF09_quarterfrm(1 downto 0) => TRX_rx_rf09_uarterfrm_0(1 downto 0),
      aresetn_CD100_in => aresetn_CD100_0,
      cordic_rx09_m_tuser_out(41 downto 0) => TRX_rx_rf09_Post_FFT_mem_a_addr_0(41 downto 0),
      cordic_rx09_tvalid_out => TRX_rx_rf09_Cordic_rx09_tvalid_0,
      fft09_config_tdata_in(7 downto 0) => TRX_rx_rf09_FFT_config_tdata_0(7 downto 0),
      fft09_config_tvalid_in => TRX_rx_rf09_FFT_config_tvalid_0,
      fft09_data_tlast_in => TRX_rx_rf09_FFT_data_tlast_0,
      fft09_data_tready_out => TRX_rx_rf09_FFT_data_tready_0,
      fft09_data_tvalid_in => TRX_rx_rf09_FFT_data_tvalid_0,
      fft_s_data_rx09_im_in(12 downto 0) => TRX_rx_rf09_FFT_s_data_rx09_im_0(12 downto 0),
      fft_s_data_rx09_re_in(12 downto 0) => TRX_rx_rf09_FFT_s_data_rx09_re_0(12 downto 0),
      rst_mig_7series_0_100M_peripheral_reset_in => rst_mig_7series_0_100M_peripheral_reset_0,
      rx09_postmem_magnitude_out(15 downto 0) => TRX_rx_rf09_Post_FFT_mem_magnitude_0(15 downto 0),
      s_axi_aclk_CD100_in => s_axi_aclk_CD100_0,
      xfft_rx09_dly3449_event_data_in_channel_halt_out => TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_0,
      xfft_rx09_dly3449_event_frame_started_out => TRX_rx_rf09_FFT_dly3449_event_frame_started_0,
      xfft_rx09_dly3449_event_tlast_missing_out => TRX_rx_rf09_FFT_dly3449_event_tlast_missing_0,
      xfft_rx09_dly3449_event_tlast_unexpected_out => TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_0
    );
post_fft_mem_a_rx09_util_reduced_logic_0: component UFBmod_TRX_post_fft_mem_a_rx09_util_reduced_logic_0_1
     port map (
      Op1(10 downto 0) => TRX_rx_rf09_Post_FFT_mem_a_rx09_xlconcat_0_dout_0(10 downto 0),
      Res => TRX_rx_rf09_Post_FFT_mem_a_rx09_util_reduced_logic_0_Res_0
    );
post_fft_mem_a_rx09_xlconcat_0: component UFBmod_TRX_post_fft_mem_a_rx09_xlconcat_0_1
     port map (
      In0(9 downto 0) => TRX_rx_rf09_Post_FFT_xlslice_14downto0_dout_0(9 downto 0),
      In1(0) => TRX_rx_rf09_Cordic_rx09_tvalid_0,
      dout(10 downto 0) => TRX_rx_rf09_Post_FFT_mem_a_rx09_xlconcat_0_dout_0(10 downto 0)
    );
post_fft_rx09_ch00_blk_mem_gen_0: component UFBmod_TRX_post_fft_rx09_blk_mem_gen_0_1
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0(15 downto 0),
      ena => TRX_post_fft_rx09_ad_0_ena_ch00,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch01_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_0
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch01_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch01,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch02_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_1
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch02_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch02,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch03_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_2
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch03_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch03,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch04_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_3
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch04_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch04,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch05_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_4
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch05_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch05,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch06_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_5
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch06_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch06,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_ch07_blk_mem_gen: component UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_6
     port map (
      addra(4 downto 0) => post_fft_rx09_ch00_xlslice_4to0_Dout(4 downto 0),
      addrb(4 downto 0) => TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1(4 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(15 downto 0) => TRX_post_fft_rx09_decoder_0_dout(15 downto 0),
      doutb(15 downto 0) => post_fft_rx09_ch07_blk_mem_gen_doutb(15 downto 0),
      ena => TRX_post_fft_rx09_decoder_0_ena_ch07,
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => val1_len1_0(0)
    );
post_fft_rx09_xlslice_9to0: component UFBmod_TRX_post_fft_rx09_xlslice_9downto0_1
     port map (
      Din(41 downto 0) => TRX_rx_rf09_Post_FFT_mem_a_addr_0(41 downto 0),
      Dout(9 downto 0) => TRX_rx_rf09_Post_FFT_xlslice_14downto0_dout_0(9 downto 0)
    );
pre_fft_rx09_blk_mem_gen_0: component UFBmod_TRX_pre_fft_rx09_blk_mem_gen_0_1
     port map (
      addra(10 downto 0) => TRX_rx_rf09_Pre_FFT_mem_addra_0(10 downto 0),
      addrb(10 downto 0) => TRX_rx_rf09_Pre_FFT_mem_addrb_0(10 downto 0),
      clka => s_axi_aclk_CD100_0,
      clkb => s_axi_aclk_CD100_0,
      dina(25 downto 0) => TRX_rx_rf09_Pre_FFT_mem_dina_0(25 downto 0),
      doutb(25 downto 0) => TRX_rx_rf09_Pre_FFT_blk_mem_gen_0_doutb_0(25 downto 0),
      rstb => rst_mig_7series_0_100M_peripheral_reset_0,
      wea(0) => TRX_rx_rf09_Pre_FFT_mem_wea_0(0)
    );
pre_fft_rx09_xlslice_12to00: component UFBmod_TRX_pre_fft_rx09_xlslice_12to00_1
     port map (
      Din(25 downto 0) => TRX_rx_rf09_Pre_FFT_blk_mem_gen_0_doutb_0(25 downto 0),
      Dout(12 downto 0) => TRX_rx_rf09_FFT_s_data_rx09_re_0(12 downto 0)
    );
pre_fft_rx09_xlslice_25to13: component UFBmod_TRX_pre_fft_rx09_xlslice_25to13_1
     port map (
      Din(25 downto 0) => TRX_rx_rf09_Pre_FFT_blk_mem_gen_0_doutb_0(25 downto 0),
      Dout(12 downto 0) => TRX_rx_rf09_FFT_s_data_rx09_im_0(12 downto 0)
    );
xlconstant_val1_len1: component UFBmod_TRX_xlconstant_val1_len1_7
     port map (
      dout(0) => val1_len1_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_TRX is
  port (
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Status_LVDS_rx09_synced : in STD_LOGIC;
    Status_LVDS_rx24_synced : in STD_LOGIC;
    TRX_CONFIG_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_LVDS_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_PLL_clk_25MHz_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PUSHDATA_ch00_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch00_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_RX_PUSHDATA_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDSAMPL_GPIO1_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDS_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_clk_trx_26MHz_vio : out STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : out STD_LOGIC;
    TRX_dds_tx_rf09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_encoder_tx09_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_encoder_tx09_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TRX_encoder_tx09_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_fft09_data_tready_out : out STD_LOGIC;
    TRX_post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    TRX_post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid : out STD_LOGIC;
    TRX_rx24_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_clkdiv_16MHz : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_rx_rf09_Pre_FFT_mem_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_xfft_rx09_dly3449_event_data_in_channel_halt : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_frame_started : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_missing : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_unexpected : out STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    microblaze_0_Clk_100MHz : in STD_LOGIC;
    mig_7series_0_mmcm_locked : in STD_LOGIC;
    mig_7series_0_ui_addn_clk_0_200MHz : in STD_LOGIC;
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC;
    pulldata_tx09_en : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_aresetn : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of UFBmod_TRX : entity is "UFBmod_TRX,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UFBmod_TRX,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=133,numReposBlks=121,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of UFBmod_TRX : entity is "UFBmod_TRX.hwdef";
end UFBmod_TRX;

architecture STRUCTURE of UFBmod_TRX is
  component UFBmod_TRX_TRX_proc_sys_reset_0_1 is
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
  end component UFBmod_TRX_TRX_proc_sys_reset_0_1;
  component UFBmod_TRX_TRX_io_reset_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component UFBmod_TRX_TRX_io_reset_counter_binary_0_1;
  component UFBmod_TRX_TRX_reset_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_TRX_TRX_reset_util_vector_logic_0_1;
  signal TRX_16MHz_peripheral_reset_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_CONFIG_GPIO1_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_LVDS_TRX_LVDS_tx09_fifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_PLL_clk_25MHz_n_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_PLL_clk_25MHz_p_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_PUSHDATA_ch00_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch01_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch01_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch02_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch02_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch03_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch03_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch04_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch04_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch05_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch05_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch06_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch06_wr_en_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_PUSHDATA_ch07_req_1 : STD_LOGIC;
  signal TRX_PUSHDATA_ch07_wr_en_1 : STD_LOGIC;
  signal TRX_RX_PUSHDATA_GPIO2_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_TRX_tx_clk_CLK_N : STD_LOGIC;
  signal TRX_TRX_tx_clk_CLK_P : STD_LOGIC;
  signal TRX_TX_DDSAMPL_GPIO1_o_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_TX_DDSAMPL_GPIO2_o_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_TX_DDS_GPIO1_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_TX_DDS_GPIO2_o_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_clk_26MHz_0 : STD_LOGIC;
  signal TRX_clk_26MHz_vio_0 : STD_LOGIC;
  signal TRX_clk_PLL_25MHz_vio_0 : STD_LOGIC;
  signal TRX_clock_locked_0 : STD_LOGIC;
  signal TRX_config_LVDS_tx_blank_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_config_TRX_CONFIG_GPIO2_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_dcm_locked_0 : STD_LOGIC;
  signal TRX_io_reset_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_io_reset_counter_binary_0_THRESH0_0 : STD_LOGIC;
  signal TRX_peripheral_aresetn_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_ref_clock_200MHz_0 : STD_LOGIC;
  signal TRX_reset_CD100_0 : STD_LOGIC;
  signal TRX_resetn_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rfx_mode_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch00_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch01_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch02_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch03_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch04_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch05_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch06_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_PUSHDATA_ch07_grant : STD_LOGIC;
  signal TRX_rx_FFT_unit_TRX_RX_PUSHDATA_GPIO1_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_FFT_unit_TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_clk_64MHz_1_CLK_N : STD_LOGIC;
  signal TRX_rx_clk_64MHz_1_CLK_P : STD_LOGIC;
  signal TRX_rx_data_n_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_data_p_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_rd_data_count_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TRX_rx_rf09_32bits_CD100_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx_rf09_Decoder_squelch_lvl_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_FFT_config_tdata_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf09_FFT_config_tvalid_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tlast_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tready_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_data_tvalid_0 : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_out : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_frame_started_out : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_tlast_missing_out : STD_LOGIC;
  signal TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_out : STD_LOGIC;
  signal TRX_rx_rf09_FFT_window_coef_rom_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal TRX_rx_rf09_FIFO_valid_0 : STD_LOGIC;
  signal TRX_rx_rf09_LVDS_status_synced_0 : STD_LOGIC;
  signal TRX_rx_rf09_PUSHDATA_din_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_rx_rf09_PUSHDATA_wr_en_0 : STD_LOGIC;
  signal TRX_rx_rf09_Pre_FFT_mem_addrb_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_rx_rf09_clkdiv_16MHz_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_rx_rf09_framectr_0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal TRX_rx_rf09_post_fft_mem_a_EoT_0 : STD_LOGIC;
  signal TRX_rx_rf09_post_fft_mem_a_addr_0 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal TRX_rx_rf09_premem_addra_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_rx_rf09_premem_rx09_dina_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TRX_rx_rf09_premem_rx09_wea_in_0 : STD_LOGIC;
  signal TRX_rx_rf09_quarterfrm_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_rx_rf24_FIFO_dout_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_rx_rf24_FIFO_valid_0 : STD_LOGIC;
  signal TRX_rx_rf24_LVDS_status_synced_0 : STD_LOGIC;
  signal TRX_tx_DDS_unit_TRX_TX_DDS_GPIO1_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_tx_rf09_DDS0_gpio_ampt_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_rf09_DDS1_gpio_ampt_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_tx_rf09_DDS_LVDS_4to1_c_counter_binary_0_THRESH0_0 : STD_LOGIC;
  signal TRX_tx_rf09_DDS_data_count_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal TRX_tx_rf09_DDS_im_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_rf09_DDS_ptt_0 : STD_LOGIC;
  signal TRX_tx_rf09_DDS_re_0 : STD_LOGIC_VECTOR ( 20 downto 8 );
  signal TRX_tx_rf09_Encoder_pull_FIFO_dump_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_rf09_Encoder_pull_data_len_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal TRX_tx_rf09_Encoder_pull_do_start_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_tx_rf09_LVDS_data_n_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_tx_rf09_LVDS_data_p_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TRX_tx_rf09_PULLDATA_FIFO_empty_0 : STD_LOGIC;
  signal TRX_tx_rf09_PULLDATA_byteData_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_tx_rf09_PULLDATA_dds_inc_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TRX_tx_rf09_PULLDATA_en_0 : STD_LOGIC;
  signal proc_sys_reset_aux_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_0 : STD_LOGIC;
  signal s_axi_aresetn_0 : STD_LOGIC;
  signal NLW_TRX_io_reset_counter_binary_0_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_TRX_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_TRX_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_TRX_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of TRX_clk_26MHz : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_CLK_26MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of TRX_clk_26MHz : signal is "XIL_INTERFACENAME CLK.TRX_CLK_26MHZ, CLK_DOMAIN msys_TRX_clk_26MHz, FREQ_HZ 26000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of TRX_clk_trx_26MHz_vio : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_CLK_TRX_26MHZ_VIO CLK";
  attribute X_INTERFACE_PARAMETER of TRX_clk_trx_26MHz_vio : signal is "XIL_INTERFACENAME CLK.TRX_CLK_TRX_26MHZ_VIO, CLK_DOMAIN /TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 26000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_clk_trx_pll_25MHz_vio : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_CLK_TRX_PLL_25MHZ_VIO CLK";
  attribute X_INTERFACE_PARAMETER of TRX_clk_trx_pll_25MHz_vio : signal is "XIL_INTERFACENAME CLK.TRX_CLK_TRX_PLL_25MHZ_VIO, CLK_DOMAIN /TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_rx_clk_64MHz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 TRX_rx_clk_64MHz CLK_N";
  attribute X_INTERFACE_PARAMETER of TRX_rx_clk_64MHz_clk_n : signal is "XIL_INTERFACENAME TRX_rx_clk_64MHz, CAN_DEBUG false, FREQ_HZ 64000000";
  attribute X_INTERFACE_INFO of TRX_rx_clk_64MHz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 TRX_rx_clk_64MHz CLK_P";
  attribute X_INTERFACE_INFO of TRX_tx_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 TRX_tx_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of TRX_tx_clk_clk_n : signal is "XIL_INTERFACENAME TRX_tx_clk, CAN_DEBUG false, FREQ_HZ 64000000";
  attribute X_INTERFACE_INFO of TRX_tx_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 TRX_tx_clk CLK_P";
  attribute X_INTERFACE_INFO of microblaze_0_Clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.MICROBLAZE_0_CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER of microblaze_0_Clk_100MHz : signal is "XIL_INTERFACENAME CLK.MICROBLAZE_0_CLK_100MHZ, ASSOCIATED_RESET rst_mig_7series_0_100M_peripheral_aresetn:rst_mig_7series_0_100M_peripheral_reset, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of mig_7series_0_ui_addn_clk_0_200MHz : signal is "xilinx.com:signal:clock:1.0 CLK.MIG_7SERIES_0_UI_ADDN_CLK_0_200MHZ CLK";
  attribute X_INTERFACE_PARAMETER of mig_7series_0_ui_addn_clk_0_200MHz : signal is "XIL_INTERFACENAME CLK.MIG_7SERIES_0_UI_ADDN_CLK_0_200MHZ, CLK_DOMAIN UFBmod_TRX_mig_7series_0_ui_addn_clk_0_200MHz, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst_mig_7series_0_100M_peripheral_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.RST_MIG_7SERIES_0_100M_PERIPHERAL_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of rst_mig_7series_0_100M_peripheral_aresetn : signal is "XIL_INTERFACENAME RST.RST_MIG_7SERIES_0_100M_PERIPHERAL_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rst_mig_7series_0_100M_peripheral_reset : signal is "xilinx.com:signal:reset:1.0 RST.RST_MIG_7SERIES_0_100M_PERIPHERAL_RESET RST";
  attribute X_INTERFACE_PARAMETER of rst_mig_7series_0_100M_peripheral_reset : signal is "XIL_INTERFACENAME RST.RST_MIG_7SERIES_0_100M_PERIPHERAL_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of FFT_window_coef_rom_rx09 : signal is "xilinx.com:signal:data:1.0 DATA.FFT_WINDOW_COEF_ROM_RX09 DATA";
  attribute X_INTERFACE_PARAMETER of FFT_window_coef_rom_rx09 : signal is "XIL_INTERFACENAME DATA.FFT_WINDOW_COEF_ROM_RX09, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of RF09_framectr : signal is "xilinx.com:signal:data:1.0 DATA.RF09_FRAMECTR DATA";
  attribute X_INTERFACE_PARAMETER of RF09_framectr : signal is "XIL_INTERFACENAME DATA.RF09_FRAMECTR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of RF09_quarterfrm : signal is "xilinx.com:signal:data:1.0 DATA.RF09_QUARTERFRM DATA";
  attribute X_INTERFACE_PARAMETER of RF09_quarterfrm : signal is "XIL_INTERFACENAME DATA.RF09_QUARTERFRM, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_LVDS_tx09_fifo_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_LVDS_TX09_FIFO_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_LVDS_tx09_fifo_din : signal is "XIL_INTERFACENAME DATA.TRX_LVDS_TX09_FIFO_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PLL_clk_25MHz_n : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_PLL_CLK_25MHZ_N CLK";
  attribute X_INTERFACE_PARAMETER of TRX_PLL_clk_25MHz_n : signal is "XIL_INTERFACENAME CLK.TRX_PLL_CLK_25MHZ_N, CLK_DOMAIN /TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_PLL_clk_25MHz_p : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_PLL_CLK_25MHZ_P CLK";
  attribute X_INTERFACE_PARAMETER of TRX_PLL_clk_25MHz_p : signal is "XIL_INTERFACENAME CLK.TRX_PLL_CLK_25MHZ_P, CLK_DOMAIN /TRX_clock/TRX_PLL_clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch00_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH00_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch00_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH00_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch01_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH01_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch01_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH01_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch02_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH02_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch02_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH02_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch03_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH03_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch03_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH03_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch04_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH04_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch04_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH04_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch05_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH05_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch05_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH05_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch06_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH06_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch06_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH06_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_PUSHDATA_ch07_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_CH07_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_PUSHDATA_ch07_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_CH07_DIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_dds_tx_rf09_inc : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DDS_TX_RF09_INC DATA";
  attribute X_INTERFACE_PARAMETER of TRX_dds_tx_rf09_inc : signal is "XIL_INTERFACENAME DATA.TRX_DDS_TX_RF09_INC, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_decoder_rx09_squelch_lvl : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DECODER_RX09_SQUELCH_LVL DATA";
  attribute X_INTERFACE_PARAMETER of TRX_decoder_rx09_squelch_lvl : signal is "XIL_INTERFACENAME DATA.TRX_DECODER_RX09_SQUELCH_LVL, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_encoder_tx09_pull_data_len : signal is "xilinx.com:signal:data:1.0 DATA.TRX_ENCODER_TX09_PULL_DATA_LEN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_encoder_tx09_pull_data_len : signal is "XIL_INTERFACENAME DATA.TRX_ENCODER_TX09_PULL_DATA_LEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_post_fft_rx09_mem_a_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_POST_FFT_RX09_MEM_A_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_post_fft_rx09_mem_a_addr : signal is "XIL_INTERFACENAME DATA.TRX_POST_FFT_RX09_MEM_A_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_pulldata_tx09_byteData : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PULLDATA_TX09_BYTEDATA DATA";
  attribute X_INTERFACE_PARAMETER of TRX_pulldata_tx09_byteData : signal is "XIL_INTERFACENAME DATA.TRX_PULLDATA_TX09_BYTEDATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_resetn : signal is "xilinx.com:signal:reset:1.0 RST.TRX_RESETN RST";
  attribute X_INTERFACE_PARAMETER of TRX_resetn : signal is "XIL_INTERFACENAME RST.TRX_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of TRX_rx09_fifo : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX09_FIFO DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx09_fifo : signal is "XIL_INTERFACENAME DATA.TRX_RX09_FIFO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx24_fifo : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX24_FIFO DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx24_fifo : signal is "XIL_INTERFACENAME DATA.TRX_RX24_FIFO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_clkdiv_16MHz : signal is "xilinx.com:signal:clock:1.0 CLK.TRX_RX_CLKDIV_16MHZ CLK";
  attribute X_INTERFACE_PARAMETER of TRX_rx_clkdiv_16MHz : signal is "XIL_INTERFACENAME CLK.TRX_RX_CLKDIV_16MHZ, CLK_DOMAIN UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1_clk_div_out, FREQ_HZ 16000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of TRX_rx_rd_data_count : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RD_DATA_COUNT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rd_data_count : signal is "XIL_INTERFACENAME DATA.TRX_RX_RD_DATA_COUNT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_Pre_FFT_mem_addrb : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_PRE_FFT_MEM_ADDRB DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_Pre_FFT_mem_addrb : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_PRE_FFT_MEM_ADDRB, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH00_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH00_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH01_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH01_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH01_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH01_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH02_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH02_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH02_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH02_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH03_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH03_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH03_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH03_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH04_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH04_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH04_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH04_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH05_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH05_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH05_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH05_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH06_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH06_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH06_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH06_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH07_POST_FFT_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH07_POST_FFT_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_RX_RF09_CH07_POST_FFT_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_RX_RF09_CH07_POST_FFT_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_tx_DDS0_gpio_ampt : signal is "xilinx.com:signal:data:1.0 DATA.TRX_TX_DDS0_GPIO_AMPT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_tx_DDS0_gpio_ampt : signal is "XIL_INTERFACENAME DATA.TRX_TX_DDS0_GPIO_AMPT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_tx_DDS1_gpio_ampt : signal is "xilinx.com:signal:data:1.0 DATA.TRX_TX_DDS1_GPIO_AMPT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_tx_DDS1_gpio_ampt : signal is "XIL_INTERFACENAME DATA.TRX_TX_DDS1_GPIO_AMPT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_tx_data_count : signal is "xilinx.com:signal:data:1.0 DATA.TRX_TX_DATA_COUNT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_tx_data_count : signal is "XIL_INTERFACENAME DATA.TRX_TX_DATA_COUNT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_tx_im_out : signal is "xilinx.com:signal:data:1.0 DATA.TRX_TX_IM_OUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_tx_im_out : signal is "XIL_INTERFACENAME DATA.TRX_TX_IM_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 13} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 13}";
  attribute X_INTERFACE_INFO of TRX_tx_re_out : signal is "xilinx.com:signal:data:1.0 DATA.TRX_TX_RE_OUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_tx_re_out : signal is "XIL_INTERFACENAME DATA.TRX_TX_RE_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 13} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 13}";
  attribute X_INTERFACE_INFO of fft09_config_tdata_in : signal is "xilinx.com:signal:data:1.0 DATA.FFT09_CONFIG_TDATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of fft09_config_tdata_in : signal is "XIL_INTERFACENAME DATA.FFT09_CONFIG_TDATA_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of premem_rx09_addra_in : signal is "xilinx.com:signal:data:1.0 DATA.PREMEM_RX09_ADDRA_IN DATA";
  attribute X_INTERFACE_PARAMETER of premem_rx09_addra_in : signal is "XIL_INTERFACENAME DATA.PREMEM_RX09_ADDRA_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of premem_rx09_dina_in : signal is "xilinx.com:signal:data:1.0 DATA.PREMEM_RX09_DINA_IN DATA";
  attribute X_INTERFACE_PARAMETER of premem_rx09_dina_in : signal is "XIL_INTERFACENAME DATA.PREMEM_RX09_DINA_IN, LAYERED_METADATA undef";
begin
  TRX_CONFIG_GPIO1_o_1(31 downto 0) <= TRX_CONFIG_GPIO1_o(31 downto 0);
  TRX_CONFIG_GPIO2_i(31 downto 0) <= TRX_config_TRX_CONFIG_GPIO2_i(31 downto 0);
  TRX_LVDS_tx09_fifo_din(31 downto 0) <= TRX_LVDS_TRX_LVDS_tx09_fifo_din(31 downto 0);
  TRX_PLL_clk_25MHz_n(0) <= TRX_PLL_clk_25MHz_n_0(0);
  TRX_PLL_clk_25MHz_p(0) <= TRX_PLL_clk_25MHz_p_0(0);
  TRX_PUSHDATA_ch00_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch00_grant;
  TRX_PUSHDATA_ch00_req_1 <= TRX_PUSHDATA_ch00_req;
  TRX_PUSHDATA_ch01_din_1(7 downto 0) <= TRX_PUSHDATA_ch01_din(7 downto 0);
  TRX_PUSHDATA_ch01_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch01_grant;
  TRX_PUSHDATA_ch01_req_1 <= TRX_PUSHDATA_ch01_req;
  TRX_PUSHDATA_ch01_wr_en_1 <= TRX_PUSHDATA_ch01_wr_en;
  TRX_PUSHDATA_ch02_din_1(7 downto 0) <= TRX_PUSHDATA_ch02_din(7 downto 0);
  TRX_PUSHDATA_ch02_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch02_grant;
  TRX_PUSHDATA_ch02_req_1 <= TRX_PUSHDATA_ch02_req;
  TRX_PUSHDATA_ch02_wr_en_1 <= TRX_PUSHDATA_ch02_wr_en;
  TRX_PUSHDATA_ch03_din_1(7 downto 0) <= TRX_PUSHDATA_ch03_din(7 downto 0);
  TRX_PUSHDATA_ch03_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch03_grant;
  TRX_PUSHDATA_ch03_req_1 <= TRX_PUSHDATA_ch03_req;
  TRX_PUSHDATA_ch03_wr_en_1 <= TRX_PUSHDATA_ch03_wr_en;
  TRX_PUSHDATA_ch04_din_1(7 downto 0) <= TRX_PUSHDATA_ch04_din(7 downto 0);
  TRX_PUSHDATA_ch04_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch04_grant;
  TRX_PUSHDATA_ch04_req_1 <= TRX_PUSHDATA_ch04_req;
  TRX_PUSHDATA_ch04_wr_en_1 <= TRX_PUSHDATA_ch04_wr_en;
  TRX_PUSHDATA_ch05_din_1(7 downto 0) <= TRX_PUSHDATA_ch05_din(7 downto 0);
  TRX_PUSHDATA_ch05_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch05_grant;
  TRX_PUSHDATA_ch05_req_1 <= TRX_PUSHDATA_ch05_req;
  TRX_PUSHDATA_ch05_wr_en_1 <= TRX_PUSHDATA_ch05_wr_en;
  TRX_PUSHDATA_ch06_din_1(7 downto 0) <= TRX_PUSHDATA_ch06_din(7 downto 0);
  TRX_PUSHDATA_ch06_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch06_grant;
  TRX_PUSHDATA_ch06_req_1 <= TRX_PUSHDATA_ch06_req;
  TRX_PUSHDATA_ch06_wr_en_1 <= TRX_PUSHDATA_ch06_wr_en;
  TRX_PUSHDATA_ch07_din_1(7 downto 0) <= TRX_PUSHDATA_ch07_din(7 downto 0);
  TRX_PUSHDATA_ch07_grant <= TRX_rx_FFT_unit_TRX_PUSHDATA_ch07_grant;
  TRX_PUSHDATA_ch07_req_1 <= TRX_PUSHDATA_ch07_req;
  TRX_PUSHDATA_ch07_wr_en_1 <= TRX_PUSHDATA_ch07_wr_en;
  TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) <= TRX_rx_FFT_unit_TRX_RX_PUSHDATA_GPIO1_i(31 downto 0);
  TRX_RX_PUSHDATA_GPIO2_o_1(31 downto 0) <= TRX_RX_PUSHDATA_GPIO2_o(31 downto 0);
  TRX_TX_DDSAMPL_GPIO1_o_1(15 downto 0) <= TRX_TX_DDSAMPL_GPIO1_o(15 downto 0);
  TRX_TX_DDSAMPL_GPIO2_o_1(15 downto 0) <= TRX_TX_DDSAMPL_GPIO2_o(15 downto 0);
  TRX_TX_DDS_GPIO1_i(31 downto 0) <= TRX_tx_DDS_unit_TRX_TX_DDS_GPIO1_i(31 downto 0);
  TRX_TX_DDS_GPIO1_o_1(31 downto 0) <= TRX_TX_DDS_GPIO1_o(31 downto 0);
  TRX_TX_DDS_GPIO2_o_1(31 downto 0) <= TRX_TX_DDS_GPIO2_o(31 downto 0);
  TRX_TX_RF09_PULLDATA_FIFO_empty <= TRX_tx_rf09_PULLDATA_FIFO_empty_0;
  TRX_clk_26MHz_0 <= TRX_clk_26MHz;
  TRX_clk_trx_26MHz_vio <= TRX_clk_26MHz_vio_0;
  TRX_clk_trx_pll_25MHz_vio <= TRX_clk_PLL_25MHz_vio_0;
  TRX_dcm_locked_0 <= mig_7series_0_mmcm_locked;
  TRX_decoder_rx09_squelch_lvl(15 downto 0) <= TRX_rx_rf09_Decoder_squelch_lvl_0(15 downto 0);
  TRX_encoder_tx09_pull_FIFO_dump(0) <= TRX_tx_rf09_Encoder_pull_FIFO_dump_0(0);
  TRX_encoder_tx09_pull_data_len(6 downto 0) <= TRX_tx_rf09_Encoder_pull_data_len_0(6 downto 0);
  TRX_encoder_tx09_pull_do_start(0) <= TRX_tx_rf09_Encoder_pull_do_start_0(0);
  TRX_fft09_data_tready_out <= TRX_rx_rf09_FFT_data_tready_0;
  TRX_post_fft_mem_a_rx09_EoT <= TRX_rx_rf09_post_fft_mem_a_EoT_0;
  TRX_post_fft_rx09_mem_a_addr(41 downto 0) <= TRX_rx_rf09_post_fft_mem_a_addr_0(41 downto 0);
  TRX_pulldata_tx09_byteData(7 downto 0) <= TRX_tx_rf09_PULLDATA_byteData_0(7 downto 0);
  TRX_ref_clock_200MHz_0 <= mig_7series_0_ui_addn_clk_0_200MHz;
  TRX_reset_CD100_0 <= rst_mig_7series_0_100M_peripheral_reset;
  TRX_resetn(0) <= TRX_resetn_0(0);
  TRX_rfx_mode(0) <= TRX_rfx_mode_0(0);
  TRX_rx09_fifo(31 downto 0) <= TRX_rx_rf09_32bits_CD100_0(31 downto 0);
  TRX_rx09_fifo_valid <= TRX_rx_rf09_FIFO_valid_0;
  TRX_rx24_fifo(31 downto 0) <= TRX_rx_rf24_FIFO_dout_0(31 downto 0);
  TRX_rx24_fifo_valid <= TRX_rx_rf24_FIFO_valid_0;
  TRX_rx_clk_64MHz_1_CLK_N <= TRX_rx_clk_64MHz_clk_n;
  TRX_rx_clk_64MHz_1_CLK_P <= TRX_rx_clk_64MHz_clk_p;
  TRX_rx_clkdiv_16MHz(0) <= TRX_rx_rf09_clkdiv_16MHz_0(0);
  TRX_rx_data_n_0(1 downto 0) <= TRX_rx_data_n(1 downto 0);
  TRX_rx_data_p_0(1 downto 0) <= TRX_rx_data_p(1 downto 0);
  TRX_rx_rd_data_count(3 downto 0) <= TRX_rx_rd_data_count_1(3 downto 0);
  TRX_rx_rf09_FFT_config_tdata_0(7 downto 0) <= fft09_config_tdata_in(7 downto 0);
  TRX_rx_rf09_FFT_config_tvalid_0 <= fft09_config_tvalid_in;
  TRX_rx_rf09_FFT_data_tlast_0 <= fft09_data_tlast_in;
  TRX_rx_rf09_FFT_data_tvalid_0 <= fft09_data_tvalid_in;
  TRX_rx_rf09_FFT_window_coef_rom_0(9 downto 0) <= FFT_window_coef_rom_rx09(9 downto 0);
  TRX_rx_rf09_LVDS_status_synced_0 <= Status_LVDS_rx09_synced;
  TRX_rx_rf09_PUSHDATA_din_0(7 downto 0) <= TRX_PUSHDATA_ch00_din(7 downto 0);
  TRX_rx_rf09_PUSHDATA_wr_en_0 <= TRX_PUSHDATA_ch00_wr_en;
  TRX_rx_rf09_Pre_FFT_mem_addrb_0(10 downto 0) <= TRX_rx_rf09_Pre_FFT_mem_addrb(10 downto 0);
  TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0(4 downto 0) <= TRX_rx_rf09_ch00_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch00_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0(15 downto 0);
  TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch01_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch02_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch03_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch04_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch05_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch06_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1(4 downto 0) <= TRX_rx_rf09_ch07_Post_FFT_mem_b_addr(4 downto 0);
  TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0) <= TRX_rx_FFT_unit_TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0);
  TRX_rx_rf09_framectr_0(29 downto 0) <= RF09_framectr(29 downto 0);
  TRX_rx_rf09_premem_addra_0(10 downto 0) <= premem_rx09_addra_in(10 downto 0);
  TRX_rx_rf09_premem_rx09_dina_0(25 downto 0) <= premem_rx09_dina_in(25 downto 0);
  TRX_rx_rf09_premem_rx09_wea_in_0 <= premem_rx09_wea_in;
  TRX_rx_rf09_quarterfrm_0(1 downto 0) <= RF09_quarterfrm(1 downto 0);
  TRX_rx_rf24_LVDS_status_synced_0 <= Status_LVDS_rx24_synced;
  TRX_tx_DDS0_gpio_ampt(15 downto 0) <= TRX_tx_rf09_DDS0_gpio_ampt_0(15 downto 0);
  TRX_tx_DDS1_gpio_ampt(15 downto 0) <= TRX_tx_rf09_DDS1_gpio_ampt_0(15 downto 0);
  TRX_tx_clk_clk_n <= TRX_TRX_tx_clk_CLK_N;
  TRX_tx_clk_clk_p <= TRX_TRX_tx_clk_CLK_P;
  TRX_tx_data_count(11 downto 0) <= TRX_tx_rf09_DDS_data_count_0(11 downto 0);
  TRX_tx_data_n(1 downto 0) <= TRX_tx_rf09_LVDS_data_n_0(1 downto 0);
  TRX_tx_data_p(1 downto 0) <= TRX_tx_rf09_LVDS_data_p_0(1 downto 0);
  TRX_tx_im_out(20 downto 8) <= TRX_tx_rf09_DDS_im_0(20 downto 8);
  TRX_tx_re_out(20 downto 8) <= TRX_tx_rf09_DDS_re_0(20 downto 8);
  TRX_tx_rf09_DDS_ptt_0 <= TRX_dds_tx_rf09_ptt;
  TRX_tx_rf09_PULLDATA_dds_inc_0(25 downto 0) <= TRX_dds_tx_rf09_inc(25 downto 0);
  TRX_tx_rf09_PULLDATA_en_0 <= pulldata_tx09_en;
  TRX_xfft_rx09_dly3449_event_data_in_channel_halt <= TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_out;
  TRX_xfft_rx09_dly3449_event_frame_started <= TRX_rx_rf09_FFT_dly3449_event_frame_started_out;
  TRX_xfft_rx09_dly3449_event_tlast_missing <= TRX_rx_rf09_FFT_dly3449_event_tlast_missing_out;
  TRX_xfft_rx09_dly3449_event_tlast_unexpected <= TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_out;
  s_axi_aclk_0 <= microblaze_0_Clk_100MHz;
  s_axi_aresetn_0 <= rst_mig_7series_0_100M_peripheral_aresetn;
TRX_LVDS: entity work.TRX_LVDS_imp_GRAJC5
     port map (
      TRX_LVDS_tx09_fifo_din(31 downto 0) => TRX_LVDS_TRX_LVDS_tx09_fifo_din(31 downto 0),
      TRX_config_LVDS_tx_blank_in(0) => TRX_config_LVDS_tx_blank_0(0),
      TRX_dds_tx_rf09_ptt(0) => TRX_tx_rf09_DDS_ptt_0,
      TRX_io_reset_i => TRX_io_reset_0(0),
      TRX_rx09_fifo_o(31 downto 0) => TRX_rx_rf09_32bits_CD100_0(31 downto 0),
      TRX_rx09_fifo_valid_o => TRX_rx_rf09_FIFO_valid_0,
      TRX_rx24_fifo_o(31 downto 0) => TRX_rx_rf24_FIFO_dout_0(31 downto 0),
      TRX_rx24_fifo_valid_o => TRX_rx_rf24_FIFO_valid_0,
      TRX_rx_clk_64MHz_clk_n => TRX_rx_clk_64MHz_1_CLK_N,
      TRX_rx_clk_64MHz_clk_p => TRX_rx_clk_64MHz_1_CLK_P,
      TRX_rx_clkdiv_16MHz_o(0) => TRX_rx_rf09_clkdiv_16MHz_0(0),
      TRX_rx_data_n(1 downto 0) => TRX_rx_data_n_0(1 downto 0),
      TRX_rx_data_p(1 downto 0) => TRX_rx_data_p_0(1 downto 0),
      TRX_rx_rd_data_count(3 downto 0) => TRX_rx_rd_data_count_1(3 downto 0),
      TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz => TRX_tx_rf09_DDS_LVDS_4to1_c_counter_binary_0_THRESH0_0,
      TRX_tx_clk_clk_n => TRX_TRX_tx_clk_CLK_N,
      TRX_tx_clk_clk_p => TRX_TRX_tx_clk_CLK_P,
      TRX_tx_data_n(1 downto 0) => TRX_tx_rf09_LVDS_data_n_0(1 downto 0),
      TRX_tx_data_p(1 downto 0) => TRX_tx_rf09_LVDS_data_p_0(1 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_rf09_DDS_im_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_rf09_DDS_re_0(20 downto 8),
      clk_rst_i => TRX_16MHz_peripheral_reset_0(0),
      ref_clock_i => TRX_ref_clock_200MHz_0,
      reset_CD100_i => TRX_reset_CD100_0,
      s_axi_aclk => s_axi_aclk_0
    );
TRX_clock: entity work.TRX_clock_imp_1A7SU8Q
     port map (
      TRX_PLL_clk_25MHz_N(0) => TRX_PLL_clk_25MHz_n_0(0),
      TRX_PLL_clk_25MHz_P(0) => TRX_PLL_clk_25MHz_p_0(0),
      TRX_clk_26MHz => TRX_clk_26MHz_0,
      clk_trx_26MHz_vio => TRX_clk_26MHz_vio_0,
      clk_trx_pll_25MHz_vio => TRX_clk_PLL_25MHz_vio_0,
      locked => TRX_clock_locked_0
    );
TRX_config: entity work.TRX_config_imp_1VZ7P75
     port map (
      LVDS_tx_blank(0) => TRX_config_LVDS_tx_blank_0(0),
      Status_LVDS_rx09_synced(0) => TRX_rx_rf09_LVDS_status_synced_0,
      Status_LVDS_rx24_synced(0) => TRX_rx_rf24_LVDS_status_synced_0,
      TRX_CONFIG_GPIO1_o(31 downto 0) => TRX_CONFIG_GPIO1_o_1(31 downto 0),
      TRX_CONFIG_GPIO2_i(31 downto 0) => TRX_config_TRX_CONFIG_GPIO2_i(31 downto 0),
      TRX_resetn(0) => TRX_resetn_0(0),
      TRX_rfx_mode(0) => TRX_rfx_mode_0(0),
      locked => TRX_clock_locked_0,
      proc_sys_reset_aux(0) => proc_sys_reset_aux_1(0)
    );
TRX_io_reset_counter_binary_0: component UFBmod_TRX_TRX_io_reset_counter_binary_0_1
     port map (
      CE => TRX_io_reset_0(0),
      CLK => TRX_rx_rf09_clkdiv_16MHz_0(0),
      Q(4 downto 0) => NLW_TRX_io_reset_counter_binary_0_Q_UNCONNECTED(4 downto 0),
      SCLR => TRX_16MHz_peripheral_reset_0(0),
      THRESH0 => TRX_io_reset_counter_binary_0_THRESH0_0
    );
TRX_proc_sys_reset_0: component UFBmod_TRX_TRX_proc_sys_reset_0_1
     port map (
      aux_reset_in => proc_sys_reset_aux_1(0),
      bus_struct_reset(0) => NLW_TRX_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => TRX_dcm_locked_0,
      ext_reset_in => TRX_reset_CD100_0,
      interconnect_aresetn(0) => NLW_TRX_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_TRX_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => TRX_peripheral_aresetn_0(0),
      peripheral_reset(0) => TRX_16MHz_peripheral_reset_0(0),
      slowest_sync_clk => TRX_rx_rf09_clkdiv_16MHz_0(0)
    );
TRX_reset_util_vector_logic_0: component UFBmod_TRX_TRX_reset_util_vector_logic_0_1
     port map (
      Op1(0) => TRX_io_reset_counter_binary_0_THRESH0_0,
      Res(0) => TRX_io_reset_0(0)
    );
TRX_rx_FFT_unit: entity work.TRX_rx_FFT_unit_imp_6J07ED
     port map (
      FFT_window_coef_rom_rx09(9 downto 0) => TRX_rx_rf09_FFT_window_coef_rom_0(9 downto 0),
      RF09_framectr(29 downto 0) => TRX_rx_rf09_framectr_0(29 downto 0),
      RF09_quarterfrm(1 downto 0) => TRX_rx_rf09_quarterfrm_0(1 downto 0),
      TRX_PUSHDATA_ch00_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch00_grant,
      TRX_PUSHDATA_ch00_req => TRX_PUSHDATA_ch00_req_1,
      TRX_PUSHDATA_ch01_din(7 downto 0) => TRX_PUSHDATA_ch01_din_1(7 downto 0),
      TRX_PUSHDATA_ch01_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch01_grant,
      TRX_PUSHDATA_ch01_req => TRX_PUSHDATA_ch01_req_1,
      TRX_PUSHDATA_ch01_wr_en => TRX_PUSHDATA_ch01_wr_en_1,
      TRX_PUSHDATA_ch02_din(7 downto 0) => TRX_PUSHDATA_ch02_din_1(7 downto 0),
      TRX_PUSHDATA_ch02_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch02_grant,
      TRX_PUSHDATA_ch02_req => TRX_PUSHDATA_ch02_req_1,
      TRX_PUSHDATA_ch02_wr_en => TRX_PUSHDATA_ch02_wr_en_1,
      TRX_PUSHDATA_ch03_din(7 downto 0) => TRX_PUSHDATA_ch03_din_1(7 downto 0),
      TRX_PUSHDATA_ch03_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch03_grant,
      TRX_PUSHDATA_ch03_req => TRX_PUSHDATA_ch03_req_1,
      TRX_PUSHDATA_ch03_wr_en => TRX_PUSHDATA_ch03_wr_en_1,
      TRX_PUSHDATA_ch04_din(7 downto 0) => TRX_PUSHDATA_ch04_din_1(7 downto 0),
      TRX_PUSHDATA_ch04_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch04_grant,
      TRX_PUSHDATA_ch04_req => TRX_PUSHDATA_ch04_req_1,
      TRX_PUSHDATA_ch04_wr_en => TRX_PUSHDATA_ch04_wr_en_1,
      TRX_PUSHDATA_ch05_din(7 downto 0) => TRX_PUSHDATA_ch05_din_1(7 downto 0),
      TRX_PUSHDATA_ch05_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch05_grant,
      TRX_PUSHDATA_ch05_req => TRX_PUSHDATA_ch05_req_1,
      TRX_PUSHDATA_ch05_wr_en => TRX_PUSHDATA_ch05_wr_en_1,
      TRX_PUSHDATA_ch06_din(7 downto 0) => TRX_PUSHDATA_ch06_din_1(7 downto 0),
      TRX_PUSHDATA_ch06_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch06_grant,
      TRX_PUSHDATA_ch06_req => TRX_PUSHDATA_ch06_req_1,
      TRX_PUSHDATA_ch06_wr_en => TRX_PUSHDATA_ch06_wr_en_1,
      TRX_PUSHDATA_ch07_din(7 downto 0) => TRX_PUSHDATA_ch07_din_1(7 downto 0),
      TRX_PUSHDATA_ch07_grant => TRX_rx_FFT_unit_TRX_PUSHDATA_ch07_grant,
      TRX_PUSHDATA_ch07_req => TRX_PUSHDATA_ch07_req_1,
      TRX_PUSHDATA_ch07_wr_en => TRX_PUSHDATA_ch07_wr_en_1,
      TRX_PUSHDATA_din(7 downto 0) => TRX_rx_rf09_PUSHDATA_din_0(7 downto 0),
      TRX_PUSHDATA_wr_en => TRX_rx_rf09_PUSHDATA_wr_en_0,
      TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) => TRX_rx_FFT_unit_TRX_RX_PUSHDATA_GPIO1_i(31 downto 0),
      TRX_RX_PUSHDATA_GPIO2_o(31 downto 0) => TRX_RX_PUSHDATA_GPIO2_o_1(31 downto 0),
      TRX_rx_rf09_Pre_FFT_mem_addrb(10 downto 0) => TRX_rx_rf09_Pre_FFT_mem_addrb_0(10 downto 0),
      TRX_rx_rf09_ch00_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0(4 downto 0),
      TRX_rx_rf09_ch00_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0(15 downto 0),
      TRX_rx_rf09_ch01_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch02_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch03_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch04_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch05_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch06_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch07_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1(4 downto 0),
      TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_FFT_unit_TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0),
      aresetn_CD100_in => s_axi_aresetn_0,
      decoder_rx09_squelch_lvl(15 downto 0) => TRX_rx_rf09_Decoder_squelch_lvl_0(15 downto 0),
      fft09_config_tdata_in(7 downto 0) => TRX_rx_rf09_FFT_config_tdata_0(7 downto 0),
      fft09_config_tvalid_in => TRX_rx_rf09_FFT_config_tvalid_0,
      fft09_data_tlast_in => TRX_rx_rf09_FFT_data_tlast_0,
      fft09_data_tready_out => TRX_rx_rf09_FFT_data_tready_0,
      fft09_data_tvalid_in => TRX_rx_rf09_FFT_data_tvalid_0,
      post_fft_mem_a_rx09_EoT => TRX_rx_rf09_post_fft_mem_a_EoT_0,
      post_fft_rx09_mem_a_addr_out(41 downto 0) => TRX_rx_rf09_post_fft_mem_a_addr_0(41 downto 0),
      premem_rx09_addra_in(10 downto 0) => TRX_rx_rf09_premem_addra_0(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => TRX_rx_rf09_premem_rx09_dina_0(25 downto 0),
      premem_rx09_wea_in(0) => TRX_rx_rf09_premem_rx09_wea_in_0,
      rst_mig_7series_0_100M_peripheral_reset_in => TRX_reset_CD100_0,
      s_axi_aclk_CD100_in => s_axi_aclk_0,
      xfft_rx09_dly3449_event_data_in_channel_halt_out => TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_out,
      xfft_rx09_dly3449_event_frame_started_out => TRX_rx_rf09_FFT_dly3449_event_frame_started_out,
      xfft_rx09_dly3449_event_tlast_missing_out => TRX_rx_rf09_FFT_dly3449_event_tlast_missing_out,
      xfft_rx09_dly3449_event_tlast_unexpected_out => TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_out
    );
TRX_tx_DDS_unit: entity work.TRX_tx_DDS_unit_imp_1L2CWOY
     port map (
      SCLR => TRX_16MHz_peripheral_reset_0(0),
      TRX_TX_DDSAMPL_GPIO1_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO1_o_1(15 downto 0),
      TRX_TX_DDSAMPL_GPIO2_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO2_o_1(15 downto 0),
      TRX_TX_DDS_GPIO1_i(31 downto 0) => TRX_tx_DDS_unit_TRX_TX_DDS_GPIO1_i(31 downto 0),
      TRX_TX_DDS_GPIO1_o(31 downto 0) => TRX_TX_DDS_GPIO1_o_1(31 downto 0),
      TRX_TX_DDS_GPIO2_o(31 downto 0) => TRX_TX_DDS_GPIO2_o_1(31 downto 0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_tx_rf09_PULLDATA_FIFO_empty_0,
      TRX_rx_clkdiv_16MHz_i => TRX_rx_rf09_clkdiv_16MHz_0(0),
      TRX_tx_4to1_c_counter_binary_0_THRESH0 => TRX_tx_rf09_DDS_LVDS_4to1_c_counter_binary_0_THRESH0_0,
      TRX_tx_DDS0_gpio_ampt(15 downto 0) => TRX_tx_rf09_DDS0_gpio_ampt_0(15 downto 0),
      TRX_tx_DDS1_gpio_ampt(15 downto 0) => TRX_tx_rf09_DDS1_gpio_ampt_0(15 downto 0),
      TRX_tx_data_count(11 downto 0) => TRX_tx_rf09_DDS_data_count_0(11 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_rf09_DDS_im_0(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_rf09_DDS_re_0(20 downto 8),
      aresetn => TRX_peripheral_aresetn_0(0),
      encoder_pull_FIFO_dump(0) => TRX_tx_rf09_Encoder_pull_FIFO_dump_0(0),
      encoder_pull_data_len(6 downto 0) => TRX_tx_rf09_Encoder_pull_data_len_0(6 downto 0),
      encoder_pull_do_start(0) => TRX_tx_rf09_Encoder_pull_do_start_0(0),
      pulldata_dds_inc(25 downto 0) => TRX_tx_rf09_PULLDATA_dds_inc_0(25 downto 0),
      pulldata_tx09_byteData(7 downto 0) => TRX_tx_rf09_PULLDATA_byteData_0(7 downto 0),
      pulldata_tx09_en => TRX_tx_rf09_PULLDATA_en_0,
      s_axi_aclk => s_axi_aclk_0,
      s_axi_aresetn => s_axi_aresetn_0,
      ui_clk_sync_rst => TRX_reset_CD100_0
    );
end STRUCTURE;
