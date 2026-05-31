`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 13:08:15
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb(

    );
    reg clk,rst;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    FIFO_pro dut_fifo(clk,rst,data_in,data_out);
    
    initial
        begin
            {clk,rst,data_in}=0;
        end
        
     always #5 clk= ~clk;   
        
    initial
        begin
            rst=1;
            #10;
            rst=0;
            data_in=5;
            #10;
            data_in=10;
            #10;
            data_in=5;
            #10;
            $finish;
         end
endmodule
