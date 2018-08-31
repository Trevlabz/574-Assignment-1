`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: SUB
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


//Subtractor
//DataIn(a,b)
//CtrlIn()
//DataOut(diff)
//CtrlOut()
//Parameter(DATAWIDTH)
module SUB #(parameter DATAWIDTH = 2)(a, b, diff);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] diff;
    
    always @(a, b) begin
        diff <= a - b; //subtract a and b        
    end
endmodule





