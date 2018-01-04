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
  --  i_load      : in  std_logic;
    o_dout		: out std_logic);
end ws2811_drv;


architecture rtl of ws2811_drv is
    

     signal i_shifter   : unsigned (7 downto 0) := "10101101";
     signal dout        : std_logic;
      
     constant c_CLOCK_PERIOD_NS : integer :=  100; -- 100ns period clock -> 10Mhz

     constant c_T0H : integer  := 500;
     constant c_T0L : integer := 2000;
     constant c_T1H : integer := 1200;
     constant c_T1L : integer := 1300;
     constant c_BIT : integer := 2500;
     constant c_RESET : integer := 50*100;
      
     constant c_T0H_TICKS : integer := c_T0H / c_CLOCK_PERIOD_NS;
     constant c_T1H_TICKS : integer := c_T1H / c_CLOCK_PERIOD_NS;
     constant c_BIT_TICKS : integer := c_BIT / c_CLOCK_PERIOD_NS;
          
     signal tx_ticks : integer range 0 to c_BIT_TICKS := 0;


begin 
    process (i_clk) begin -- clock counter
        if rising_edge(i_clk) then
            if (tx_ticks >= c_BIT_TICKS) then 
              tx_ticks <= 0; 
              dout <= i_shifter(7); --next bit 
              i_shifter <= shift_left( unsigned( i_shifter),1); --shift left
            else 
              tx_ticks <= tx_ticks + 1;
            end if;
        end if;	
    end process;
   
    process (i_clk) begin
       
            case dout is
              when '0' =>
                if (tx_ticks < c_T0H_TICKS) then  
                    o_dout <= '1' ;
                else
                    o_dout <= '0';
                end if;
              when '1' =>
                if (tx_ticks < c_T1H_TICKS) then
                     o_dout <= '1';
                else
                     o_dout <= '0';
                end if;
              when others =>
                o_dout <= 'X';
            end case;
      
    end process;
    
   
 end rtl;

