module RISC_CPU (
    input clk,
    input rst
);
    reg [3:0] regfile [0:1];  
    reg [3:0] pc;            
    reg [7:0] instr_mem [0:15];  
    
    wire [3:0] opcode, op1, op2, imm;
    wire [3:0] result;
    

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc <= 0;
            regfile[0] <= 0;
            regfile[1] <= 0;
        end else begin
            case (opcode)
                4'b0000: regfile[0] <= regfile[0] + regfile[1]; // ADD
                4'b0001: regfile[0] <= regfile[0] - regfile[1]; // SUB
                4'b0010: regfile[0] <= regfile[0] & regfile[1]; // AND
                4'b0011: regfile[0] <= regfile[0] | regfile[1]; // OR
                4'b0100: regfile[op1] <= imm; // LOAD
                4'b0110: pc <= imm; // JUMP
                4'b0111: $finish; // HALT
                default: pc <= pc + 1;
            endcase
        end
    end

    assign opcode = instr_mem[pc][7:4];
    assign op1 = instr_mem[pc][3:2];
    assign op2 = instr_mem[pc][1:0];
    assign imm = instr_mem[pc][3:0];

endmodule
