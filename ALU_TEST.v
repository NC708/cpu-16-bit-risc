`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:58 11/26/2021
// Design Name:   ALU
// Module Name:   C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC/ALU_TEST.v
// Project Name:  CPU_16_Bit_RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [3:0] Sel;

	// Outputs
	wire V;
	wire C;
	wire N;
	wire Z;
	wire [15:0] Res;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.V(V), 
		.C(C), 
		.N(N), 
		.Z(Z), 
		.Res(Res)
	);

initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Sel = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 12;
		B = 5;
		Sel = 0;
		#100;
		
		A = 0;
		B = 2;
		Sel = 1;
		#100;
		
		A = 1;
		B = 5;
		Sel = 2;
		#100;
		
		A = 6;
		B = 7;
		Sel = 3;
		#100;
		
		A = 10;
		B = 1;
		Sel = 4;
		#100;
		
		A = 14;
		B = 7;
		Sel = 5;
		#100;
end

endmodule

