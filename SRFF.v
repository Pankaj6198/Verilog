`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:27 10/09/2022 
// Design Name: 
// Module Name:    SRFF 
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
module SRFF(s,r,clk,q,qb);
output q,qb;
input s,r,clk;
reg q,qb;

initial
begin
	q = 1;
	qb = 0;
end

always @(posedge clk)
begin
	case({s,r})
		{0,0}:
		      begin
				    q=q;
					 qb=qb;
				end
		{0,1}:
		      begin
				    q=0;
					 qb=1;
				end
	   {1,0}:
		      begin
				    q=1;
					 qb=0;
				end
		{1,1}:
		      begin
				    q=1'bx;
					 qb=1'bx;
				end		
	endcase
end
endmodule
