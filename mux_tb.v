`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:55 10/08/2022
// Design Name:   mux_4_to_1
// Module Name:   E:/Pankaj_HDL_119/mux_tb.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_4_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg s0;
	reg s1;
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux_4_to_1 uut (
		.out(out), 
		.s0(s0), 
		.s1(s1), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		s0 = 0;
		s1 = 0;
		a = 1;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		s0 = 0;
		s1 = 1;
		a = 0;
		b = 1;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		s0 = 1;
		s1 = 0;
		a = 0;
		b = 0;
		c = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		s0 = 1;
		s1 = 1;
		a = 0;
		b = 0;
		c = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

