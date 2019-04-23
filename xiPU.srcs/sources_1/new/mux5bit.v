`timescale 1ns / 1ps

module mux5bit(
    input [4:0]data0,
    input [4:0]data1,
    input [4:0]data2,
    input [4:0]data3,
    input [1:0]choose,

    output [4:0]oData
    );
assign oData=~choose[0]&~choose[1]?data0:32'bz;
assign oData=choose[0]&~choose[1]?data1:32'bz;
assign oData=~choose[0]&choose[1]?data2:32'bz;
assign oData=choose[0]&choose[1]?data3:32'bz;
endmodule
