----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2018 04:48:34 PM
-- Design Name: 
-- Module Name: ws2811_sim - Behavioral
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

entity ws2811_sim is
end ws2811_sim;

architecture behave of ws2811_sim is

    constant c_CLOCK_PERIOD : time := 50 ns; 
    signal r_CLOCK          : std_logic := '0';
    signal w_DOUT           : std_logic;
  
  component ws2811_drv is 
    port (
        i_clk          : in  std_logic;
        o_dout         : out std_logic);
    end component ws2811_drv;


begin   
    UUT: ws2811_drv
    port map (
        i_clk => r_CLOCK,
        o_dout => w_DOUT
    );

    p_CLK_GEN : process is
    begin
      wait for c_CLOCK_PERIOD/2;
      r_CLOCK <= not r_CLOCK;
    end process p_CLK_GEN; 
  
    process  -- main
    begin
     wait for 0.5 sec;
    end process;

end behave;
  