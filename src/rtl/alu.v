module alu (
    input [31:0] a,
    input [31:0] b,
    input [3:0] alu_op,
    output reg [31:0] result
);

    always @(*) begin
        case (alu_op)
            4'b0000: result = a + b;
            4'b0001: result = a - b;
            4'b0010: result = a & b;
            4'b0011: result = a | b;
            default: result = 32'd0;
        endcase
    end

endmodule
