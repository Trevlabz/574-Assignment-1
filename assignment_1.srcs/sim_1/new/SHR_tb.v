`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2018 10:30:44 PM
// Design Name: 
// Module Name: SHR_tb
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


module SHR_tb();
    reg [1:0] a, sh_amt;
    wire [1:0] d;
    
    SHR #(.DATAWIDTH(2)) SHR_2(a, sh_amt, d);
    
    initial begin
        a <= 2'b00; sh_amt <= 2'b00;
        #10 a <= 2'b10;
        #10 sh_amt <= 2'b01;
        #10 sh_amt <= 2'b00;
        #10 sh_amt <= 2'b10;
        #10 a <= 2'b11;
        #10 sh_amt <= 2'b00;
    end
endmodule
