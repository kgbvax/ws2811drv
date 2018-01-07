----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2018 12:51:51 PM
-- Design Name: 
-- Module Name: bitreg - Behavioral
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

entity bitreg is
    port ( i_clk : in std_logic;
           bval : out STD_LOGIC;
           data  : in STD_LOGIC_VECTOR (7 downto 0);
           data_rd_en: out std_logic;
           i_next: in std_logic);
end bitreg;

architecture Behavioral of bitreg is

  signal reg_buffer,reg : std_logic_vector(7 downto 0);
  signal bitadr : integer range 0 to 7:= 0;
   
begin

process(i_next) begin
  if (rising_edge(i_next)) then
      data_rd_en <= '1';
      if (bitadr = 7) then 
         bitadr <= 0;
      else
         bitadr <= bitadr +1;
      end if;
  end if;
end process;

bval <= reg_buffer(bitadr);


end Behavioral;
