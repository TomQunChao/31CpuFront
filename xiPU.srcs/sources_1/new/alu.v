`timescale 1ns / 1ps
//`include "aluFunc.vh"

module alu(
    input [31:0]a,
    input [31:0]b,
    input [3:0]aluc,
    output reg [31:0]r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );

parameter FUNC_V_ADD=4'h2;
parameter FUNC_V_ADDU=4'h0;
parameter FUNC_V_SUBU=4'h1;
parameter FUNC_V_SUB=4'h3;
parameter FUNC_V_AND=4'h4;
parameter FUNC_V_OR=4'h5;
parameter FUNC_V_XOR=4'h6;
parameter FUNC_V_NOR=4'h7;
parameter FUNC_V_LUI=4'b100x;//load low 16 bits of B?
parameter FUNC_V_SLT=4'b1010;//a<b?
parameter FUNC_V_SLTU=4'b1011;//a<b?
parameter FUNC_V_SRA=4'b1100;
parameter FUNC_V_SLL=4'b111x;
parameter FUNC_V_SRL=4'b1101;

    always @(*)
    begin
        casex(aluc)
            FUNC_V_ADDU:
            begin
                r=a+b;
                negative<=r[31];
                if(a+b>32'hffff)carry<=1;
                else carry<=0;
                zero<=r==0;
             end
             FUNC_V_ADD:
             begin
                r=a+b;
                negative<=r[31];
                if(r[31]==1&&a[31]==0&&b[31]==0)overflow<=1;
                else overflow<=0;
                zero<=r[31];
             end
             FUNC_V_SUBU:
             begin
                r<=a-b;
                negative<=a<b;
                carry<=b>a;
                zero<=a==b;
             end
             FUNC_V_SUB:
             begin
                r<=a-b;
                negative<=a[31]^b[31];
                if(r[31]==0&&a[31]==1&&b[31]==0||r[31]==1&&a[31]==0&&b[31]==1)overflow<=1;
                else overflow<=0;
                negative<=a[31]&&~b[31]||a[31]==b[31]&&a<b;
                zero<=a==b;
             end
             FUNC_V_AND:
             begin
                r<=a&b;
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_OR:
             begin
                r<=a|b;
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_XOR:
             begin
                r<=a^b;
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_NOR://~(a|b)
             begin
                r<=~(a|b);
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_LUI://È¡bµÍ16Î»
             begin
                r<={b[15:0],16'b0};
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_SLT:
             begin
                if(a[31]==1&&b[31]==0||a[31]==b[31]&&a<b)r<=31'h0001;
                else r<=0;
                negative<=a[31]==1&&b[31]==0||a[31]==b[31]&&a<b;
                zero<=a==b;
             end
             FUNC_V_SLTU:
             begin
                r<=a<b;
                carry<=a<b;
                negative<=a<b;
                zero<=a==b;
             end
             FUNC_V_SRA:
             begin
                r<=$signed(b)>>>a;
                if(a<=32'h0020)carry<=b[a];
                else carry<=b[31];
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_SLL:
             begin
                r<=b<<a;
                if(a<=32'h0020)carry<=b[32-a];
                else carry<=0;
                negative<=r[31];
                zero<=r==0;
             end
             FUNC_V_SRL:
             begin
                r<=b>>a;
                if(a<=32'h0020)carry<=b[a];
                else carry<=0;
                negative<=r[31];
                zero<=r==0;
             end
        endcase
    end
endmodule
