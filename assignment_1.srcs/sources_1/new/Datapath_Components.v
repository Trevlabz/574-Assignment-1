`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: Datapath_Components
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


//Register
//DataIn(d)
//CtrlIn(Clk,Rst)
//DataOut(q)
//CtrlOut()
//Parameter(DATAWIDTH)
module REG #(parameter DATAWIDTH = 2)(d, Clk, Rst, q);
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always @(posedge Clk) begin
        if(Rst == 1) //sync reset
            q <= {DATAWIDTH{1'b0}};
        else
            q <= d; 
    end
endmodule


//Adder
//DataIn(a,b)
//CtrlIn()
//DataOut(sum)
//CtrlOut()
//Parameter(DATAWIDTH)
module ADD #(parameter DATAWIDTH = 2)(a, b, sum);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    
    always @(a, b) begin
        sum <= a + b; //add a and b        
    end
endmodule

