`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 02:13:59 PM
// Design Name: 
// Module Name: pipo
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


module pipo(din,clk,reset,dout);
    output [3:0] dout;
    reg [3:0] dout;
    input [3:0] din;
    input clk,reset;
    reg[27:0] clkdiv;
    always@(posedge clk) 
    begin
        if(reset) clkdiv<=0;
    else
        clkdiv<=clkdiv+1;
    end
    always@(posedge clkdiv[25])
        begin if(reset)
            dout<=0;
        else
            dout<=din;
        end
endmodule
