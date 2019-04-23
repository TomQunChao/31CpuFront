`timescale 1ns/1ps

module mux4(
    input [31:0]data0,
    input [31:0]data1,
    input [31:0]data2,
    input [31:0]data3,
    input [1:0]choose,

    output [31:0]oData
);
assign oData=~choose[0]&~choose[1]?data0:32'bz;
assign oData=choose[0]&~choose[1]?data1:32'bz;
assign oData=~choose[0]&choose[1]?data2:32'bz;
assign oData=choose[0]&choose[1]?data3:32'bz;
endmodule // mux4