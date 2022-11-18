`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:25 11/18/2022 
// Design Name: 
// Module Name:    counter_119 
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

module counter_119 (input clk, rst, inout clk_d,output [3:0] counter);

reg [3:0] counter_up;

reg [25:0] div_cnt;

 

always@(posedge clk)

begin

if(rst)

div_cnt<=25'd0;

else

div_cnt<= div_cnt + 1;

end

 

assign clk_d=div_cnt[25];

 

always@(posedge clk_d or posedge rst)

begin

if(rst)

counter_up<=4'd0;

else

counter_up<= counter_up + 1;

end

 

assign counter = counter_up;

 

endmodule
