`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/31/2018 12:11:35 AM
// Design Name: Assignment 1
// Module Name: MOD
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

//MOD               
//DataIn(a,b)
//CtrlIn()
//DataOut(rem)
//CtrlOut()
//Parameter(DATAWIDTH)
module MOD #(parameter DATAWIDTH = 64)(a, b, rem);
    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] rem;
    
    always @(a, b) begin
        rem <= a % b;   //remainder of a/b
    end
endmodule
