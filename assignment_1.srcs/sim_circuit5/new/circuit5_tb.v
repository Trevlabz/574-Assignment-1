`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit5_tb
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
    reg [63:0] a, b, c, d, zero;
    wire [31:0] z;   
    
    circuit5 circuit_test(clk, rst, a, b, c, d, zero, z);
    
    always
        #10 clk <= ~clk;
        
    initial begin
        clk <= 0;
        rst <= 1;
        a <= 64'h0000000000000000; b <= 64'h0000000000000000; c <= 64'h0000000000000000;
        d <= 64'h0000000000000000; zero <= 64'h0000000000000000;
        #20 rst <= 0;
        #60;
        a <= 64'h00000000000005A3; b <= 64'h00000000000001EF; c <= 64'h0000000000000032;
        d <= 64'h000000000000000A;
        #60;
        a <= 64'h0000000000000055; b <= 64'h0000000000000055; c <= 64'h0000000000000055;
        d <= 64'h0000000000000055;
        #60;
        a <= 64'h0000000000000158; b <= 64'h000000000000003C; c <= 64'h00000000000000A9;
        d <= 64'h0000000000000003;
        #60; 
        a <= 64'h000000000003159A; b <= 64'h0000000000006484; c <= 64'h0000000000009EDA;
        d <= 64'h000000000000FDDA;            
    end
        
endmodule
