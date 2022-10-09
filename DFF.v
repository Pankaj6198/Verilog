`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:13 10/09/2022 
// Design Name: 
// Module Name:    DFF 
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
module DFF(Q,D,clk,rst);
input D,clk,rst;
output reg Q;

always @(posedge clk or posedge rst)
begin
	if(rst)
		Q = 0;
	else
		Q = D;
end
endmodule
