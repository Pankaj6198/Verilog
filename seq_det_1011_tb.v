`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:25 10/15/2022
// Design Name:   seq_det_1011_mealy_Ov
// Module Name:   E:/Pankaj_HDL_119/seq_det_1011_tb.v
// Project Name:  Pankaj_HDL_119
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_det_1011_mealy_Ov
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_det_1011_tb;

	// Inputs
	reg clk;
	reg x;

	// Outputs
	wire y;
	wire [1:0] st;

	// Instantiate the Unit Under Test (UUT)
	seq_det_1011_mealy_Ov uut (
		.clk(clk), 
		.x(x), 
		.y(y), 
		.st(st)
	);

	always
        begin
            clk = ~clk; #5;
        end
	initial begin
        clk=0;
        x=0;
        #15;
        x=1; #10;
        x = 0; #10;
        x=1; #10;
        x=1; #10;
        x=0; #10;
        x = 1; #10;
        x=1; #10;
        $finish;
    end
	 
    initial begin
        $monitor("clk=%d state = %2d t=%3d x=%d output=%d \n",clk ,st,$time,x,y);
    end
	
      
endmodule

