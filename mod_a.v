`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 11:54:48
// Design Name: 
// Module Name: mod_a
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


module mod_a(
    input clk,rst,input [7:0] data_in,output reg [7:0] data_out,output reg wren
    );
    always@(posedge clk)
        begin
            if(rst)
            begin 
                data_out <= 0;
                wren=0;
            end 
            else
                begin
                data_out <= data_in;
                wren=1;
                end
        end
endmodule
