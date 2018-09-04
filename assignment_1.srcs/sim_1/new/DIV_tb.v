`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2018 10:30:44 PM
// Design Name: 
// Module Name: DIV_tb
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


module DIV_tb();
    reg [1:0] a, b;
    wire [1:0] quot;
    
    DIV #(.DATALENGTH(2)) DIV2(a, b, quot);
    
    initial begin
        a <= 2'b00; b <= 2'b01;
        #10 a <= 2'b01;
        #10 a <= 2'b10;
        #10 a <= 2'b11;
        #10 b <= 2'b01;
        #10 b <= 2'b10;
        #10 b <= 2'b11;
    end
endmodule
