`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2019 07:59:01 PM
// Design Name: 
// Module Name: testbench
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


module testbench();

    reg signed [15:0] x;
    wire [31:0] out;
     
    sigmoid s0(x,out);
   
    initial
    begin
   
    x=16'b11111100_00000000;   
     #10 x=16'b11111101_00000000;   
     #10 x=16'b11111110_00000000; 
    #10 x=16'b11111111_00000000;     
          
    #10 x=16'b00000000_00000000;

    #10 x=16'b00000001_00000000;
    #10 x=16'b00000010_00000000;   
    #10 x=16'b00000011_00000000;
    #10 x=16'b00000100_00000000;
    #10 $finish;
    end

endmodule
