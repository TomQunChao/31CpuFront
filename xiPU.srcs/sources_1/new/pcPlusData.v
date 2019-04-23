`timescale 1ns/1ps
module pcPlusData(
    input [31:0]cmd,
    input [31:0]pc,

    output [31:0]oDadd,
    output [31:0]oDmerge
);

assign oDadd = pc+{cmd[15]?14'h3fff:14'b0,cmd[15:0],2'b0}+4;

assign oDmerge={pc[31:28],cmd[25:0],2'b00};

endmodule