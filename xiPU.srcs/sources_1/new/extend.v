`timescale 1ns/1ps

module extend(
    input [31:0]dataIn,

    output [31:0]ext5,
    output [31:0]ext16,
    output [31:0]sext16
);
assign ext5=dataIn[10:6];
assign ext16={16'b0,dataIn[15:0]};
assign sext16={dataIn[15]?16'hffff:16'b0,dataIn[15:0]};

endmodule // extend