`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:16 12/05/2021 
// Design Name: 
// Module Name:    Mux_48_16 
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
module Mux_48_16(
	input[1:0] sel,
	input[15:0] D_in0, D_in1, D_in2,
	output reg[15:0] D_out
	);

	always @ (sel, D_in0, D_in1, D_in2) begin
		case(sel)
			2'b00:
				D_out <= D_in0;			
			2'b01:
				D_out <= D_in1;			
			2'b10:
				D_out <= D_in2;
			default:
				D_out <= D_in0;
		endcase		
	end

endmodule
