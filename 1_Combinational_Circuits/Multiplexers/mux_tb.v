`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 09:28:04
// Design Name: 
// Module Name: mux_tb
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


module mux_tb(
    );
    reg s;
    reg [1:0] i;
    wire y;
    integer m;
    
    mux tb(s,i,y);
    
    initial
        begin
            {s,i}=0;
        end
         
    initial
        begin
            for(m=0;m<8;m=m+1) begin 
              #1;
              {s,i}= m;  
            end 
            
            $monitor("The value of y is %d",y);
        end 
endmodule
