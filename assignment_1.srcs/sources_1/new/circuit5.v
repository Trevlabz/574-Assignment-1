`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/08/2018 06:39:07 PM
// Design Name: 
// Module Name: circuit5
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


module circuit5(Clk, Rst, a, b, c, d, zero, z);
    input Clk, Rst;
    input [63:0] a, b, c, d, zero;
    output [63:0] z;
    
    wire [63:0] e, f, g, zwire;
    wire gEQz;
    
    DIV #(.DATAWIDTH(64)) DIV1(a, b, e);                //e = a / b
    DIV #(.DATAWIDTH(64)) DIV2(c, d, f);                //f = c / d
    MOD #(.DATAWIDTH(64)) MOD1(a, b, g);                //g = a % b  
    COMP #(.DATAWIDTH(64)) COMP1(g, zero, , ,gEQz);     //gEQz = g == zero
    MUX2x1 #(.DATAWIDTH(64)) MUX1(f, e, gEQz, zwire);   //zwire = gEQz ? e : f
    REG #(.DATAWIDTH(64)) REG1(zwire, Clk, Rst, z);     //z = zwire
            
endmodule
