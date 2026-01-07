module instr_mem (
    input [9:0] addr,
    output reg [31:0] instr
);

    reg [31:0] mem [0:1023];

    initial begin
        $readmemh("instr_mem.hex", mem);
    end

    always @(*) begin
        instr = mem[addr];
    end

endmodule
