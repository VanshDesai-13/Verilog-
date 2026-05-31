`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2026 11:01:10
// Design Name: 
// Module Name: mod_sel_tb
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


module mod_sel_tb();
    reg clk,enb,rst;
    reg [1:0] sel;
    wire mod_2;
    wire [1:0] mod_4;
    wire [2:0] mod_8;
    wire [3:0] mod_16;
    mod_sel mod_dut(enb,clk,rst,sel,mod_2,mod_4,mod_8,mod_16);
    initial
        begin 
            {clk,enb,rst,sel}=0;
        end
    always #5 clk=~clk;
    
    initial 
        begin
            rst=1;
            #10;
            rst=0;
            #10;
            enb=1;
            sel=2'b00;
            #40
            sel=2'b01;
            #80
            sel=2'b10;
            #120
            sel=2'b11;
            end
endmodule
