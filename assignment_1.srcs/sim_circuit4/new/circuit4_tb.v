`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit4_tb
// Project Name: 
// Target Devices: 
// Tool Versions: p;
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit4_tb();
    reg clk, rst;
    reg [63:0] a, b, c;
    wire [31:0] z, x;   
    
    circuit4 circuit_test(clk, rst, a, b, c, z, x);
    
    always
        #10 clk <= ~clk;
        
    initial begin
        clk <= 0;
        rst <= 1;
        a <= 64'h0000000000000000; b <= 64'h0000000000000000; c <= 64'h0000000000000000;
        #20 rst <= 0;
        #60;
        a <= 64'h0000000026CF5AD4; b <= 64'h0000000000069482; c <= 64'h00000000035BB2F2;
        #60;
        a <= 64'h000000018419D7A4; b <= 64'h000000000002E592; c <= 64'h0000000000626741;
        #60;
        rst <= 1; #20; rst <=0;
        a <= 64'h0000000000091781; b <= 64'h0000000000014C02; c <= 64'h0000000000000220;
        #60; 
        rst <= 1; #20; rst <=0;
        a <= 64'h000000000000015E; b <= 64'h00000000000000C8; c <= 64'h00000000000000C8;             
    end
        
endmodule
