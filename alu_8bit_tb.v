`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:02:23 10/09/2022
// Design Name:   alu_8bit
// Module Name:   E:/Pankaj_HDL_119/alu_8bit_tb.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_8bit_tb;

	// Inputs
	reg [3:0] op;
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	alu_8bit uut (
		.res(res), 
		.op(op), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000; B = 4'b0001; // A = 0 , B=1
		op = 4'b0000; #20   // a+b
		op = 4'b0001; #20   // a-b
		op = 4'b0010; #20   // a*b
		op = 4'b0011; #20   // a/b
		op = 4'b0100; #20
		op = 4'b0101; #20
		op = 4'b0110; #20
		op = 4'b0111; #20
		op = 4'b1000; #20
		op = 4'b1001; #20
		op = 4'b1010; #20
		op = 4'b1011; #20
		op = 4'b1100; #20
		op = 4'b1101; #20
		op = 4'b1110; #20
		op = 4'b1111; #20
		
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

