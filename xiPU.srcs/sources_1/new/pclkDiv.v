`timescale 1ns / 1ps

module pclkDiv(
    input pclk,
    input rst,
    output clk
    );
    reg [3:0]counter;
    always @ (posedge pclk or posedge rst)begin
        if(rst)begin 
            counter<=0;
        end
        else begin
            counter<=counter+1'b1;
        end
    end
    assign clk=counter[0];
endmodule
