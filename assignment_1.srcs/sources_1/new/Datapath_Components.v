`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Trevor LaBanz
// 
// Create Date: 08/30/2018 08:24:51 PM
// Design Name: Assignment 1
// Module Name: Datapath_Components
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


//Register
//DataIn(d)
//CtrlIn(Clk,Rst)
//DataOut(q)
//CtrlOut()
//Parameter(DATAWIDTH)
module REG #(parameter DATAWIDTH = 2)(d, Clk, Rst, q);
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always @(posedge Clk) begin
        if(Rst == 1) //sync reset
            q <= {DATAWIDTH{1'b0}};
        else
            q <= d; 
    end
endmodule


//Adder
//DataIn(a,b)
//CtrlIn()
//DataOut(sum)
//CtrlOut()
//Parameter(DATAWIDTH)
module ADD #(parameter DATAWIDTH = 2)(a, b, sum);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    
    always @(a, b) begin
        sum <= a + b; //add a and b        
    end
endmodule

//Subtractor
//DataIn(a,b)
//CtrlIn()
//DataOut(diff)
//CtrlOut()
//Parameter(DATAWIDTH)
module SUB #(parameter DATAWIDTH = 2)(a, b, diff);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] diff;
    
    always @(a, b) begin
        diff <= a - b; //subtract a and b        
    end
endmodule


//Multiplier
//DataIn(a,b)
//CtrlIn()
//DataOut(prod)
//CtrlOut()
//Parameter(DATAWIDTH)
module MUL #(parameter DATAWIDTH = 2)(a, b, prod);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] prod;
    
    always @(a, b) begin
        prod <= a * b; //multiply a and b
    end
endmodule


//Comparator
//DataIn(a,b)
//CtrlIn()
//DataOut()
//CtrlOut(gt, lt, eq)
//Parameter(DATAWIDTH)
module COMP #(parameter DATAWIDTH = 2)(a, b, gt, lt, eq);
    input [DATAWIDTH-1:0] a, b;
    output reg gt, lt, eq;
    
    always @(a, b) begin
        if(a > b) begin
            gt <= 1; lt <= 0; eq <= 0;
        end
        else if(a < b) begin
            gt <= 1; lt <= 0; eq <= 0;
        end
        else begin
            gt <= 0; lt <= 0; eq <= 1;
        end
    end
endmodule


//Multiplexor 2x1
//DataIn(a,b)
//CtrlIn(sel)
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module MUX2x1 #(parameter DATAWIDTH = 2)(a, b, sel, d);
    input [DATAWIDTH-1:0] a, b;
    input sel;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, b, sel) begin
        if(sel == 0) begin
            d <= a;
        end
        else begin
            d <= b;
        end
    end
endmodule



//Logical shift right
//DataIn(a)
//CtrlIn(sh_amt)
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module SHR #(parameter DATAWIDTH = 2)(a, sh_amt, d);
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] sh_amt; //can be optimized?
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, sh_amt) begin
        d <= a >> sh_amt;
    end
endmodule


//Logical shift left
//DataIn(a)
//CtrlIn(sh_amt)
//DataOut(d)
//CtrlOut()
//Parameter(DATAWIDTH)
module SHL #(parameter DATAWIDTH = 2)(a, sh_amt, d);
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] sh_amt; //can be optimized?
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, sh_amt) begin
        d <= a << sh_amt;
    end
endmodule








