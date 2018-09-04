`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2018 09:37:19 PM
// Design Name: 
// Module Name: ADD_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADD_tb( );
    
    //ADD
    reg [1:0] a, b;
    wire [1:0] sum;
    
    ADD #(.DATALENGTH(2)) ADD2(a, b, sum);
    
    initial begin

        a <= 2'b00; b <= 2'b00;
        #10 a <= 2'b01;
        #10 b <= 2'b01;
        #10 a <= 2'b10;
        #10 b <= 2'b11;
        #20 a <= 2'b00; b <= 2'b00;

    end   
endmodule
