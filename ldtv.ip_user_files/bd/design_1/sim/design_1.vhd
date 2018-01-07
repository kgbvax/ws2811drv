--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
--Date        : Fri Jan  5 16:54:38 2018
--Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    LED1 : out STD_LOGIC;
    o_dout : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=4,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_fifo_generator_0_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    underflow : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_1;
  component design_1_bitreg_0_2 is
  port (
    i_clk : in STD_LOGIC;
    bval : out STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_rd_en : out STD_LOGIC;
    i_next : in STD_LOGIC
  );
  end component design_1_bitreg_0_2;
  component design_1_ws2811_drv_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_ser_d8a : in STD_LOGIC;
    o_ser_next : out STD_LOGIC;
    o_dout : out STD_LOGIC
  );
  end component design_1_ws2811_drv_0_0;
  component design_1_uart_mock_0_0 is
  port (
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC
  );
  end component design_1_uart_mock_0_0;
  signal bitreg_0_bval : STD_LOGIC;
  signal bitreg_0_data_rd_en : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_full : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal uart_mock_0_o_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_mock_0_o_RX_DV : STD_LOGIC;
  signal ws2811_drv_0_o_dout : STD_LOGIC;
  signal ws2811_drv_0_o_ser_re : STD_LOGIC;
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_underflow_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of LED1 : signal is "xilinx.com:signal:data:1.0 DATA.LED1 DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of LED1 : signal is "XIL_INTERFACENAME DATA.LED1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of o_dout : signal is "xilinx.com:signal:data:1.0 DATA.O_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of o_dout : signal is "XIL_INTERFACENAME DATA.O_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 12000000, PHASE 0.000";
begin
  LED1 <= ws2811_drv_0_o_dout;
  o_dout <= ws2811_drv_0_o_dout;
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
bitreg_0: component design_1_bitreg_0_2
     port map (
      bval => bitreg_0_bval,
      data(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      data_rd_en => bitreg_0_data_rd_en,
      i_clk => clk_wiz_clk_out1,
      i_next => ws2811_drv_0_o_ser_re
    );
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => reset_1
    );
fifo_generator_0: component design_1_fifo_generator_0_1
     port map (
      clk => clk_wiz_clk_out1,
      din(7 downto 0) => uart_mock_0_o_RX_Byte(7 downto 0),
      dout(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      empty => NLW_fifo_generator_0_empty_UNCONNECTED,
      full => fifo_generator_0_full,
      rd_en => bitreg_0_data_rd_en,
      srst => '0',
      underflow => NLW_fifo_generator_0_underflow_UNCONNECTED,
      wr_en => uart_mock_0_o_RX_DV
    );
uart_mock_0: component design_1_uart_mock_0_0
     port map (
      i_clk => clk_wiz_clk_out1,
      i_fifo_full => fifo_generator_0_full,
      o_RX_Byte(7 downto 0) => uart_mock_0_o_RX_Byte(7 downto 0),
      o_RX_DV => uart_mock_0_o_RX_DV
    );
ws2811_drv_0: component design_1_ws2811_drv_0_0
     port map (
      i_clk => clk_wiz_clk_out1,
      i_ser_d8a => bitreg_0_bval,
      o_dout => ws2811_drv_0_o_dout,
      o_ser_next => ws2811_drv_0_o_ser_re
    );
end STRUCTURE;
