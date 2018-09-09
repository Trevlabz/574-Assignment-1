`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/08/2018 04:25:22 PM
// Design Name: 
// Module Name: circuit3 
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


module circuit3(Clk, Rst, a, b, c, d, e, f, g, h, sa, avg);
    input Clk, Rst;
    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    
    output [15:0] avg;
    
    wire [32:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD #(.DATAWIDTH(32)) ADD1({4'h0000,a}, {4'h0000,b}, l00);      //l00 = a+b
    ADD #(.DATAWIDTH(32)) ADD2({4'h0000,c}, {4'h0000,d}, l01);      //l01 = c+d
    ADD #(.DATAWIDTH(32)) ADD3({4'h0000,e}, {4'h0000,f}, l02);      //l02 = e+f
    ADD #(.DATAWIDTH(32)) ADD4({4'h0000,g}, {4'h0000,h}, l03);      //l03 = g+h
    ADD #(.DATAWIDTH(32)) ADD5(l00, l01, l10);                      //l10 = l00+l01
    ADD #(.DATAWIDTH(32)) ADD6(l02, l03, l11);                      //l11 = l02+l03
    ADD #(.DATAWIDTH(32)) ADD7(l10, l11, l2);                       //l2 = l10+l11
    SHR #(.DATAWIDTH(32)) SHR1(l2, {6'h00000,sa}, l2div2);          //l2div2 = l2>>sa
    SHR #(.DATAWIDTH(32)) SHR2(l2div2, {6'h000000,sa}, l2div4);     //l2div4 = l2div2>>sa
    SHR #(.DATAWIDTH(32)) SHR3(l2div4, {6'h000000,sa}, l2div8);     //l2div8 = l2div4>>sa
    REG #(.DATAWIDTH(32)) REG1(l2div8, Clk, Rst, avg);              //avg = l2div8
    
endmodule
