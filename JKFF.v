`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:25 10/09/2022 
// Design Name: 
// Module Name:    JKFF 
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
module JKFF(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output q,qb;
reg q;
always @(posedge clk)
begin
	if(rst)
	q<=0;
	else
		begin
		case({j,k})
		2'b00:q<=q;
		2'b01:q<=0;
		2'b10:q<=1;
		2'b11:q<=~q;
		
		endcase
		end
end
assign qb = ~q;
endmodule
