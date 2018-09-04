`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2018 09:37:19 PM
// Design Name: 
// Module Name: REG_tb
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


module REG_tb( );
    
    //REG
    reg [1:0] d;
    wire [1:0] q;
    reg Clk, Rst;
        
    REG #(.DATALENGTH(2)) REG2(d, Clk, Rst, q);
    
    always
        #10 Clk <= ~Clk;
        
    initial begin
        Clk <= 0;
              
        d <= 2'b00;
        Rst <= 1;
        #20 Rst <=0;
        #45 d <= 2'b11;
        #40 d <= 2'b01;
        #40 d <= 2'b10;
        #40 Rst <= 1;
        #40 Rst <= 0;
    
    end   

endmodule
