`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:04:35 10/09/2022
// Design Name:   SRFF
// Module Name:   E:/Pankaj_HDL_119/SRFF_TB.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SRFF_TB;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	SRFF uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		s = 0;
		r = 0;
		#10
		
		clk = 1;
		s = 0;
		r = 0;
		#10
		
		clk = 0;
		s = 0;
		r = 0;
		#10
		
		clk = 1;
		s = 0;
		r = 1;
		#10
		
		clk = 0;
		s = 1;
		r = 0;
		#10
		
		clk = 1;
		s = 1;
		r = 0;
		#10
		
		clk = 0;
		s = 1;
		r = 1;
		#10
		
		clk = 1;
		s = 1;
		r = 1;
	
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

