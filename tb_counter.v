`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:22:53 11/18/2022
// Design Name:   counter_119
// Module Name:   E:/B3/adder_241_250/HDL_Counter_119/tb_counter.v
// Project Name:  HDL_Counter_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_119
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] counter;

	// Bidirs
	wire clk_d;

	// Instantiate the Unit Under Test (UUT)
	counter_119 uut (
		.clk(clk), 
		.rst(rst), 
		.clk_d(clk_d), 
		.counter(counter)
	);

	initial begin

 

clk = 1;

forever #10 clk = ~clk;

end

 

initial begin

 

rst = 1;

#20;

rst=0;

#1000;

end

 

endmodule

