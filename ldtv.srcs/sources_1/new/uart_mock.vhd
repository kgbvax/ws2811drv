----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2018 03:46:37 PM
-- Design Name: 
-- Module Name: uart_mock - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_mock is
    Port ( o_RX_DV : out STD_LOGIC;
           o_RX_Byte : out STD_LOGIC_VECTOR (7 downto 0);
           i_clk :  in std_logic;
           i_fifo_full: in std_logic);
end uart_mock;

architecture Behavioral of uart_mock is

    signal wr_enable: std_logic :='0';
    
begin

process(i_clk) begin
  if rising_edge(i_clk) then
    o_RX_Byte <= B"01010101";
    if i_fifo_full = '0' then
      o_RX_DV <= '1';
      wr_enable <= '1';
    end if;
  end if;  
end process;

process(i_clk) begin
  if rising_edge(i_clk) AND wr_enable='1' then
    o_RX_DV <='0';
    wr_enable<='0';
  end if;
end process;

end Behavioral;
