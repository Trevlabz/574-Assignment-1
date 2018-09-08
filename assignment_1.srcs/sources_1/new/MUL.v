`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: MUL
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
//////////////////////////////// //////////////////////////////////////////////////


//Multiplier
//DataIn(a,b)
//CtrlIn()
//DataOut(prod)
//CtrlOut()
//Parameter(DATAWIDTH)
module MUL #(parameter DATAWIDTH = 32)(a, b, prod);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] prod;
    
    always @(a, b) begin
        prod <= a * b; //multiply a and b
    end
endmodule
