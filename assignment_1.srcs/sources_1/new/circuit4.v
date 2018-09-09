`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/08/2018 05:44:20 PM
// Design Name: 
// Module Name: circuit4
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


module circuit4(Clk, Rst, a, b, c, z, x);
    input Clk, Rst;
    input [63:0] a, b, c;
    output [31:0] z, x;
    
    wire [63:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire [63:0] xrin, zrin;
    wire [63:0] greg, hreg;
    //reg [63:0] greg, hreg;
    
    ADD #(.DATAWIDTH(64)) ADD1(a, b, d);                //d = a+b
    ADD #(.DATAWIDTH(64)) ADD2(a, c, e);                //e = a+c
    SUB #(.DATAWIDTH(64)) SUB1(a, b, f);                //f = a-b
    COMP #(.DATAWIDTH(64)) COMP1(d, e, , dLTe, dEQe);   //dEQe = d == e; dLTe = d < e
    MUX2x1 #(.DATAWIDTH(64)) MUX1(d, e, dLTe, g);       //g = dLTe ? d : e 
    MUX2x1 #(.DATAWIDTH(64)) MUX2(g, f, dEQe, h);       //h = dEQe ? g : f 
    REG #(.DATAWIDTH(64)) REG1(g, Clk, Rst, greg);      //greg = g
    REG #(.DATAWIDTH(64)) REG2(h, Clk, Rst, hreg);      //hreg = h
    SHL #(.DATAWIDTH(64)) SHL1(hreg, dLTe, xrin);       //xrin = hreg << dLTe
    SHR #(.DATAWIDTH(64)) SHR1(greg, dEQe, zrin);       //zrin = greg >> dEQe
    REG #(.DATAWIDTH(64)) REG3(xrin, Clk, Rst, x);      //x = xrin
    REG #(.DATAWIDTH(64)) REG4(zrin, Clk, Rst, z);      //z = zrin

endmodule
