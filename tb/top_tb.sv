`timescale 1ns/1ps

module top_tb;

    reg clk = 0;
    reg rst = 1;

    always #5 clk = ~clk;

    cpu_top dut (.clk(clk), .rst(rst));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb);

        #20 rst = 0;
        #500 $finish;
    end

endmodule
