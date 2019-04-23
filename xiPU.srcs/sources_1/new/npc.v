`timescale 1ns/1ps
module npc(
    input [31:0]cAddr,
    output [31:0]nAddr
);
assign nAddr=cAddr+4;
endmodule // npc