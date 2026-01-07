module forwarding (
    input mem_reg_write,
    input wb_reg_write,
    input [4:0] mem_rd,
    input [4:0] wb_rd,
    input [4:0] ex_rs1,
    input [4:0] ex_rs2,
    output reg [1:0] forward_a,
    output reg [1:0] forward_b
);

    always @(*) begin
        forward_a = 2'b00;
        forward_b = 2'b00;

        if (mem_reg_write && mem_rd == ex_rs1)
            forward_a = 2'b10;
        if (wb_reg_write && wb_rd == ex_rs1)
            forward_a = 2'b01;

        if (mem_reg_write && mem_rd == ex_rs2)
            forward_b = 2'b10;
        if (wb_reg_write && wb_rd == ex_rs2)
            forward_b = 2'b01;
    end

endmodule
