`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:57 12/01/2021 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
	input clk, V, C, N , Z, reset,
	input[15:0] bus_A, ROM_data,
	output MD, RW, MW, ROM_enable, ASEL, enable_ram_read,
	output[1:0] MB,
	output[3:0] FS, DR, SA, SB,
	output[5:0] PC,
	output[15:0] imdt
   );

	wire[1:0] PS_wire;
	wire[7:0] sub_instr_wire;
	wire[3:0] SA_wire, SB_wire;
	wire[5:0] SA_SB_wire;
	wire state_reg_wire_in;
	wire state_reg_wire_out;
	
	assign SA_SB_wire[3:0] = SB_wire;
	assign SA_SB_wire[5:4] = SA_wire[1:0];
	assign imdt[15:8] = 8'b0;
	assign imdt[7:4] = SA_wire;
	assign imdt[3:0] = SB_wire;
	assign SA = SA_wire;
	assign SB = SB_wire;
	
	PC PC0(.clk (clk), .reset (), .PS (PS_wire), .bus_A (bus_A), .extend (SA_SB_wire), .out (PC));
	IR IR0(.instr (ROM_data), .sub_instr (sub_instr_wire), .DR (DR), .SA (SA_wire), .SB (SB_wire));
	Control_Logic Control_Logic0(.state (state_reg_wire_out), .instr (sub_instr_wire), .V (V), .C (C),
	.N (N), .Z (Z), .NS (state_reg_wire_in), .MW (MW), .RW (RW), .MD (MD), .PS (PS_wire), .MB (MB),
	.FS (FS), .ROM_enable (ROM_enable), .ASEL (ASEL), .enable_ram_read (enable_ram_read));

	reg state_reg;
	assign state_reg_wire_out = state_reg;
	
	always @ (posedge clk) begin
		state_reg <= state_reg_wire_in;
	end
	
endmodule
