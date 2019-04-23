`timescale 1ns / 1ps

module cpu_tb;
wire [31:0]pc;
reg clk,rst;
wire [31:0]cmd;
wire oclk;
//    wire clk;
    wire clk2,clk4,clk8,clk16;
    wire [30:0]icode;
    wire zero;
    wire carry;
    wire overflow;
    wire neg;
    wire [1:0]mux1Cho;
    wire [1:0]mux2Cho;
    wire mux3Cho;
    wire [1:0]mux4Cho;
    wire [1:0]mux5Cho;
    wire regWe;
    wire ramWe;
    wire [3:0]aluc;
    wire [31:0]mux1o;
    wire [31:0]mux2o;
    wire [31:0]mux3o;
    wire [31:0]mux4o;
    wire [4:0]mux5o;
cpu sccpu(clk,rst,oclk,clk2,clk4,clk8,clk16,icode,zero,carry,
    overflow,neg,mux1Cho,mux2Cho,mux3Cho,mux4Cho,mux5Cho,regWe,ramWe,aluc,
    mux1o,mux2o,mux3o,mux4o,mux5o,
    pc,cmd);

//sccomp_dataflow  s1(clk,rst,cmd,pc);

//assign oclk=s1.sccpu.clk;
//assign regWe=s1.sccpu.cpu_ref.we;
//assign regclk=s1.sccpu.cpu_ref.clk;
//assign regW=s1.sccpu.cpu_ref.wdata;
//assign regwaddr=s1.sccpu.cpu_ref.waddr;
//assign reg1=s1.sccpu.cpu_ref.array_reg[1];

//integer fileOut;
//integer refeFile;
initial begin
//fileOut=$fopen("D:\\result.txt");
//refeFile=$fopen("D:\\workspace\\mars\\refe.txt");
clk=0;
rst=1;
#1;
rst=0;
end
always #1 clk=~clk;
//always @(posedge clk)begin
//$fdisplay(fileOut,"pc: %h",pc);
//$fdisplay(fileOut,"instr: %h",cmd);
//$fdisplay(fileOut,"regfile0: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[0]);
//$fdisplay(fileOut,"regfile1: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[1]);
//$fdisplay(fileOut,"regfile2: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[2]);
//$fdisplay(fileOut,"regfile3: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[3]);
//$fdisplay(fileOut,"regfile4: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[4]);
//$fdisplay(fileOut,"regfile5: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[5]);
//$fdisplay(fileOut,"regfile6: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[6]);
//$fdisplay(fileOut,"regfile7: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[7]);
//$fdisplay(fileOut,"regfile8: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[8]);
//$fdisplay(fileOut,"regfile9: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[9]);
//$fdisplay(fileOut,"regfile10: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[10]);
//$fdisplay(fileOut,"regfile11: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[11]);
//$fdisplay(fileOut,"regfile12: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[12]);
//$fdisplay(fileOut,"regfile13: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[13]);
//$fdisplay(fileOut,"regfile14: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[14]);
//$fdisplay(fileOut,"regfile15: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[15]);
//$fdisplay(fileOut,"regfile16: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[16]);
//$fdisplay(fileOut,"regfile17: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[17]);
//$fdisplay(fileOut,"regfile18: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[18]);
//$fdisplay(fileOut,"regfile19: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[19]);
//$fdisplay(fileOut,"regfile20: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[20]);
//$fdisplay(fileOut,"regfile21: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[21]);
//$fdisplay(fileOut,"regfile22: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[22]);
//$fdisplay(fileOut,"regfile23: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[23]);
//$fdisplay(fileOut,"regfile24: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[24]);
//$fdisplay(fileOut,"regfile25: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[25]);
//$fdisplay(fileOut,"regfile26: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[26]);
//$fdisplay(fileOut,"regfile27: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[27]);
//$fdisplay(fileOut,"regfile28: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[28]);
//$fdisplay(fileOut,"regfile29: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[29]);
//$fdisplay(fileOut,"regfile30: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[30]);
//$fdisplay(fileOut,"regfile31: %h",cpu_tb.s1.sccpu.cpu_ref.array_reg[31]);
////$fdisplay(fileOut);
//$fdisplay(refeFile,"pc: %h",pc);
//$fdisplay(refeFile,"regWe: %h",cpu_tb.s1.sccpu.regWe);
//$fdisplay(refeFile,"icode: %h",cpu_tb.s1.sccpu.icode);
//$fdisplay(refeFile,"mux1o: %h",cpu_tb.s1.sccpu.mux1o);
//$fdisplay(refeFile,"mux2o: %h",cpu_tb.s1.sccpu.mux2o);
//$fdisplay(refeFile,"mux3o: %h",cpu_tb.s1.sccpu.mux3o);
//$fdisplay(refeFile,"mux4o: %h",cpu_tb.s1.sccpu.mux4o);
//$fdisplay(refeFile,"mux5o: %h",cpu_tb.s1.sccpu.mux5o);
//$fdisplay(refeFile,"mux1Cho: %h",cpu_tb.s1.sccpu.mux1Cho);
//$fdisplay(refeFile,"mux2Cho: %h",cpu_tb.s1.sccpu.mux2Cho);
//$fdisplay(refeFile,"mux3Cho: %h",cpu_tb.s1.sccpu.mux3Cho);
//$fdisplay(refeFile,"mux4Cho: %h",cpu_tb.s1.sccpu.mux4Cho);
//$fdisplay(refeFile,"mux5Cho: %h",cpu_tb.s1.sccpu.mux5Cho);
//end
endmodule
