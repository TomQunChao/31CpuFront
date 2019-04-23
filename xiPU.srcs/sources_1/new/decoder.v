`timescale 1ns / 1ps

module decoder(
    input [31:0]cmd,

    output [4:0]rc1,
    output [4:0]rc2,
    output [4:0]rc3,

    output [30:0]icode //instruction
    );
    assign rc1=cmd[25:21];
    assign rc2=cmd[20:16];
    assign rc3=cmd[15:11];
    
    //add
    assign   icode[0]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&~cmd[1]&~cmd[0];
    //addu
    assign   icode[1]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&~cmd[1]&cmd[0];
    //sub
    assign   icode[2]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&cmd[1]&~cmd[0];
    //subu
    assign   icode[3]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&cmd[1]&cmd[0];
    //and
    assign   icode[4]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&~cmd[1]&~cmd[0];
    //or
    assign   icode[5]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&~cmd[1]&cmd[0];
    //xor
    assign   icode[6]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&cmd[1]&~cmd[0];
    //nor
    assign   icode[7]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&cmd[1]&cmd[0];
    //slt
    assign   icode[8]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&cmd[3]&~cmd[2]&cmd[1]&~cmd[0];
    //sltu
    assign   icode[9]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&cmd[5]&~cmd[4]&cmd[3]&~cmd[2]&cmd[1]&cmd[0];
    
    //sll
    assign   icode[10]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&~cmd[1]&~cmd[0];
    //srl
    assign   icode[11]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&cmd[1]&~cmd[0];
    //sra
    assign   icode[12]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&~cmd[2]&cmd[1]&cmd[0];
    
    //sllv
    assign   icode[13]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&~cmd[1]&~cmd[0];
    //srlv
    assign   icode[14]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&cmd[1]&~cmd[0];
    //srav
    assign   icode[15]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&~cmd[3]&cmd[2]&cmd[1]&cmd[0];
    
    //jr
    assign   icode[16]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&~cmd[27]&~cmd[26]&~cmd[5]&~cmd[4]&cmd[3]&~cmd[2]&~cmd[1]&~cmd[0];
    
    //addi
    assign   icode[17]=~cmd[31]&~cmd[30]&cmd[29]&~cmd[28]&~cmd[27]&~cmd[26];
    //addiu
    assign   icode[18]=~cmd[31]&~cmd[30]&cmd[29]&~cmd[28]&~cmd[27]&cmd[26];
    //andi
    assign   icode[19]=~cmd[31]&~cmd[30]&cmd[29]&cmd[28]&~cmd[27]&~cmd[26];
    //ori
    assign   icode[20]=~cmd[31]&~cmd[30]&cmd[29]&cmd[28]&~cmd[27]&cmd[26];
    //xori
    assign   icode[21]=~cmd[31]&~cmd[30]&cmd[29]&cmd[28]&cmd[27]&~cmd[26];
    
    //lw
    assign   icode[22]=cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&cmd[27]&cmd[26];
    //sw
    assign   icode[23]=cmd[31]&~cmd[30]&cmd[29]&~cmd[28]&cmd[27]&cmd[26];
    //beq
    assign   icode[24]=~cmd[31]&~cmd[30]&~cmd[29]&cmd[28]&~cmd[27]&~cmd[26];
    //bne
    assign   icode[25]=~cmd[31]&~cmd[30]&~cmd[29]&cmd[28]&~cmd[27]&cmd[26];
    //slti
    assign   icode[26]=~cmd[31]&~cmd[30]&cmd[29]&~cmd[28]&cmd[27]&~cmd[26];
    //sltiu
    assign   icode[27]=~cmd[31]&~cmd[30]&cmd[29]&~cmd[28]&cmd[27]&cmd[26];
    //lui
    assign   icode[28]=~cmd[31]&~cmd[30]&cmd[29]&cmd[28]&cmd[27]&cmd[26];
    
    //j
    assign   icode[29]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&cmd[27]&~cmd[26];
    //jal
    assign   icode[30]=~cmd[31]&~cmd[30]&~cmd[29]&~cmd[28]&cmd[27]&cmd[26];
//parameter ADD=32'b000000xxxxxxxxxxxxxxx00000100000;
//parameter ADDU=32'b000000xxxxxxxxxxxxxxx00000100001;
//parameter SUB=32'b000000xxxxxxxxxxxxxxx00000100010;
//parameter SUBU=32'b000000xxxxxxxxxxxxxxx00000100011;
//parameter AND=32'b000000xxxxxxxxxxxxxxx00000100100;
//parameter OR=32'b000000xxxxxxxxxxxxxxx00000100101;
//parameter XOR=32'b000000xxxxxxxxxxxxxxx00000100110;
//parameter NOR=32'b000000xxxxxxxxxxxxxxx00000100111;
//parameter SLT=32'b000000xxxxxxxxxxxxxxx00000101010;
//parameter SLTU=32'b000000xxxxxxxxxxxxxxx00000101011;
//parameter SLLV=32'b000000xxxxxxxxxxxxxxx00000000100;
//parameter SRLV=32'b000000xxxxxxxxxxxxxxx00000000110;
//parameter SRAV=32'b000000xxxxxxxxxxxxxxx00000000111;
////With Immediate
//parameter ADDI=32'b001000xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter ADDIU=32'b001001xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter ANDI=32'b001100xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter ORI=32'b001101xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter XORI=32'b001110xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter SLTI=32'b001010xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter SLTIU=32'b001011xxxxxxxxxxxxxxxxxxxxxxxxxx;

//parameter LW=32'b100011xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter SW=32'b101011xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter BEQ=32'b000100xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter BNE=32'b000101xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter LUI=32'b001111xxxxxxxxxxxxxxxxxxxxxxxxxx;//¼ÓÔØ16Î»Á¢¼´Êýµ½×î¸ßÎ»

//parameter SLL=32'b00000000000xxxxxxxxxxxxxxx000000;
//parameter SRL=32'b00000000000xxxxxxxxxxxxxxx000010;
//parameter SRA=32'b00000000000xxxxxxxxxxxxxxx000011;

////Jump
//parameter J=32'b000010xxxxxxxxxxxxxxxxxxxxxxxxxx;
//parameter JAL=32'b000011xxxxxxxxxxxxxxxxxxxxxxxxxx; //ÓÐ·µ»ØÌø×ª?
//parameter JR=32'b000000xxxxx0000000000xxxxx001000;

//parameter FUNC_V_ADD=4'h2;
//parameter FUNC_V_ADDU=4'h0;
//parameter FUNC_V_SUBU=4'h1;
//parameter FUNC_V_SUB=4'h3;
//parameter FUNC_V_AND=4'h4;
//parameter FUNC_V_OR=4'h5;
//parameter FUNC_V_XOR=4'h6;
//parameter FUNC_V_NOR=4'h7;
//parameter FUNC_V_LLO=4'b100x;//È¡ï¿½ï¿½16Î»?
//parameter FUNC_V_SLT=4'b1010;//ï¿½Ð·ï¿½ï¿½ï¿½a<b?
//parameter FUNC_V_SLTU=4'b1011;//ï¿½Þ·ï¿½ï¿½ï¿½a<b?
//parameter FUNC_V_SRA=4'b1100;
//parameter FUNC_V_SLL=4'b111x;
//parameter FUNC_V_SRL=4'b1101;


//    always @(posedge clk or posedge reset)
//    begin
//        if(reset) begin
//            mux1<=3'b1;
//            mux2<=0;
//            mux3<=0;
//        end
//        else begin
//            //close all ports
//            mux1<=3'b1;
//            mux2<=0;
//            mux3<=0;
//            adder1<=0;
//            dataW<=0;
//            regW<=0;
            
//                    casex(cmd)
//                        ADD:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_ADD;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        ADDU:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_ADDU;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SUB:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SUB;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SUBU:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SUBU;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        AND:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_AND;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        OR:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_OR;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        XOR:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_XOR;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        NOR:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_NOR;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SLT:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SLT;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SLTU:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SLTU;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SLLV:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SLL;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SRLV:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SRL;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end
//                        SRAV:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h1;
//                            aluc=FUNC_V_SRA;
//                            mux3=3'h4;
//                            regW=1;
//                            mux1=3'h01;
//                        end

//                        ADDI:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_ADD;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        ADDIU:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_ADDU;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        ANDI:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_AND;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        ORI:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_OR;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        XORI:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_XOR;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        SLTI:begin
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_SLT;
//                            regW=1;
//                            mux1=3'h1;
//                        end
//                        SLTIU:begin 
//                            oData={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            aluc=FUNC_V_SLTU;
//                            regW=1;
//                            mux1=3'h1;
//                        end

//                        LW:begin
//                            if(cmd[15])oData<={16'b1,cmd[15:0]};
//                            else oData<={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rdc=cmd[20:16];
//                            mux3=3'h2;
//                            mux2=3'h2;
//                            aluc=FUNC_V_ADD;
//                            regW=1;
//                        end
//                        SW:begin
//                            if(cmd[15])oData<={16'b1,cmd[15:0]};
//                            else oData<={16'b0,cmd[15:0]};
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            mux2=3'h2;
//                            mux3=3'h0;
//                            aluc=FUNC_V_ADD;
//                            dataW=1;
//                        end
//                        BEQ:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            aluc=FUNC_V_SLT;
//                            oData={14'b0,cmd[15:0],2'b0};
//                            adder1=1;
//                            mux1=zero?3'h2:3'h3;
//                        end
//                        BNE:begin
//                            rsc=cmd[25:21];
//                            rtc=cmd[20:16];
//                            aluc=FUNC_V_SLT;
//                            oData={14'b0,cmd[15:0],2'b0};
//                            adder1=1;
//                            mux1=zero?3'h1:3'h3;
//                        end
//                        LUI:begin
//                            rdc=cmd[20:16];
//                            oData={cmd[15:0],16'b0};
//                            regW=1;
//                        end

//                        SLL:begin
//                            if(cmd[10])oData<={27'b1,cmd[10:6]};
//                            else oData<={27'b0,cmd[10:6]};
//                            aluc=FUNC_V_SLL;
//                            rsc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            regW=1;
//                        end
//                        SRL:begin
//                            if(cmd[10])oData<={26'b1,cmd[10:6]};
//                            else oData<={26'b0,cmd[10:6]};
//                            aluc=FUNC_V_SRL;
//                            rsc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            regW=1;
//                        end
//                        SRA:begin
//                            if(cmd[10])oData<={26'b1,cmd[10:6]};
//                            else oData<={26'b0,cmd[10:6]};
//                            aluc=FUNC_V_SRA;
//                            rsc=cmd[20:16];
//                            rdc=cmd[15:11];
//                            mux2=3'h2;
//                            mux3=3'h4;
//                            regW=1;
//                        end

//                        J:begin
//                            oData={4'b0,cmd[26:0],2'b0};
//                            mux1=3'h4;
//                        end
//                        JAL:begin
//                            oData={4'b0,cmd[26:0],2'b0};
//                            rdc=5'b11111;
//                            mux3=3'h3;
//                            mux1=3'h4;
//                        end
//                        JR:begin
//                            rdc=5'b11111;
//                            rsc=cmd[25:21];
//                            mux1=3'h2;
//                        end
//                    endcase
//            end
//        end
endmodule
