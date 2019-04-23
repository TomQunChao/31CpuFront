`timescale 1ns/1ps

module mux2(
    input [31:0]data0,
    input [31:0]data1,
    input choose,
    output [31:0]oData
);
assign oData=choose?data1:data0;
endmodule // mux2