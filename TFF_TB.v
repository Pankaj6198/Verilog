`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:52 10/09/2022
// Design Name:   TFF
// Module Name:   E:/Pankaj_HDL_119/TFF_TB.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TFF_TB;

	// Inputs
	reg T;
	reg clk;
	reg rst;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	TFF uut (
		.Q(Q), 
		.T(T), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		T = 1;
		clk = 1;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      T = 0;
		rst = 0;  
		// Add stimulus here
		#100;
      T = 1;
	   #10;
		T=0;
	end
always #10 clk = ~clk;       
endmodule

