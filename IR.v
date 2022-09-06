`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:57 12/04/2021 
// Design Name: 
// Module Name:    IR 
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
module IR(
	input[15:0] instr, 
	output[7:0] sub_instr,
	output[3:0] DR,
	output[3:0] SA,
	output[3:0] SB
   );
	 
	assign sub_instr = instr[15:8];
	assign DR = instr[11:8];
	assign SA = instr[7:4];
	assign SB = instr[3:0];

endmodule
