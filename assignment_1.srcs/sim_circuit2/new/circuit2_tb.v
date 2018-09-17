`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit2_tb
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


module circuit2_tb();
    reg clk, rst;
    reg [31:0] a, b, c;
    wire [31:0] x, z;   
    
    circuit2 circuit_test(clk, rst, a, b, c, z, x);
    
    always
        #10 clk <= ~clk;
        
    initial begin
        clk <= 0;
        rst <= 1;
        a <= 32'h00000000; b <= 32'h00000000; c <= 32'h00000000;
        #20 rst <= 0;
        #40;
        a <= 32'h000088B9; b <= 32'h00001429; c <= 32'h000005FA;
        #40;
        a <= 32'h00000064; b <= 32'h0000001E; c <= 32'h0000001E;
        #40;
        a <= 32'h00000065; b <= 32'h0000001E; c <= 32'h00000032;
        #40;               
    end
        
endmodule
