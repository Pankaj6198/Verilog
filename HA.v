`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:06 11/15/2022 
// Design Name: 
// Module Name:    HA 
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


//Data Flow Code:
module HA_DF(
    input a,
    input b,
    output sum,
    output carry
    );
	 assign sum = a^b;
	 assign carry = a & b;


endmodule

//2) Gate Level Code
module ha_GL(
    input a,
    input b,
    output sum,
    output carry
    );
	 xor u1(sum,a,b);
	 and u2(carry,a,b);


endmodule

//3)Behavioral Code
module HA_behav(
    input a,
    input b,
    output sum,
    output carry
    );
	 reg sum,carry;
	 always @(a or b)
	 begin
	 if (a==0 && b==0)
	 begin
		sum = 0;
		carry = 0;
		end
	 else if (a==0 && b==1)
	 begin
		sum = 1;
		carry = 0;
		end
	else if (a==1 && b==0)
	 begin
		sum = 1;
		carry = 0;
		end
	else
	 begin
		sum = 0;
		carry = 1;
		end
	 end


endmodule
