`timescale 1ns/1ps
module join28(
    input [31:0]pc,
    input [31:0]i28,

    output [31:0]instruct
);
    assign instruct={pc[31:28],i28[27:0]};
endmodule