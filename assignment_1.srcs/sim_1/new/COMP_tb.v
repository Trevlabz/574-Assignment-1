`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2018 10:30:44 PM
// Design Name: 
// Module Name: COMP_tb
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


module COMP_tb();
    //COMP
    reg [1:0] a, b;
    wire gt, lt, eq;
    
    COMP #(.DATALENGTH(2)) COMP2(a, b, gt, lt, eq);
    
    
    initial begin
        a <= 2'b00; b <= 2'b00;
        #10 a <= 2'b01;
        #10 b <= 2'b10;
        #10 a <= 2'b10;
        #10 a <= 2'b00; b <= 2'b00;
    end

endmodule
