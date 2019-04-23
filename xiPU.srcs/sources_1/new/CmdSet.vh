//Arithmetic
`define CmdSet.vh
parameter ADD=32'b000000xxxxxxxxxxxxxxx00000100000;
parameter ADDU=32'b000000xxxxxxxxxxxxxxx00000100001;
parameter SUB=32'b000000xxxxxxxxxxxxxxx00000100010;
parameter SUBU=32'b000000xxxxxxxxxxxxxxx00000100011;
parameter AND=32'b000000xxxxxxxxxxxxxxx00000100100;
parameter OR=32'b000000xxxxxxxxxxxxxxx00000100101;
parameter XOR=32'b000000xxxxxxxxxxxxxxx00000100110;
parameter NOR=32'b000000xxxxxxxxxxxxxxx00000100111;
parameter SLT=32'b000000xxxxxxxxxxxxxxx00000101010;
parameter SLTU=32'b000000xxxxxxxxxxxxxxx00000101011;
parameter SLLV=32'b000000xxxxxxxxxxxxxxx00000000100;
parameter SRLV=32'b000000xxxxxxxxxxxxxxx00000000110;
parameter SRAV=32'b000000xxxxxxxxxxxxxxx00000000111;
//With Immediate
parameter ADDI=32'b001000xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter ADDIU=32'b001001xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter ANDI=32'b001100xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter ORI=32'b001101xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter XORI=32'b001110xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter SLTI=32'b001010xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter SLTIU=32'b001011xxxxxxxxxxxxxxxxxxxxxxxxxx;

parameter LW=32'b100011xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter SW=32'b101011xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter BEQ=32'b000100xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter BNE=32'b000101xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter LUI=32'b001111xxxxxxxxxxxxxxxxxxxxxxxxxx;//加载16位立即数到最高位

parameter SLL=32'b00000000000xxxxxxxxxxxxxxx000000;
parameter SRL=32'b00000000000xxxxxxxxxxxxxxx000010;
parameter SRA=32'b00000000000xxxxxxxxxxxxxxx000011;

//Jump
parameter J=32'b000010xxxxxxxxxxxxxxxxxxxxxxxxxx;
parameter JAL=32'b000011xxxxxxxxxxxxxxxxxxxxxxxxxx; //有返回跳转?
parameter JR=32'b000000xxxxx0000000000xxxxx001000;
