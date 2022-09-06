`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:00 12/04/2021 
// Design Name: 
// Module Name:    Control_Logic 
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

module Control_Logic(
	input state,
	input[7:0] instr,
	input V, C, N, Z, // V, C, and N are never used in our instruction set
	output reg NS, MW, RW, MD, ROM_enable, ASEL, enable_ram_read,
	output reg[1:0] PS, MB,
	output [3:0] FS
   );
	
	assign FS = instr[7:4];
	
	always @ (*) begin
		case (instr[7:4])
			// Standard Functions
			4'b0000: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0001: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0010: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0011: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0100: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0101: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'bxx;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0110: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'bxx;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b0111: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'bxx;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			
			// Loading and Storing
			4'b1000: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 0;
				PS <= 2'b01;
				MB <= 2'b01;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b1001: begin
				NS <= 0;
				MW <= 0;
				RW <= 1;
				MD <= 1;
				PS <= 2'b01;
				MB <= 2'bxx;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			4'b1010: begin
				NS <= 0;
				MW <= 1;
				RW <= 0;
				MD <= 1'bx;
				PS <= 2'b01;
				MB <= 2'b00;
				ROM_enable <= 1;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
			
			// Branching
			4'b1011: begin
				if (state == 0) begin
					NS <= 1;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					if (Z)
						PS <= 2'b10;
					else
						PS <= 2'b00;
					MB <= 2'bxx;
					ROM_enable <= 0;
					ASEL <= 1;
					enable_ram_read <= 0;
				end
				else begin
					NS <= 0;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b01;
					MB <= 2'bxx;
					ROM_enable <= 1;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
			end
			4'b1100: begin
				if (state == 0) begin
					NS <= 1;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					if (Z)
						PS <= 2'b00;
					else
						PS <= 2'b10;
					MB <= 2'bxx;
					ROM_enable <= 0;
					ASEL <= 1;
					enable_ram_read <= 0;
				end
				else begin
					NS <= 0;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b01;
					MB <= 2'bxx;
					ROM_enable <= 1;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
			end
			
			// Jumping and EOE
			4'b1101: begin
				if (state == 0) begin
					NS <= 1;
					MW <= 0;
					RW <= 1;
					MD <= 1'bx;
					PS <= 2'b10;
					MB <= 2'b10;
					ROM_enable <= 0;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
				else begin
					NS <= 0;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b01;
					MB <= 2'bxx;
					ROM_enable <= 1;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
			end
			4'b1110: begin
				if (state == 0) begin
					NS <= 1;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b10;
					MB <= 2'bxx;
					ROM_enable <= 0;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
				else begin
					NS <= 0;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b01;
					MB <= 2'bxx;
					ROM_enable <= 1;
					ASEL <= 0;
					enable_ram_read <= 0;
				end
			end
			4'b1111: begin // JR and EOE share the same opcode
				if (instr[3:0] == 0) begin
					if (state == 0) begin
						NS <= 1;
						MW <= 0;
						RW <= 0;
						MD <= 1'bx;
						PS <= 2'b11;
						MB <= 2'bxx;
						ROM_enable <= 0;
						ASEL <= 0;
						enable_ram_read <= 0;
					end
					else begin
						NS <= 0;
						MW <= 0;
						RW <= 0;
						MD <= 1'bx;
						PS <= 2'b01;
						MB <= 2'bxx;
						ROM_enable <= 1;
						ASEL <= 0;
						enable_ram_read <= 0;
					end
				end
				else begin
					NS <= 0;
					MW <= 0;
					RW <= 0;
					MD <= 1'bx;
					PS <= 2'b00;
					MB <= 2'bxx;
					ROM_enable <= 0;
					ASEL <= 0;
					enable_ram_read <= 1;
				end
			end
			default: begin
				NS <= 0;
				MW <= 0;
				RW <= 0;
				MD <= 0;
				PS <= 2'b00;
				MB <= 2'b00;
				ROM_enable <= 0;
				ASEL <= 0;
				enable_ram_read <= 0;
			end
		endcase
	end
endmodule
