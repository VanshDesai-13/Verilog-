`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 11:55:03
// Design Name: 
// Module Name: FIFO
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


module FIFO(
    input clk,rst,rden,wren,input [7:0] data_in,output full,empty,
    output reg [7:0] data_out
    );
    reg [7:0] mem[0:7];
    integer i;
    reg [2:0] wrt_ptr=0;
    reg [2:0] rd_ptr=0;
    
    always@(posedge clk)
        begin
            if(rst)
                begin
                    for(i=0;i<8;i=i+1)
                      mem[i]<=0;
                 end
             if(wren && !full)
                begin
                    mem[wrt_ptr]<=data_in;
                    wrt_ptr<=wrt_ptr+1'b1;
                end
             if(rden && !empty)
                begin   
                    data_out<=mem[rd_ptr];
                    rd_ptr<=rd_ptr+1'b1;
                end
         end
         assign full=(wrt_ptr+1'b1==rd_ptr);
         assign empty=(wrt_ptr==rd_ptr);                      
endmodule
