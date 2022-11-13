`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:33 11/13/2022
// Design Name:   FA
// Module Name:   E:/HDL_Pankaj_119/FA_tb.v
// Project Name:  HDL_Pankaj_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.sum(sum), 
		.carry(carry), 
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
$monitor($time,"a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);
	a=0;
	b=0;
	c=0;
#10
	a=0;
	b=0;
	c=1;
#10
	a=0;
	b=1;
	c=0;
#10
	a=0;
	b=1;
	c=1;
#10
	a=1;
	b=0;
	c=0;
#10
	a=1;
	b=0;
	c=1;
#10
	a=1;
	b=1;
	c=0;
#10
	a=1;
	b=1;
	c=1;
end
endmodule
