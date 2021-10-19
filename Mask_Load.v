`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 02:31:02 PM
// Design Name: 
// Module Name: MaskStore
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


module MaskStore(MemAdr, Data, rt , numBits, Clk, out);
    input [31:0] MemAdr, Data, rt;
    input [1:0] numBits;
    input Clk;
    output reg out;
    
    always @(*)  begin
        case (numBits)
            2'd0: 
            
        endcase
    end
    
endmodule
