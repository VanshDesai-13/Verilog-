`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 09:13:15
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
    input [3:0] in, [1:0] s, output reg y
    );
    always@(*)
        begin 
            case(s)
            2'b00: y=in[0];
            2'b01: y=in[1];
            2'b10: y=in[2];
            2'b11: y=in[3];
            endcase
        end
endmodule
