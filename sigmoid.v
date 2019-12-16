`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2019 07:57:42 PM
// Design Name: 
// Module Name: sigmoid
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

module sigmoid(x,out);

    input signed [7:0] x;
    output reg signed [15:0] out;
      
    
   reg signed [7:0] y,z,sum;
   reg signed [15:0] sq,sh;
    
   always@(*)
   begin
   if(x[7]==1'b1)
       y=-x;
   else
       y=x;
   z=y>>>2 ;
      
   sum= z+8'b1111_0000;
      
   sq=sum*sum;

   sh=sq>>>1;

   if(x[7]==1'b1)
       out=sh;
   else
       out=16'b00000001_00000000-sh;
   end
   
endmodule

