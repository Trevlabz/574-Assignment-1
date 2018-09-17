`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/08/2018 03:09:39 PM
// Design Name: 
// Module Name: circuit2
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


module circuit2(Clk, Rst, a, b, c, z, x);
    input Clk, Rst;
    input [31:0] a, b, c;
    output wire [31:0] z, x;
    
    wire [31:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire [31:0] zwire, xwire;
    
    ADD #(.DATAWIDTH(32)) ADD1(a, b, d);                //d = a+b
    ADD #(.DATAWIDTH(32)) ADD2(a, c, e);                //e = a+c
    SUB #(.DATAWIDTH(32)) SUB1(a, b, f);                //f = a-c
    COMP #(.DATAWIDTH(32)) COMP1(d, e, ,dLTe, dEQe);    //dEqe = d==e; dLTe = d<e
    MUX2x1 #(.DATAWIDTH(32)) MUX1(e, d, dLTe, g);       //g = dLTe ? d : e
    MUX2x1 #(.DATAWIDTH(32)) MUX2(f, g, dEQe, h);       //h = dEQe ? g : f
    SHL #(.DATAWIDTH(32)) SHL1(g, {31'b0000000000000000000000000000000, dLTe}, xwire);         //xwire = g<<dLTe
    SHR #(.DATAWIDTH(32)) SHR1(h, {31'b0000000000000000000000000000000, dEQe}, zwire);         //zwire = h>>dEQe
    REG #(.DATAWIDTH(32)) REG1(xwire, Clk, Rst, x);     //x = xwire
    REG #(.DATAWIDTH(32)) REG2(zwire, Clk, Rst, z);     //z = zwire
    
endmodule
