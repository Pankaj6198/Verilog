`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:18 10/09/2022 
// Design Name: 
// Module Name:    TFF 
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
module TFF(Q,T,clk,rst);
input T,clk,rst;
output reg Q;

always @(posedge clk or posedge rst)
begin
	if(rst)
	Q = 0;
	else
	begin
		if(T)
			Q = ~Q;
	   else
			Q = Q;
	end
end
endmodule
