`timescale 1ns/1ns

module testbench;
	reg CLK;
	reg RESET;
	reg STRTSTOP;
	reg GSR;
	wire [9:0] TENTHSOUT;
	wire [6:0] ONESOUT;
	wire [6:0] TENSOUT;

	stopwatch UUT (
		.CLK(CLK),
		.RESET(RESET),
		.STRTSTOP(STRTSTOP),
		.TENTHSOUT(TENTHSOUT),
		.ONESOUT(ONESOUT),
		.TENSOUT(TENSOUT)
	);

assign glbl.GSR = GSR;

always begin //clock process
	CLK = 1'b0;
	#5
	CLK = 1'b1;
	#5
	#5
	CLK = 1'b0;
	#5
	CLK = 1'b0;
end

initial begin
	// --------------------
	GSR = 1;
	RESET = 1'b1;
	STRTSTOP = 1'b1;
	//TENTHSOUT = 10'b0;
	//ONESOUT = 7'b0;
	//TENSOUT = 7'b0;
	// --------------------
	#100 // Time=100 ns
	GSR = 0; 
	// --------------------
	#200 // Time=300 ns
	RESET = 1'b0;
	// --------------------
	#400 // Time=700 ns
	STRTSTOP = 1'b0;
	// --------------------
	#100 // Time=800 ns
	STRTSTOP = 1'b1;
	// --------------------
	#500 // Time=1300 ns
	STRTSTOP = 1'b0;
	// --------------------
	#100 // Time=1400 ns
	STRTSTOP = 1'b1;
	// --------------------
	#300 // Time=1700 ns
	RESET = 1'b1;
	// --------------------
	#100 // Time=1800 ns
	RESET = 1'b0;
	// --------------------
	#400 // Time=2200 ns
	STRTSTOP = 1'b0;	
	// --------------------
	#100 // Time=2300 ns
	STRTSTOP = 1'b1;
	// --------------------
	#2695 ;// Time=4995 ns
	// --------------------
end

endmodule
