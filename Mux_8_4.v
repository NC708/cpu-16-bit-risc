`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:54 12/05/2021 
// Design Name: 
// Module Name:    Mux_12_6 
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
module Mux_8_4(
	input sel,
	input[3:0] D_in0, D_in1,
	output reg[3:0] D_out
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
