`timescale 1ns / 1ps
module pipeline_cpu(
    input clk,
    input rst
);

    // Instruction Memory (4 instructions)
    reg [7:0] instr_mem [3:0];
    reg [1:0] pc;

    // Register file (4 registers)
    reg [7:0] reg_file [3:0];

    // Pipeline Registers
    reg [7:0] IF_ID;
    reg [7:0] ID_EX;
    reg [7:0] EX_WB;

    reg [1:0] opcode;
    reg [1:0] rd, rs1, rs2;
    reg [7:0] alu_result;

    // Initialize instructions
    initial begin
        instr_mem[0] = 8'b00011001; // ADD R1 = R2 + R1
        instr_mem[1] = 8'b01011001; // SUB
        instr_mem[2] = 8'b10000010; // LOAD
        instr_mem[3] = 8'b00000000;

        reg_file[0] = 10;
        reg_file[1] = 5;
        reg_file[2] = 3;
        reg_file[3] = 2;

        pc = 0;
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst) begin
            pc <= 0;
        end
        else begin
            // IF Stage
            IF_ID <= instr_mem[pc];
            pc <= pc + 1;

            // ID Stage
            ID_EX <= IF_ID;
            opcode <= IF_ID[7:6];
            rd <= IF_ID[5:4];
            rs1 <= IF_ID[3:2];
            rs2 <= IF_ID[1:0];

            // EX Stage
            case(opcode)
                2'b00: alu_result <= reg_file[rs1] + reg_file[rs2];
                2'b01: alu_result <= reg_file[rs1] - reg_file[rs2];
                2'b10: alu_result <= 8'd20; // LOAD constant
            endcase

            EX_WB <= alu_result;

            // WB Stage
            reg_file[rd] <= EX_WB;
        end
    end

endmodule
