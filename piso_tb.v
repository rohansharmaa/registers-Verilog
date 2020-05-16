`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 01:56:34 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb;
    wire dout;
    reg[3:0] din;
    reg load,reset,clk;
   
    piso dut(din,clk,reset,load,dout);
    
    always #5 clk=~clk;
    initial begin
    clk=0;reset=0;din=0;load=0;
    #5 reset=1;
    #10 reset=0;
    #5 din[3]=1;din[2]=0;din[1]=1;din[0]=0;
       load=1;
    #5 load=0;
    #5 load=1;
    #5 load=0;
    
    end
endmodule
