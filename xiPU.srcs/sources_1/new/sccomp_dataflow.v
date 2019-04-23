`timescale 1ns / 1ps

module sccomp_dataflow(
    input clk_in,
    input reset,
    //
    
    //
    output [31:0] inst,
    output [31:0] pc
    );
    /**/
    cpu sccpu(.clk_in(clk_in),
        .reset(reset),
        .pc(pc),
        .inst(inst));
endmodule
