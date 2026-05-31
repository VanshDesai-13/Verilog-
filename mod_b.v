`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 11:55:22
// Design Name: 
// Module Name: mod_b
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


module mod_b(
    input clk,rst,input [7:0] data_in,output reg [7:0] data_out,output reg rden
    );
    reg [1:0] ps,ns;
    parameter idle= 2'b00;
    parameter s1=2'b01;
    parameter data_state=2'b10;
    
    always@(posedge clk)
        begin 
            if(rst)
               ps <= idle;
            else
               ps <= ns;
        end
        
     always@(*)
        begin
            case(ps)
              idle: begin 
                    ns=s1;
                    rden=0;
                    end
              s1:   begin
                    ns=data_state;
                    rden=0;
                    end 
              data_state:  begin
                            ns=idle;
                            rden=1;
                            data_out=data_in;
                            end
         endcase
         end
endmodule   
