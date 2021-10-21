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


module MaskStore(MemAdr, MemData, RegData , Bytes2Store, Clk, out);
    input [1:0] MemAdr;
    input [31:0] MemData, RegData;
    input Bytes2Store;
    input Clk;
    output reg out;
    wire [31:0] Out_sh, Out_sh;
    StoreByte sb(MemAdr, MemData, RegData, Clk, Out_sb);
   
    StoreHalf sh(MemAdr[1], MemData, RegData, Clk, Out_sh);
    always @(*)  begin
        case (Bytes2Store) 
            2'd1:  out <= Out_sh;
            2'd2: out <= Out_sb;
            default: out <= MemData;
        endcase
    end
    
endmodule

