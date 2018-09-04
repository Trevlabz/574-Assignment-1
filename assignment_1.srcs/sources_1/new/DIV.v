`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/31/2018 12:11:35 AM
// Design Name: Assignment 1
// Module Name: DIV
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

//DIV
//DataIn(a,b)
//CtrlIn()
//DataOut(quot)
//CtrlOut()
//Parameter(DATAWIDTH)
module DIV #(parameter DATAWIDTH = 2)(a, b, quot);
    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] quot;
    
    always @(a, b) begin
        quot <= a / b;  //divide a by b
    end
endmodule
