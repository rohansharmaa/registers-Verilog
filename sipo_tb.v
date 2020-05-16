`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 01:37:55 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
    wire [3:0] dout;
    reg din,clk,reset;
    reg [3:0] s;
    sipo dut(din,clk,reset,dout);
    always #5 clk=~clk;
    initial begin
    clk=0;reset=0; din=0;
    #5 reset=1;
    #10 reset=0;
    #5 din=1;
    
    
    #40 $stop;
    end
endmodule
