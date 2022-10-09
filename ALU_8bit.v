`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:00 10/09/2022 
// Design Name: 
// Module Name:    alu_8bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_8bit(res,op,A,B);
input [7:0] A,B;
input [3:0] op;

output[7:0] res;
reg[7:0] res;

always@(op,A,B)
begin
case(op)
	4'b0000 : res = A + B;
	4'b0001 : res = A - B;
   4'b0010 : res = A * B;
	4'b0011 : res = A / B;
	4'b0100 : res = A%B;
	4'b0101 : res = A >> 1;
	4'b0110 : res = B << 1;
	4'b0111 : res = B >> 1;
	4'b1000 : res = A&&B;
	4'b1001 : res = A||B;
	4'b1010 : res = A^B;
	4'b1011 : res = ~A;
	4'b1100 : res = A&B;
	4'b1101 : res = A|B;
	4'b1110 : res = A>B?1:0;
   4'b1111 : res = A==B?1:0;
endcase	
end
endmodule
