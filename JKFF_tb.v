`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:22 10/09/2022
// Design Name:   JKFF
// Module Name:   E:/Pankaj_HDL_119/JKFF_tb.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JKFF_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	JKFF uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
	);
	initial begin
	clk = 1;
	forever #10 clk=~clk;
	end
	
	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		rst = 1;#20
		
		j = 1;
		k = 0;
		rst = 0;#20
		
		j = 0;
		k = 1;
		rst = 0;#20
		
		j = 1;
		k = 1;
		rst = 0;#20
		
		j = 0;
		k = 0;
		rst = 0;#20
		// Wait 100 ns for global reset to finish
		$stop;
        
		// Add stimulus here

	end
      
endmodule

