`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2026 10:54:57
// Design Name: 
// Module Name: mod_2_4_8
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


module mod_sel(
    input enb,clk,rst, [1:0] sel, 
    output reg mod_2, reg [1:0] mod_4, reg [2:0] mod_8,reg [3:0] mod_16  
    );
    reg [3:0] count;
    
    always@(posedge clk)
        begin
            if(rst)
                count<=0;
            else if(enb)
                count<=count+1;
            else
                count<=count;
        end
        
      always@(posedge clk)
      begin
        case(sel)
              
      2'b00:begin  
            mod_2=count[0];
            mod_4=0;
            mod_8=0;
            mod_16=0;        
            end
      2'b01:begin  
            mod_2=0;
            mod_4=count[1:0];
            mod_8=0;
            mod_16=0;        
            end      
      2'b10:begin  
            mod_2=0;
            mod_4=0;
            mod_8=count[2:0];
            mod_16=0;        
            end
      2'b11:begin  
            mod_2=0;
            mod_4=0;
            mod_8=0;
            mod_16=count[3:0];        
            end
      endcase
      end  
endmodule
