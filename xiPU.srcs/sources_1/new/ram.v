`timescale 1ns / 1ps

module ram(
    input clk,
    input ena,
    input wena,
    input [31:0]addr,
    input [31:0]data_in,
    output [31:0]data_out
    );
    reg [31:0]data[4096:0];
    always @ (negedge clk)
    begin
        if(ena==1)
        begin
            if(wena==1)
            begin
                data[addr-32'h10010000]<=data_in;
            end
        end
    end
    assign data_out=data[addr-32'h10010000];
endmodule
