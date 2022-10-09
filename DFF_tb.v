`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:21 10/09/2022
// Design Name:   DFF
// Module Name:   E:/Pankaj_HDL_119/DFF_tb.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DFF_tb;

	// Inputs
	reg D;
	reg clk;
   reg rst;
	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.Q(Q), 
		.D(D), 
		.clk(clk),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 1;
      rst = 1;
		// Wait 100 ns for global reset to finish
		#100;
		rst =0;
		D=1;
		#100;
      D=0;  
		// Add stimulus here

	end
always #10 clk = ~clk;      
endmodule

