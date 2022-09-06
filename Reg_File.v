`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:02 12/05/2021 
// Design Name: 
// Module Name:    Reg_File 
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
module Reg_File( 
    input clk, reset,
    input RW,
    input [3:0] AA, BA, DA,
	 input [15:0] D,
    output [15:0] A,
    output [15:0] B
    );
	
	integer i;
	reg[15:0] file[15:0];

	always @ (posedge clk) begin
	   if (reset) begin
        for (i = 0; i < 16; i = i + 1)
            file[i] <= 0;
		end
		else begin
			if (RW)
				file[DA] <= D;
			else
				file[DA] <= file[DA];
		end
	end
	
	assign A = file[AA];
	assign B = file[BA];
	
endmodule
