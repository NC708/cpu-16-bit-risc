`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:47 12/01/2021 
// Design Name: 
// Module Name:    Datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Datapath(
	input clk, MD, RW, reset, ASEL,
	input[1:0] MB,
	input[3:0] FS, SA, DR, BA,
	input[5:0] PC,
	input[15:0] imdt, RAM_data_out,
	output V, C, N, Z,
	output[15:0] A_out, B_out
	);

	wire[3:0] AA_wire;
	wire[15:0] bus_A, bus_B, F_out, Mux_D_Mux_B_wire, File_D_in_wire, PC_zeroed;
	
	assign A_out = bus_A;
	assign B_out = bus_B;
	assign PC_zeroed[15:6] = 10'b0;
	assign PC_zeroed[5:0] = PC;
	
	ALU ALU0 (.A (bus_A), .B (bus_B), .sel (FS), .V (V), .C (C), .N (N), .Z (Z), .res (F_out));
	Reg_File Reg_File0 (.clk (clk), .reset (reset), .RW (RW), .AA (AA_wire), .BA (BA), .DA (DR), .D (File_D_in_wire), .A (bus_A), .B (bus_B));
	Mux_8_4 Mux_A (.sel (ASEL), .D_in0 (SA), .D_in1 (DR), .D_out (AA_wire));
	Mux_32_16 Mux_D (.sel (MD), .D_in0 (F_out), .D_in1 (RAM_data_out), .D_out (Mux_D_Mux_B_wire));
	Mux_48_16 Mux_B (.sel (MB), .D_in0 (Mux_D_Mux_B_wire), .D_in1 (imdt), .D_in2 (PC_zeroed), .D_out (File_D_in_wire));
	
endmodule
