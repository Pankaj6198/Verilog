`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:44 11/13/2022 
// Design Name: 
// Module Name:    RAM_ 
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
module RAM_(
    input clk,
input [3:0] data_in,
input wr,
input rd,
input [2:0] add,
output [3:0] data_out
);
reg [3:0] ram[0:3];
always @(posedge clk)
begin
if(wr)
ram[add]<=data_in;
end
assign data_out = rd?ram[add]:4'bzzzz;
endmodule

