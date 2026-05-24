`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 09:17:19
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb(
    );
    reg [3:0] in;
    reg [1:0] s;
    wire y;
    integer x;
    
    mux_4_1 tub(in,s,y);
    
    initial 
        begin 
            {s,in}=0;
        end 
    
    initial
        begin
            for(x=0;x<64;x=x+1)
            begin
               {s,in}=x;
               #1;
            end 
         end
endmodule
