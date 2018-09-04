`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: SHL
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


//Logical shift left
//DataIn(a)
//CtrlIn(sh_amt)
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module SHL #(parameter DATAWIDTH = 2)(a, sh_amt, d);
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] sh_amt; 
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, sh_amt) begin
        d <= a << sh_amt;   //shift left sh_amt ammount
    end
endmodule








