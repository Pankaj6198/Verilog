`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:02 11/13/2022 
// Design Name: 
// Module Name:    FA 
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
module FA(sum,carry,a,b,c);

   input wire a,b,c;
   output wire sum,carry;

assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule
