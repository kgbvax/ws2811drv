// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Jan  4 14:35:54 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/io/ws2811drv/ldtv.sim/sim_1/synth/timing/xsim/ws2811_sim_time_synth.v
// Design      : ws2811_drv
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ws2811_drv
   (i_clk,
    o_dout);
  input i_clk;
  output o_dout;

  wire clear;
  wire \clock_count[0]_i_3_n_0 ;
  wire \clock_count[0]_i_4_n_0 ;
  wire \clock_count[0]_i_5_n_0 ;
  wire [13:2]clock_count_reg;
  wire \clock_count_reg[0]_i_2_n_0 ;
  wire \clock_count_reg[0]_i_2_n_1 ;
  wire \clock_count_reg[0]_i_2_n_2 ;
  wire \clock_count_reg[0]_i_2_n_3 ;
  wire \clock_count_reg[0]_i_2_n_4 ;
  wire \clock_count_reg[0]_i_2_n_5 ;
  wire \clock_count_reg[0]_i_2_n_6 ;
  wire \clock_count_reg[0]_i_2_n_7 ;
  wire \clock_count_reg[12]_i_1_n_3 ;
  wire \clock_count_reg[12]_i_1_n_6 ;
  wire \clock_count_reg[12]_i_1_n_7 ;
  wire \clock_count_reg[4]_i_1_n_0 ;
  wire \clock_count_reg[4]_i_1_n_1 ;
  wire \clock_count_reg[4]_i_1_n_2 ;
  wire \clock_count_reg[4]_i_1_n_3 ;
  wire \clock_count_reg[4]_i_1_n_4 ;
  wire \clock_count_reg[4]_i_1_n_5 ;
  wire \clock_count_reg[4]_i_1_n_6 ;
  wire \clock_count_reg[4]_i_1_n_7 ;
  wire \clock_count_reg[8]_i_1_n_0 ;
  wire \clock_count_reg[8]_i_1_n_1 ;
  wire \clock_count_reg[8]_i_1_n_2 ;
  wire \clock_count_reg[8]_i_1_n_3 ;
  wire \clock_count_reg[8]_i_1_n_4 ;
  wire \clock_count_reg[8]_i_1_n_5 ;
  wire \clock_count_reg[8]_i_1_n_6 ;
  wire \clock_count_reg[8]_i_1_n_7 ;
  wire \clock_count_reg_n_0_[0] ;
  wire \clock_count_reg_n_0_[1] ;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire \i_shifter_reg[7]_srl8_n_0 ;
  wire next_ws2811bit;
  wire next_ws2811bit_i_1_n_0;
  wire next_ws2811bit_i_2_n_0;
  wire o_dout;
  wire o_dout_OBUF;
  wire [3:1]\NLW_clock_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_clock_count_reg[12]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("ws2811_sim_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'hFFFAFFFAFFFAFFF8)) 
    \clock_count[0]_i_1 
       (.I0(\clock_count[0]_i_3_n_0 ),
        .I1(\clock_count[0]_i_4_n_0 ),
        .I2(clock_count_reg[13]),
        .I3(clock_count_reg[12]),
        .I4(clock_count_reg[10]),
        .I5(clock_count_reg[9]),
        .O(clear));
  LUT6 #(
    .INIT(64'hFEEEEEEE00000000)) 
    \clock_count[0]_i_3 
       (.I0(clock_count_reg[10]),
        .I1(clock_count_reg[9]),
        .I2(clock_count_reg[8]),
        .I3(clock_count_reg[7]),
        .I4(clock_count_reg[6]),
        .I5(clock_count_reg[11]),
        .O(\clock_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clock_count[0]_i_4 
       (.I0(clock_count_reg[3]),
        .I1(clock_count_reg[2]),
        .I2(clock_count_reg[5]),
        .I3(clock_count_reg[4]),
        .O(\clock_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_count[0]_i_5 
       (.I0(\clock_count_reg_n_0_[0] ),
        .O(\clock_count[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[0]_i_2_n_7 ),
        .Q(\clock_count_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \clock_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clock_count_reg[0]_i_2_n_0 ,\clock_count_reg[0]_i_2_n_1 ,\clock_count_reg[0]_i_2_n_2 ,\clock_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clock_count_reg[0]_i_2_n_4 ,\clock_count_reg[0]_i_2_n_5 ,\clock_count_reg[0]_i_2_n_6 ,\clock_count_reg[0]_i_2_n_7 }),
        .S({clock_count_reg[3:2],\clock_count_reg_n_0_[1] ,\clock_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[8]_i_1_n_5 ),
        .Q(clock_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[8]_i_1_n_4 ),
        .Q(clock_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[12]_i_1_n_7 ),
        .Q(clock_count_reg[12]),
        .R(clear));
  CARRY4 \clock_count_reg[12]_i_1 
       (.CI(\clock_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_clock_count_reg[12]_i_1_CO_UNCONNECTED [3:1],\clock_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clock_count_reg[12]_i_1_O_UNCONNECTED [3:2],\clock_count_reg[12]_i_1_n_6 ,\clock_count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,clock_count_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[12]_i_1_n_6 ),
        .Q(clock_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[0]_i_2_n_6 ),
        .Q(\clock_count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[0]_i_2_n_5 ),
        .Q(clock_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[0]_i_2_n_4 ),
        .Q(clock_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[4]_i_1_n_7 ),
        .Q(clock_count_reg[4]),
        .R(clear));
  CARRY4 \clock_count_reg[4]_i_1 
       (.CI(\clock_count_reg[0]_i_2_n_0 ),
        .CO({\clock_count_reg[4]_i_1_n_0 ,\clock_count_reg[4]_i_1_n_1 ,\clock_count_reg[4]_i_1_n_2 ,\clock_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_count_reg[4]_i_1_n_4 ,\clock_count_reg[4]_i_1_n_5 ,\clock_count_reg[4]_i_1_n_6 ,\clock_count_reg[4]_i_1_n_7 }),
        .S(clock_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[4]_i_1_n_6 ),
        .Q(clock_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[4]_i_1_n_5 ),
        .Q(clock_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[4]_i_1_n_4 ),
        .Q(clock_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[8]_i_1_n_7 ),
        .Q(clock_count_reg[8]),
        .R(clear));
  CARRY4 \clock_count_reg[8]_i_1 
       (.CI(\clock_count_reg[4]_i_1_n_0 ),
        .CO({\clock_count_reg[8]_i_1_n_0 ,\clock_count_reg[8]_i_1_n_1 ,\clock_count_reg[8]_i_1_n_2 ,\clock_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_count_reg[8]_i_1_n_4 ,\clock_count_reg[8]_i_1_n_5 ,\clock_count_reg[8]_i_1_n_6 ,\clock_count_reg[8]_i_1_n_7 }),
        .S(clock_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_count_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clock_count_reg[8]_i_1_n_6 ),
        .Q(clock_count_reg[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    dout_reg
       (.C(next_ws2811bit),
        .CE(1'b1),
        .D(\i_shifter_reg[7]_srl8_n_0 ),
        .Q(o_dout_OBUF),
        .R(1'b0));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  (* srl_bus_name = "\i_shifter_reg " *) 
  (* srl_name = "\i_shifter_reg[7]_srl8 " *) 
  SRL16E #(
    .INIT(16'h00AD)) 
    \i_shifter_reg[7]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(next_ws2811bit),
        .D(1'b0),
        .Q(\i_shifter_reg[7]_srl8_n_0 ));
  LUT6 #(
    .INIT(64'h00010F0FFFFEF0F0)) 
    next_ws2811bit_i_1
       (.I0(clock_count_reg[9]),
        .I1(clock_count_reg[10]),
        .I2(next_ws2811bit_i_2_n_0),
        .I3(\clock_count[0]_i_4_n_0 ),
        .I4(\clock_count[0]_i_3_n_0 ),
        .I5(next_ws2811bit),
        .O(next_ws2811bit_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    next_ws2811bit_i_2
       (.I0(clock_count_reg[13]),
        .I1(clock_count_reg[12]),
        .O(next_ws2811bit_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    next_ws2811bit_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_ws2811bit_i_1_n_0),
        .Q(next_ws2811bit),
        .R(1'b0));
  OBUF o_dout_OBUF_inst
       (.I(o_dout_OBUF),
        .O(o_dout));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
