`timescale 1ns / 1ps

module regfile(
    input clk,
    input rst,
    input we,
    
    input [4:0]raddr1,
    input [4:0]raddr2,
    input [4:0]waddr,
    input [31:0]wdata,
    output [31:0]rdata1,
    output [31:0]rdata2
    );
//    integer fileOut;
//    initial
//    fileOut=$fopen("D:\\result.txt");
    reg [31:0]array_reg[31:0];
    always @(negedge clk or posedge rst)begin
        if(rst)begin
            array_reg[0]<=0;
            array_reg[1]<=0;
            array_reg[2]<=0;
            array_reg[3]<=0;
            array_reg[4]<=0;
            array_reg[5]<=0;
            array_reg[6]<=0;
            array_reg[7]<=0;
            array_reg[8]<=0;
            array_reg[9]<=0;
            array_reg[10]<=0;
            array_reg[11]<=0;
            array_reg[12]<=0;
            array_reg[13]<=0;
            array_reg[14]<=0;
            array_reg[15]<=0;
            array_reg[16]<=0;
            array_reg[17]<=0;
            array_reg[18]<=0;
            array_reg[19]<=0;
            array_reg[20]<=0;
            array_reg[21]<=0;
            array_reg[22]<=0;
            array_reg[23]<=0;
            array_reg[24]<=0;
            array_reg[25]<=0;
            array_reg[26]<=0;
            array_reg[27]<=0;
            array_reg[28]<=0;
            array_reg[29]<=0;
            array_reg[30]<=0;
            array_reg[31]<=0;
        end
        else begin
            if(we)begin 
                if(waddr==0)array_reg[0]<=0;
                else array_reg[waddr]<=wdata;
            end
        end
//$fdisplay(fileOut,"pc: %h",cAddr);
//$fdisplay(fileOut,"instr: %h",cmd);
//$fdisplay(fileOut,"regfile0: %h",array_reg[0]);
//$fdisplay(fileOut,"regfile1: %h",array_reg[1]);
//$fdisplay(fileOut,"regfile2: %h",array_reg[2]);
//$fdisplay(fileOut,"regfile3: %h",array_reg[3]);
//$fdisplay(fileOut,"regfile4: %h",array_reg[4]);
//$fdisplay(fileOut,"regfile5: %h",cpu_tb.b1.r1.array_reg[5]);
//$fdisplay(fileOut,"regfile6: %h",cpu_tb.b1.r1.array_reg[6]);
//$fdisplay(fileOut,"regfile7: %h",cpu_tb.b1.r1.array_reg[7]);
//$fdisplay(fileOut,"regfile8: %h",cpu_tb.b1.r1.array_reg[8]);
//$fdisplay(fileOut,"regfile9: %h",cpu_tb.b1.r1.array_reg[9]);
//$fdisplay(fileOut,"regfile10: %h",cpu_tb.b1.r1.array_reg[10]);
//$fdisplay(fileOut,"regfile11: %h",cpu_tb.b1.r1.array_reg[11]);
//$fdisplay(fileOut,"regfile12: %h",cpu_tb.b1.r1.array_reg[12]);
//$fdisplay(fileOut,"regfile13: %h",cpu_tb.b1.r1.array_reg[13]);
//$fdisplay(fileOut,"regfile14: %h",cpu_tb.b1.r1.array_reg[14]);
//$fdisplay(fileOut,"regfile15: %h",cpu_tb.b1.r1.array_reg[15]);
//$fdisplay(fileOut,"regfile16: %h",cpu_tb.b1.r1.array_reg[16]);
//$fdisplay(fileOut,"regfile17: %h",cpu_tb.b1.r1.array_reg[17]);
//$fdisplay(fileOut,"regfile18: %h",cpu_tb.b1.r1.array_reg[18]);
//$fdisplay(fileOut,"regfile19: %h",cpu_tb.b1.r1.array_reg[19]);
//$fdisplay(fileOut,"regfile20: %h",cpu_tb.b1.r1.array_reg[20]);
//$fdisplay(fileOut,"regfile21: %h",cpu_tb.b1.r1.array_reg[21]);
//$fdisplay(fileOut,"regfile22: %h",cpu_tb.b1.r1.array_reg[22]);
//$fdisplay(fileOut,"regfile23: %h",cpu_tb.b1.r1.array_reg[23]);
//$fdisplay(fileOut,"regfile24: %h",cpu_tb.b1.r1.array_reg[24]);
//$fdisplay(fileOut,"regfile25: %h",cpu_tb.b1.r1.array_reg[25]);
//$fdisplay(fileOut,"regfile26: %h",cpu_tb.b1.r1.array_reg[26]);
//$fdisplay(fileOut,"regfile27: %h",cpu_tb.b1.r1.array_reg[27]);
//$fdisplay(fileOut,"regfile28: %h",cpu_tb.b1.r1.array_reg[28]);
//$fdisplay(fileOut,"regfile29: %h",cpu_tb.b1.r1.array_reg[29]);
//$fdisplay(fileOut,"regfile30: %h",cpu_tb.b1.r1.array_reg[30]);
//$fdisplay(fileOut,"regfile31: %h",cpu_tb.b1.r1.array_reg[31]);
//$fdisplay(fileOut);
    end
    assign rdata1=array_reg[raddr1];
    assign rdata2=array_reg[raddr2];
endmodule
