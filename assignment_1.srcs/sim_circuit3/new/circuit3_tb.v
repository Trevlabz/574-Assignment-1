`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Trevor LaBanz
// 
// Create Date: 09/07/2018 11:47:22 PM
// Design Name: 
// Module Name: Circuit3_tb
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


module circuit3_tb();
    reg clk, rst;
    reg [15:0] a, b, c, d, e, f, g, h;
    reg [7:0] sa;
    wire [15:0] avg;   
    
    circuit3 circuit_test(clk, rst, a, b, c, d, e, f, g, h, sa, avg);
    
    always
        #10 clk <= ~clk;
        
    initial begin
        clk <= 0;
        rst <= 1;
        sa <= 2'h01;
        a <= 16'h0000; b <= 16'h0000; c <= 16'h0000; d <= 16'h0000;
        e <= 16'h0000; f <= 16'h0000; g <= 16'h0000; h <= 16'h0000; 
        #20 rst <= 0;
        #40;
        a <= 16'h000E; b <= 16'h0002; c <= 16'h0005; d <= 16'h0017;
        e <= 16'h0033; f <= 16'h000D; g <= 16'h0016; h <= 16'h0015; 
        #40;
        a <= 16'h028E; b <= 16'h1305; c <= 16'h03A0; d <= 16'h00B7;
        e <= 16'h1994; f <= 16'h028E; g <= 16'h0141; h <= 16'h007B; 
        #40;
        a <= 16'h0033; b <= 16'h0349; c <= 16'h0041; d <= 16'h03E8;
        e <= 16'h0206; f <= 16'h009C; g <= 16'h03B8; h <= 16'h143F; 
        #40;               
    end
        
endmodule
