create_clock -period 100.000 -name i_clk -waveform {0.000 50.000} [get_ports i_clk]
set_output_delay -clock [get_clocks i_clk] -min -add_delay -5.000 [get_ports o_dout]
set_output_delay -clock [get_clocks i_clk] -max -add_delay 10.000 [get_ports o_dout]
