`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:23:04 05/22/2016
// Design Name:   finalproject
// Module Name:   D:/XilinxVerilog/CSFiles/finalproject/finalproject_test.v
// Project Name:  finalproject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: finalproject
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module finalproject_test;

	// Inputs
	reg clk;
	reg switch;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	finalproject uut (
		.clk(clk), 
		.switch(switch), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   
	always 
	#5  clk =  ! clk; 
	
endmodule

