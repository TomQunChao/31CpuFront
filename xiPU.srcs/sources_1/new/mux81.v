`timescale 1ns/1ps

module mux81(
    input [2:0]select,
    input [31:0]data1,
    input [31:0]data2,
    input [31:0]data3,
    input [31:0]data4,
    input [31:0]data5,
    input [31:0]data6,
    input [31:0]data7,

    output [31:0]oData
);
triState t1(data1,~select[0]&~select[1]&select[2],oData);
triState t2(data2,~select[0]&select[1]&~select[2],oData);
triState t3(data3,~select[0]&select[1]&select[2],oData);
triState t4(data4,select[0]&~select[1]&~select[2],oData);
triState t5(data5,select[0]&~select[1]&select[2],oData);
triState t6(data6,select[0]&select[1]&~select[2],oData);
triState t7(data7,select[0]&select[1]&select[2],oData);
endmodule