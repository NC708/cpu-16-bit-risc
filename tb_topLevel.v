`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:35:12 12/06/2021
// Design Name:   top_level
// Module Name:   C:/Users/Michael/Documents/ECE414_group2_lab1/CPU_16_Bit_RISC/tb_topLevel.v
// Project Name:  CPU_16_Bit_RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_level
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_topLevel;

	// Inputs
	reg reset;
	reg btn_press;
	reg clk;

	// Outputs
	wire UART_TX;

	// Instantiate the Unit Under Test (UUT)
	top_level uut (
		.reset(reset), 
		.btn_press(btn_press), 
		.clk(clk), 
		.UART_TX(UART_TX)
	);

	
	initial begin
	
		reset = 0;
		btn_press = 0;
		clk = ~clk;
		#100;
		
			
		reset = 1;
		btn_press = 1;
		clk = 1;
		#100;
		
			
		reset = 1;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
		
		reset = 0;
		btn_press = 1;
		clk = ~clk;
		#100;
	end
      
endmodule

