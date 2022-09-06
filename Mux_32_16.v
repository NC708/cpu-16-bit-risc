`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:25 12/05/2021 
// Design Name: 
// Module Name:    Mux_32_16 
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
module Mux_32_16(
	input sel,
	input[15:0] D_in0, D_in1,
	output reg[15:0] D_out
	);

	always @ (sel, D_in0, D_in1) begin
		case(sel)
			1'b0:
				D_out <= D_in0;			
			1'b1:
				D_out <= D_in1;			
			default:
				D_out <= D_in0;
		endcase		
	end
	
endmodule
