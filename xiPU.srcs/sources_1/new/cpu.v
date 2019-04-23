`timescale 1ns / 1ps

module  cpu(
    input clk_in,
    input reset,
    //
    output clk,
    output clk2,clk4,clk8,clk16,
    output [30:0]icode,
    output zero,
    output carry,
    output overflow,
    output neg,
    output [1:0]mux1Cho,
    output [1:0]mux2Cho,
    output mux3Cho,
    output [1:0]mux4Cho,
    output [1:0]mux5Cho,
    output regWe,
    output ramWe,
    output [3:0]aluc,
    
    output [31:0]mux1o,
    output [31:0]mux2o,
    output [31:0]mux3o,
    output [31:0]mux4o,
    output [4:0]mux5o,
    //
    output [31:0]pc,
    output [31:0]inst
    );
   
//    wire clk;
//    wire clk2,clk4,clk8,clk16;
//    wire [30:0]icode;
//    wire zero;
//    wire carry;
//    wire overflow;
//    wire neg;
//    wire [1:0]mux1Cho;
//    wire [1:0]mux2Cho;
//    wire mux3Cho;
//    wire [1:0]mux4Cho;
//    wire [1:0]mux5Cho;
//    wire regWe;
//    wire ramWe;
//    wire [3:0]aluc;
    
    wire [31:0]ext16;
    wire [31:0]sext16;
    wire [31:0]ext5;
    
    wire [31:0]dadd;
    wire [31:0]dmerge;
    
    wire [4:0]rc1;
    wire [4:0]rc2;
    wire [4:0]rc3;
    
    wire [31:0]npc;
    
    wire [31:0]rs;
    wire [31:0]rt;
    wire [31:0]dataTo;
    wire [31:0]aluTo;
    
//    wire [31:0]mux1o;
//    wire [31:0]mux2o;
//    wire [31:0]mux3o;
//    wire [31:0]mux4o;
//    wire [4:0]mux5o;
//    reg [31:0]ims[4096:0];
//    initial $readmemh("D:\\workspace\\mars\\code.hex",ims);
//    assign inst=ims[pc[31:2]-28'h100000];
    iram ims(pc[31:2]-28'h100000,inst);
    pclkDiv pcd(clk_in,reset,clk);
    npc np1(pc,npc);
    pc pc1(32'h00400000,mux1o,reset,clk,pc);
    
     control con1(icode,zero,clk,clk2,clk4,mux1Cho,mux2Cho,mux3Cho,mux4Cho,mux5Cho,regWe,ramWe,aluc);
     clkDivider cd1(clk,reset,clk2,clk4,clk8,clk16);
     
     alu alu1(mux3o,mux2o,aluc,aluTo,zero,carry,neg,overflow);
     
     decoder d1(inst,rc1,rc2,rc3,icode);
     
//     Regfiles re1();
     regfile  cpu_ref(clk,reset,regWe,rc1,rc2,mux5o,mux4o,rs,rt);
     ram ram1(clk,1'b1,ramWe,aluTo,rt,dataTo);
    
     extend e1(inst,ext5,ext16,sext16);
//     iram iram1();
     mux4 mux_1(npc,dadd,dmerge,rs,mux1Cho,mux1o);
     mux4 mux_2(rt,ext16,sext16,32'bz,mux2Cho,mux2o);
     mux2 mux_3(rs,ext5,mux3Cho,mux3o);
     mux4 mux_4(npc,dataTo,aluTo,32'bz,mux4Cho,mux4o);
     mux5bit mux_5(5'h1f,rc2,rc3,5'b0,mux5Cho,mux5o);
     
     pcPlusData ppd1(inst,pc,dadd,dmerge);
//     triState t1();
     
endmodule
