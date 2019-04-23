`timescale 1ns / 1ps

module iram(
    input clk,
    input ena,
    input wena,
    input [31:0]addr,
    input [31:0]data_in,
    output reg[31:0]data_out
    );
    reg [7:0]ram[256:0];
    always @ (posedge clk)
    begin
        if(ena==1)
        begin
            if(wena==1)
            begin
                ram[addr]=data_in;
            end
            else data_out={ram[addr],ram[addr+1],ram[addr+2],ram[addr+3]};
        end
        else
            data_out=32'hzzzz;
    end
endmodule
