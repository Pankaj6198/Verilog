`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:04 10/08/2022 
// Design Name: 
// Module Name:    mux_4_to_1 
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
module mux_4_to_1(out,s0,s1,a,b,c,d); // Behavioul modelling style
input s0,s1; // because select is two bit
input a,b,c,d;
output out; // out is one bit
reg out;

always @(a or b or c or d or s0 or s1)
begin
	if(s0==1'b0 && s1 ==1'b0)
		out = a;
	else if(s0==1'b0 && s1 ==1'b1)
	   out = b;
	else if(s0==1'b1 && s1 ==1'b0)
		out = c;
	else
		out = d;
end
endmodule
