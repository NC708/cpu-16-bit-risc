////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.45
//  \   \         Application: netgen
//  /   /         Filename: tenths.v
// /___/   /\     Timestamp: Fri Jan 29 14:52:04 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog .\tmp\_cg\tenths.ngc .\tmp\_cg\tenths.v 
// Device	: 3s100evq100-4
// Input file	: ./tmp/_cg/tenths.ngc
// Output file	: ./tmp/_cg/tenths.v
// # of Modules	: 1
// Design Name	: tenths
// Xilinx        : C:\Xilinx\12.1_ISE_DS\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module tenths (
  sclr, ce, clk, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input ce;
  input clk;
  output [3 : 0] q;
  
  // synthesis translate_off
  
  wire \BU2/N01 ;
  wire \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q<4> ;
  wire \BU2/thresh0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire [3 : 0] NlwRenamedSig_OI_q;
  wire [1 : 1] \BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output ;
  wire [0 : 0] \BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/a_con_tiers<1> ;
  wire [4 : 4] \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_cy ;
  wire [4 : 2] \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg ;
  wire [1 : 1] \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_lut ;
  assign
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_xor<2>11  (
    .I0(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .I1(NlwRenamedSig_OI_q[1]),
    .I2(NlwRenamedSig_OI_q[0]),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [2])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_xor<3>11  (
    .I0(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .I1(NlwRenamedSig_OI_q[2]),
    .I2(NlwRenamedSig_OI_q[1]),
    .I3(NlwRenamedSig_OI_q[0]),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [3])
  );
  LUT4 #(
    .INIT ( 16'h7F77 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_xor<4>111  (
    .I0(NlwRenamedSig_OI_q[2]),
    .I1(NlwRenamedSig_OI_q[1]),
    .I2(NlwRenamedSig_OI_q[0]),
    .I3(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .O(\BU2/N01 )
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_xor<4>11  (
    .I0(NlwRenamedSig_OI_q[3]),
    .I1(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .I2(\BU2/N01 ),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_cy<4>11  (
    .I0(NlwRenamedSig_OI_q[3]),
    .I1(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .I2(\BU2/N01 ),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_lut<1>1  (
    .I0(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1]),
    .I1(NlwRenamedSig_OI_q[0]),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/tier_gen[1].i_tier/loop_tiles[0].i_tile/o1  (
    .I0(NlwRenamedSig_OI_q[0]),
    .I1(NlwRenamedSig_OI_q[2]),
    .I2(NlwRenamedSig_OI_q[1]),
    .I3(NlwRenamedSig_OI_q[3]),
    .O(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/a_con_tiers<1> [0])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/a_con_tiers<1> [0]),
    .S(sclr),
    .Q(\BU2/U0/i_baseip.i_xbip_counter/i_terminal_detect.i_gate/opt_final_reg.i_final_reg/fd/output [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_cy [4]),
    .R(sclr),
    .Q(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q<4> )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [4]),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [3]),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/sum_seg [2]),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/i_seg[1].i_sum_reg/first_q_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_baseip.i_xbip_counter/i_fabric.i_fab/Madd_sum_seg_lut [1]),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[0])
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/thresh0 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

// synthesis translate_on
