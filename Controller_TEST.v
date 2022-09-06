`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:46:51 12/04/2021
// Design Name:   Controller
// Module Name:   C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC/Controller_TEST.v
// Project Name:  CPU_16_Bit_RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Controller_TEST;

	// Inputs
	reg clk;
	reg V;
	reg C;
	reg N;
	reg Z;
	reg [15:0] bus_A;
	reg [15:0] ROM_data;

	// Outputs
	wire MD;
	wire RW;
	wire MW;
	wire [1:0] MB;
	wire [3:0] FS;
	wire [3:0] DR;
	wire [3:0] SA;
	wire [3:0] SB;
	wire [5:0] PC;
	wire [15:0] imdt;

	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.clk(clk), 
		.V(V), 
		.C(C), 
		.N(N), 
		.Z(Z), 
		.bus_A(bus_A), 
		.ROM_data(ROM_data), 
		.MD(MD), 
		.RW(RW), 
		.MW(MW), 
		.MB(MB), 
		.FS(FS), 
		.DR(DR), 
		.SA(SA), 
		.SB(SB), 
		.PC(PC), 
		.imdt(imdt)
	);

	initial begin
		clk = 1;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1000001100001101;
		#100;

		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1000001100001101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b0010001100001101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b0010001100001101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b0001001100001101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b0001001100001101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1110001100000101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1110001100000101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1100001100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1100001100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1100001100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1100001100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1111111100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0011;
		ROM_data = 16'b1111111100111101;
		#100;
		
		clk = ~clk;
		V = 0;
		C = 0;
		N = 0;
		Z = 0;
		bus_A = 16'b0;
		ROM_data = 16'b0;
		#100;
	end
endmodule

