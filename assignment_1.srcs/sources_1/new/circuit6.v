`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2018 07:09:17 PM
// Design Name: 
// Module Name: circuit6
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


module circuit6(Clk, Rst, a, b, c, zero, z);
    input Clk, Rst;
    input [63:0] a, b, c, zero;
    output [63:0] z;
    
    wire [63:0] e, f, g, zwire;
    wire gEQz;
    
       
    DEC #(.DATAWIDTH(64)) DEC1(a, e);                   //e = a - 1
    INC #(.DATAWIDTH(64)) INC1(c, f);                   //f = c + 1
    MOD #(.DATAWIDTH(64)) MOD1(a, c, g);                //g = a % c  
    COMP #(.DATAWIDTH(64)) COMP1(g, zero, , , gEQz);    //gEQz = g == zero
    MUX2x1 #(.DATAWIDTH(64)) MUX1(e, f, gEQz, zwire);   //zwire = gEQz ? e : f 
    REG #(.DATAWIDTH(64)) REG1(zwire, Clk, Rst, z);     //z = zwire
    
endmodule
