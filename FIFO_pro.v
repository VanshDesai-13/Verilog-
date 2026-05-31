`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 11:54:35
// Design Name: 
// Module Name: FIFO_pro
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


module FIFO_pro(
input clk,rst,input [7:0] data_in,output[7:0] data_out
    );
    wire [7:0] temp1;
    wire [7:0] temp2;
    wire rden,wren,full,empty;
    mod_a dut1(clk,rst,data_in,temp1,wren);
    FIFO dut2(clk,rst,rden,wren,temp1,full,empty,temp2);
    mod_b dut3(clk,rst,temp2,data_out,rden);
endmodule
