`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 09:59:42
// Design Name: 
// Module Name: demux_tb
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


module demux_tb(
    );
    reg in,s;
    wire [1:0] y;
    integer x;
    
    demux tub(s,in,y);
    
    initial
        begin
            {s,in}=0;
        end
    initial
        begin
            for(x=0;x<4;x=x+1)
            begin
               {s,in}=x;
               #1;
            end
        end
endmodule
