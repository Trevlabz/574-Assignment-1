`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2018 09:37:19 PM
// Design Name: 
// Module Name: Components_tb
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


module Components_tb( );
    
    //REG
    reg [1:0] d;
    wire [1:0] q;
    reg Clk, Rst;
    
    //ADD
    reg [1:0] a, b;
    wire [1:0] sum;
    
    
    REG #(.DATALENGTH(2)) REG2(d, Clk, Rst, q);
    ADD #(.DATALENGTH(2)) ADD2(a, b, sum);
    
    always
        #10 Clk <= ~Clk;
        
    initial begin
        Clk <= 0;

        
//REG_TB        
//        d <= 2'b00;
//        Rst <= 1;
//        #20 Rst <=0;
//        #45 d <= 2'b11;
//        #40 d <= 2'b01;
//        #40 d <= 2'b10;
//        #40 Rst <= 1;
//        #40 Rst <= 0;


//ADD_TB
        a <= 2'b00; b <= 2'b00;
        #10 a <= 2'b01;
        #10 b <= 2'b01;
        #10 a <= 2'b10;
        #10 b <= 2'b11;
        #20 a <= 2'b00; b <= 2'b00;

        
        
    end   

endmodule
