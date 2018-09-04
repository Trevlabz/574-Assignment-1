`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/31/2018 12:11:35 AM
// Design Name: Assignment 1
// Module Name: INC
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

//INC               
//DataIn(a)
//CtrlIn()
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module INC #(parameter DATAWIDTH = 2)(a, d);
    input [DATAWIDTH - 1:0] a;
    output reg [DATAWIDTH - 1:0] d;
    
    always @(a) begin
        d <= a + 1; //increment a
    end
endmodule
