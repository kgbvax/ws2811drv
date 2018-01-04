-- out.vhdl created on 11:2  2018.0.3

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;




--WS2811 NRZ Coding
--T0H : 0,5uS
--T0L : 2,0uS
--T1H : 1,2uS
--T1L : 1.3uS
--RESET: >50uS



entity ws2811_drv is 
port (
    i_clk      	: in  std_logic;
    i_load      : in  std_logic;
    o_dout		: out std_logic);
end ws2811_drv;

architecture rtl of ws2811_drv is
     signal i_shifter   : unsigned (7 downto 0) := "10101101";
     signal dout        : std_logic;
     signal clock_count : integer range 0 to 12000 := 0;
     signal next_ws2811bit : std_logic;
     
     constant c_T0H : integer range 0 to 12000 := 500;
     constant c_T0L : integer range 0 to 12000 := 2000;
     constant c_T1H : integer range 0 to 12000 := 1200;
     constant c_T1L : integer range 0 to 12000 := 1300;
     constant c_RESET : integer range 0 to 12000 := 50*100;
     constant c_CLOCK_PERIOD_NS : integer range 0 to 12000 :=  100; -- 100ns period clock -> 10Mhz

begin 
    process (i_clk) begin
        if rising_edge(i_clk) then
            clock_count <= clock_count + 1;
        end if;	
    end process;
    
    process (next_ws2811bit) begin
       if (rising_edge(next_ws2811bit)) then
             dout <= i_shifter(7); 
             clock_count <= 0;
             i_shifter <= shift_left( unsigned(i_shifter),1);
       end if;
    end process;
    
    --when (dout is '1') then
      --  if (clock_count * c_CLOCK_PERIOD_NS > 
    -- end 
    -- if (dout=='0') then
    --end
 end rtl;

