`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:08 11/24/2021 
// Design Name: 
// Module Name:    ALU 
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

module ALU(
	input[15:0] A, B,
	input[3:0] sel,
	output reg V, C, N, Z,
	output reg[15:0] res
   );

	always @(*) begin
		C = 0;
		V = 0;
		case(sel)
			4'b0000: begin
				res = A + B;
				if (~(A[15] ^ B[15]) & (res[15] ^ A[15]))
					C = 1;
				else
					C = 0;
			end
			4'b0001: begin
				res = A - B;
				if (~(A[15] ^ B[15]) & (res[15] ^ A[15])) // this is def wrong
					V = 1; // wrong wrong wrong
				else
					V = 0;
			end
			4'b0010:
				res = A & B;
			4'b0011:
				res = A | B;
			4'b0100:
				res = A ^ B;
			4'b0101:
				res = ~A;
			4'b0110:
				res = A << 1;
			4'b0111:
				res = A >> 1;
			default:
				res = A;
		endcase

		if (res == 0)
			Z = 1;
		else
			Z = 0;
		if (res[15] == 1)
			N = 1;
		else
			N = 0;
	end

endmodule
