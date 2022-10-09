`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:11 10/09/2022
// Design Name:   Counter_4bit
// Module Name:   E:/Pankaj_HDL_119/Counter_4bit_TB.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_4bit_TB;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	Counter_4bit uut (
		.clk(clk), 
		.reset(reset),  
		.y(y)
	);
	
	initial begin
		// Initialize Inputs
		clk = 1;reset = 1;#100;
		clk=1;reset = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      always #10 clk =~clk;
endmodule

