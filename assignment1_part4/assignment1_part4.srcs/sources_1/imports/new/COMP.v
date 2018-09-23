`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: COMP
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

//Comparator
//DataIn(a,b)
//CtrlIn()
//DataOut()
//CtrlOut(gt, lt, eq)
//Parameter(DATAWIDTH)
module COMP #(parameter DATAWIDTH = 64)(a, b, gt, lt, eq);
    input [DATAWIDTH-1:0] a, b;
    output reg gt, lt, eq;
    
    always @(a, b) begin
        if(a > b) begin
            gt <= 1; lt <= 0; eq <= 0;
        end
        else if(a < b) begin
            gt <= 0; lt <= 1; eq <= 0;
        end
        else begin
            gt <= 0; lt <= 0; eq <= 1;
        end
    end
endmodule









