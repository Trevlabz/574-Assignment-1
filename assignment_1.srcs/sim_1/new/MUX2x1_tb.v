`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2018 10:30:44 PM
// Design Name: 
// Module Name: MUX2x1_tb
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


module MUX2x1_tb();
    reg [1:0] a, b;
    reg sel;
    wire [1:0] d;
    
    MUX2x1 #(.DATAWIDTH(2)) MUX2x1_2(a, b, sel, d);
    
    initial begin
        a <= 2'b00; b <= 2'b00; sel <= 0;
        #10 a <= 2'b01;
        #10 a <= 2'b11;
        #10 sel <= 1;
        #10 b <= 2'b10;
        #10 a <= 2'b00;
        #10 sel <= 0;
        #10 b <= 0;  
    end   
endmodule
