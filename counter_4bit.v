`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:38 10/09/2022 
// Design Name: 
// Module Name:    Counter_4bit 
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
module Counter_4bit(clk,reset,y);
input clk,reset;
output reg[3:0] y;

always@(posedge clk or posedge reset)
begin
	if(reset)
		y = 0;
	else
		y = y+1;
end		
endmodule
