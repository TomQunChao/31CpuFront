`timescale 1ns/1ps

module pc(
    input [31:0]sAddr,//start Addr
    input [31:0]nAddr,//next Addr
    input rst,
    input clk,
    output reg[31:0]cAddr //currentAddr
);
always @ (negedge clk or posedge rst)begin
    if(rst)cAddr<=sAddr;
    else cAddr<=nAddr;
end
endmodule // pc