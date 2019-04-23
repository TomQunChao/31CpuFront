`timescale 1ns / 1ps

module control(
    input [30:0]icode,
    input zero,
    input clk,
    input clk2,
    input clk4,
    
    output [1:0]mux1,
    output [1:0]mux2,
    output mux3,
    output [1:0]mux4,
    output [1:0]mux5,
    output regWe,
    output ramWe,
    
    output [3:0]aluc
    );
    
    assign ramWe=icode[23];
//    assign regWe=1'b1;
     assign regWe=icode[29]|icode[23]|icode[24]|icode[25]|icode[16]?1'b0:1'b1;
//    assign regWe=icode[29]|icode[23]|icode[24]|icode[25]|icode[16]?1'b0:(icode[30]?1'b1:/*clk2*/1'b1);
//    assign regWe=icode[0]|icode[1]|icode[2]|icode[3]|icode[4]|
//        icode[5]|icode[6]|icode[7]|icode[8]|icode[9]|icode[10]|
//        icode[11]|icode[12]|icode[13]|icode[14]|icode[15]|icode[19]|icode[20]|icode[21]|
//        icode[17]|icode[18]|icode[26]|icode[27]|icode[22]|icode[30]|icode[28];
    assign aluc[0]=icode[3]|icode[2]|icode[5]|icode[20]|icode[7]|icode[9]|
        icode[27]|icode[11]|icode[14]|icode[24]|icode[25];
        
    assign aluc[1]=icode[0]|icode[17]|icode[22]|icode[23]|icode[2]|icode[6]|icode[21]|
        icode[7]|icode[8]|icode[26]|icode[9]|icode[24]|icode[25]|
        icode[27]|icode[10]|icode[13];

    assign aluc[2]=icode[4]|icode[19]|icode[5]|icode[20]|icode[6]|icode[21]|icode[7]|
        icode[12]|icode[15]|icode[10]|icode[13]|icode[11]|icode[14];

    assign aluc[3]=icode[28]|icode[8]|icode[26]|icode[9]|icode[27]|icode[12]|icode[15]|
        icode[10]|icode[13]|icode[11]|icode[14];

    assign mux1[0]=(icode[24]&zero)|(icode[25]&~zero)|icode[16];
    assign mux1[1]=icode[29]|icode[30]|icode[16];
    
    assign mux2[0]=icode[19]|icode[20]|icode[21];
    assign mux2[1]=icode[17]|icode[18]|icode[26]|icode[27]|icode[28]|icode[22]|icode[23];
    
    assign mux3=icode[10]|icode[11]|icode[12];
    
    assign mux4[0]=icode[22];
    assign mux4[1]=icode[0]|icode[1]|icode[2]|icode[3]|icode[4]|
        icode[5]|icode[6]|icode[7]|icode[8]|icode[9]|icode[10]|
        icode[11]|icode[12]|icode[13]|icode[14]|icode[15]|
        icode[17]|icode[18]|icode[19]|icode[20]|icode[21]|
        icode[26]|icode[27]|icode[28];

    assign mux5[0] = icode[17]|icode[18]|icode[19]|icode[20]|icode[21]|icode[22]|
        icode[23]|icode[24]|icode[25]|icode[29]|icode[16]|icode[28]|icode[27]
        |icode[26];
    
    assign mux5[1]=icode[10]|icode[11]|icode[12]|icode[0]|icode[1]|icode[2]|icode[3]|
        icode[4]|icode[5]|icode[6]|icode[7]|icode[8]|icode[9]|icode[13]|icode[14]|icode[15]|
        icode[16]|icode[23]|icode[29]|icode[24]|icode[25];

    
endmodule
