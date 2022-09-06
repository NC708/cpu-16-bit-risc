`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:20 11/25/2021 
// Design Name: 
// Module Name:    CPU_16_Bit_RISC 
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
module CPU_16_Bit_RISC(
    input clk, reset, //done assigning
	 input[15:0] data_from_rom, //done assigning
	 output enable_to_rom, write_enable_to_ram, read_enable_to_ram, enable_ram_read, //
	 output[5:0] address_to_rom, address_to_ram,
	 output[15:0] data_ram_out,
	 input[15:0] data_ram_in,
	 input btn_press	
	 );

	wire V, C, N, Z , MD, RW, MW, ASEL;
	wire[1:0] MB;
	wire[3:0] FS, DR, SA, SB;
	wire[5:0] PC_out;
	wire[15:0] bus_A, ROM_data, imdt;

	Controller Controller0(.clk (clk), .V (V), .C (C), .N (N), .Z (Z), .bus_A (bus_A), 
	.ROM_data (data_from_rom), .MD (MD), .RW (RW), .MW (MW), .MB (MB), .FS (FS), .DR (DR), .SA (SA),
	.SB (SB), .reset (reset), .PC (PC_out), .imdt (imdt), .ROM_enable (enable_to_rom), .ASEL (ASEL), .enable_ram_read(enable_ram_read));
	Datapath Datapath0 (.clk (clk), .reset (reset), .MD (MD), .MB (MB), .RW (RW), .FS (FS), .SA (SA), .DR (DR), .BA (SB), 
	.PC (PC_out), .imdt (imdt), .RAM_data_out (data_ram_in), .V (V), .C (C), .N (N), .Z (Z),
	.A_out (bus_A), .B_out (data_ram_out), .ASEL (ASEL));

	assign write_enable_to_ram = MW;
	assign read_enable_to_ram = ~MW;
	assign address_to_rom = PC_out;
	assign address_to_ram = bus_A[5:0];
	
endmodule
