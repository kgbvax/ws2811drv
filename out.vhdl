-- out.vhdl created on 11:2  2018.0.3

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;               -- Needed for shifts

entity ws2811_drv is 
port (
    clk      	: in  std_logic;
    i_shifter   : in  unsigned (7 downto 0);
    o_dout		: out std_logic;
);
end ws2811_drv;

architecture rtl of ws2811_drv is
    signal highbit : std_logic := '0';
begin
process (clk) begin
    if rising_edge(clk) then
        highbit <= i_shifter(7); 
        i_shifter <= shift_left(unsigned(i_shifter),1);
    end if;	
end process;

o_dout <= highbit;
end rtl;

