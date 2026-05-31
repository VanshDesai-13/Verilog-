`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 09:24:36
// Design Name: 
// Module Name: mux
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


module mux(
    input s,input [1:0] i, output reg y
    );
    always@(*)
        begin 
            case(s)
            0:y=i[0];
            1:y=i[1];
            default: y=0;
            endcase
         end    
endmodule
