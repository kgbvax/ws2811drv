--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
--Date        : Fri Jan  5 16:54:38 2018
--Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LED1 : out STD_LOGIC;
    o_dout : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    o_dout : out STD_LOGIC;
    reset : in STD_LOGIC;
    LED1 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED1 => LED1,
      o_dout => o_dout,
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
