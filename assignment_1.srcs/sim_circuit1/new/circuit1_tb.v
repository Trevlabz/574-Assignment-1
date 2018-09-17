`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit1_tb
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


module circuit1_tb();
    reg clk, rst;
    reg [7:0] a, b, c;
    wire [7:0] z;
    wire [15:0] x;    
    
    circuit1 circuit_test(clk, rst, a, b, c, z, x);
    
    always
        #10 clk <= ~clk;
        
    initial begin
        clk <= 0;
        rst <= 1;
        a <= 8'h00; b <= 8'h00; c <= 8'h00;
        #20 rst <= 0;        
        #40;
        a <= 8'h0F; b <= 8'h32; c <= 8'h0A;
        #40;
        a <= 8'h3C; b <= 8'h0F; c <= 8'h50;
        #40;
        a <= 8'hB9; b <= 8'hD7; c <= 8'h0F;
        #40;       
        a <= 8'h05; b <= 8'h0A; c <= 8'h0F;
        #40;
        a <= 8'h0F; b <= 8'h05; c <= 8'h0A;
        #40;
        a <= 8'h0F; b <= 8'h0A; c <= 8'h05;
        #40;
        
    end
        
endmodule
