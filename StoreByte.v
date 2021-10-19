`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 03:03:54 PM
// Design Name: 
// Module Name: StoreByte
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


module StoreByte(MemAdr, MemData, RegData, Clk, Out);
    input [31:0] MemAdr, MemData, RegData;
    input Clk;
    output reg Out;
    
     wire [1:0] x = MemAdr[1:0]; //this will tell us which byte (1,2,3, or 4) to replace with rt[7:0]
     reg [31:0] MemMask;
     wire [31:0] RegMask = {24'b0, 8'b1};
     reg [31:0] temp1;
     reg [31:0] temp2;
     reg [31:0] temp2a;
     always @ (*) begin
        case (x)
            2'd0: 
                MemMask = {4'b0, 4'b1, 4'b1, 4'b1};
            2'd1:
                MemMask = {4'b1,4'b0, 4'b1, 4'b1};
            2'd2:
                 MemMask = {4'b1, 4'b1, 4'b0, 4'b1};
            2'd3:
                MemMask = {4'b1, 4'b1,  4'b1, 4'b0};
         endcase
        temp1 = MemMask & MemData;
        temp2 = RegData & RegMask;
        temp2a = temp2 << (4'd4 - x - 1);
        Out = temp2a | temp1;
     end
endmodule
