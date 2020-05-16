`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 02:16:30 PM
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb();
    wire[3:0] dout;
    reg[3:0] din;
    reg clk,reset;
    pipo dut(din,clk,reset,dout);
    always #5 clk=~clk;
    initial begin
    clk=0;reset=0;din=0;
    #5 reset=1;
    #5 reset=0;
    #5 din=4'b1010;
    #10 $stop;
    end
endmodule
