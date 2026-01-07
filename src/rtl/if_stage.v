module if_stage (
    input clk,
    input rst,
    input [31:0] instr,
    output reg [31:0] pc
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            pc <= 32'd0;
        else
            pc <= pc + 4;
    end

endmodule
