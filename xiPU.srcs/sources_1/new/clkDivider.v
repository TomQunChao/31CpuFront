`timescale 1ns/1ps

module clkDivider(
    input clk,
    input rst,
    output clk2,
    output clk4,
    output clk8,
    output clk16
);
parameter DIV16=16;
reg [3:0]counter;
always @(posedge clk or posedge rst)begin
    if(rst)begin
        counter=4'b0;
    end
    else begin
        counter<=counter+1'b1;
    end
end
assign clk2=counter[0];
assign clk4=counter[1];
assign clk8=counter[2];
assign clk16=counter[3];
endmodule // clkDivider