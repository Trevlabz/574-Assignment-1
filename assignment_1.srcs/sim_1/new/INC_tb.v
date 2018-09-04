`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2018 10:30:44 PM
// Design Name: 
// Module Name: INC_tb
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


module INC_tb();
    reg [1:0] a;
    wire [1:0] d;
    
    INC #(.DATALENGTH(2)) INC2(a, d);
    
    
    initial begin
        a <= 2'b00;
        #10 a <= 2'b01;
        #10 a <= 2'b10;
        #10 a <= 2'b00;
    end
endmodule
