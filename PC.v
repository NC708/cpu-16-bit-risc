`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:59 11/25/2021 
// Design Name: 
// Module Name:    PC 
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

module PC(
	input clk, reset,
	input[1:0] PS,
	input[15:0] bus_A,
	input[5:0] extend,
	output reg[5:0] out
	);
	
	initial
		out = 6'b0;

	always @ (posedge clk) begin
		if (reset)
			out = 6'b0;
		else begin
			case(PS)
				2'b00:
					out = out;
				2'b01:
					out = out + 1'b1;
				2'b10:
					out = out + extend;
				2'b11:
					out = bus_A[5:0];
				default:
					out = out;
			endcase
		end
	end
endmodule
