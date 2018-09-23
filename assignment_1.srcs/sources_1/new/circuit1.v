`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit1
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


module circuit1(Clk, Rst, a, b, c, z, x);
    input Clk, Rst;
    input [7:0] a, b, c;
    output wire [7:0] z;        
    output wire [15:0] x;
    
    wire [7:0] d, e;
    wire [15:0] f, g;
    wire [15:0] xwire;
    
    ADD #(.DATAWIDTH(8)) ADD1(a, b, d);
    ADD #(.DATAWIDTH(8)) ADD2(a, c, e);
    COMP #(.DATAWIDTH(8)) COMP1(d, e, g[0], ,);
    MUX2x1 #(.DATAWIDTH(16)) MUX1({8'h00,e}, {8'h00,d}, g[0], z);
    MUL #(.DATAWIDTH(16)) MUL1({8'h00,a}, {8'h00,c}, f);
    SUB #(.DATAWIDTH(16)) SUB1(f, {8'h00,d}, xwire);
    REG #(.DATAWIDTH(16)) REG1(xwire, Clk, Rst, x);

endmodule
