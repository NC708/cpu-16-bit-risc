`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:50 12/01/2021
// Design Name:   PC
// Module Name:   C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC/PC_TEST.v
// Project Name:  CPU_16_Bit_RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TEST;

	reg Clk;
	reg [1:0] PS;
	reg [15:0] Bus_A;
	reg [5:0] Extend;

	wire [5:0] Out;

	PC uut (
		.Clk(Clk), 
		.PS(PS), 
		.Bus_A(Bus_A), 
		.Extend(Extend), 
		.Out(Out)
	);

	initial begin
		Clk = 0;
		PS = 0;
		Bus_A = 0;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 0;
		Bus_A = 16'b1101001011;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 2'b01;
		Bus_A = 16'b1101001011;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 2'b01;
		Bus_A = 16'b1101001011;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 2'b11;
		Bus_A = 16'b1101001011;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 2'b11;
		Bus_A = 16'b1101001011;
		Extend = 0;
		#100;
		
		Clk = ~Clk;
		PS = 2'b10;
		Bus_A = 16'b1101001011;
		Extend = 6'b111101;
		#100;
		
		Clk = ~Clk;
		PS = 2'b10;
		Bus_A = 16'b1101001011;
		Extend = 6'b111101;
		#100;
		
		Clk = ~Clk;
		PS = 2'b01;
		Bus_A = 16'b1101001011;
		Extend = 6'b111101;
		#100;
		
	end
	
endmodule

