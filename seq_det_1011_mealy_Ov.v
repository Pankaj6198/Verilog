`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:28 10/15/2022 
// Design Name: 
// Module Name:    seq_det_1011_mealy_Ov 
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

module seq_det_1011_mealy_Ov(input clk, input x, output reg y, output reg [1:0]st);
    reg [1:0]state;
    reg [1:0]next_state;
    parameter S0 = 0,S1 = 1, S2 = 2, S3 = 3;
    initial begin
        state <= S0;
        st <= S0;
    end

    always@(posedge clk)
    begin
        state <= next_state;
        st <= next_state;
    end

    always@(state or x)
    begin
        y = 0;
        case(state)
        S0: if(x)
                begin
                    next_state = S1;
                end
            else
                next_state = S0;

        S1: if(x)
                next_state = S1;
            else
                next_state = S2;

        S2: if(x)
                next_state = S3;
            else
                next_state = S0;
        S3: if(x)
                begin
                    next_state = S1; y =1;
                end
            else
                next_state = S2;
        default:
                next_state = S0;
    endcase
end
endmodule

