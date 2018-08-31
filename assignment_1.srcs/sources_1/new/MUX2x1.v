`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: MUX2x1
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


//Multiplexor 2x1
//DataIn(a,b)
//CtrlIn(sel)
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module MUX2x1 #(parameter DATAWIDTH = 2)(a, b, sel, d);
    input [DATAWIDTH-1:0] a, b;
    input sel;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, b, sel) begin
        if(sel == 0) begin
            d <= a;
        end
        else begin
            d <= b;
        end
    end
endmodule






