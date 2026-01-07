module cpu_top (
    input clk,
    input rst
);
    // Program Counter
    wire [31:0] pc;

    // Instruction
    wire [31:0] instr;

    // Instruction memory
    instr_mem IMEM (
        .addr(pc[11:2]),
        .instr(instr)
    );

    // IF stage
    if_stage IF (
        .clk(clk),
        .rst(rst),
        .instr(instr),
        .pc(pc)
    );

endmodule
