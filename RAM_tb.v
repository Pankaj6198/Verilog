`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:54 11/13/2022
// Design Name:   RAM_
// Module Name:   E:/HDL_Pankaj_119/RAM_tb.v
// Project Name:  HDL_Pankaj_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_tb;

	// Inputs
	reg clk;
	reg [3:0] data_in;
	reg wr;
	reg rd;
	reg [2:0] add;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	RAM_ uut (
		.clk(clk), 
		.data_in(data_in), 
		.wr(wr), 
		.rd(rd), 
		.add(add), 
		.data_out(data_out)
	);

initial begin
// Initialize Inputs
data_in = 0;
wr = 0;
rd = 0;
add = 0;

// Write
data_in = 4'b0000;wr = 1;rd = 0;add = 3'b0000;#30;
data_in = 4'b0001;wr = 1;rd = 0;add = 3'b0001;#30;
data_in = 4'b0010;wr = 1;rd = 0;add = 3'b0010;#30;
data_in = 4'b0011;wr = 1;rd = 0;add = 3'b0011;#30;
// read
wr = 0;rd = 1;add = 3'b0000;#30;
wr = 0;rd = 1;add = 3'b0001;#30;
wr = 0;rd = 1;add = 3'b0010;#30;
wr = 0;rd = 1;add = 3'b0011;#30;
   
end

   initial
begin
clk = 0;
forever #15 clk = ~clk;
end  

endmodule

