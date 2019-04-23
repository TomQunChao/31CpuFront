//`ifndef
//`define "aluFunc.vh"
`define FUNC_V_ADD 4'h2
`define FUNC_V_ADDU 4'h0
`define FUNC_V_SUBU 4'h1
`define FUNC_V_SUB 4'h3
`define FUNC_V_AND 4'h4
`define FUNC_V_OR 4'h5
`define FUNC_V_XOR 4'h6
`define FUNC_V_NOR 4'h7
`define FUNC_V_LLO 4'b100x//取低16位?
`define FUNC_V_SLT 4'b1010//有符号a<b?
`define FUNC_V_SLTU 4'b1011//无符号a<b?
`define FUNC_V_SRA 4'b1100
`define FUNC_V_SLL 4'b111x
`define FUNC_V_SRL 4'b1101
//`endif