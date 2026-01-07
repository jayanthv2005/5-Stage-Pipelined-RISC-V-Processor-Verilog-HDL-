 module top_tb;

    // Clock & Reset
    reg clk;
    reg rst;
    cpu_top dut (
        .clk(clk),
        .rst(rst)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #20;
        rst = 0;
    end

    initial begin
        // Instruction memory contents (hex)
        dut.IMEM.mem[0] = 32'h00500093; // addi x1, x0, 5
        dut.IMEM.mem[1] = 32'h00a00113; // addi x2, x0, 10
        dut.IMEM.mem[2] = 32'h002081b3; // add x3, x1, x2
        dut.IMEM.mem[3] = 32'h00302023; // sw x3, 0(x0)
        dut.IMEM.mem[4] = 32'h00002203; // lw x4, 0(x0)
        dut.IMEM.mem[5] = 32'h001202b3; // add x5, x4, x1
    end

 
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb);
    end

    initial begin
        #200;

        $display("====================================");
        $display(" Register File State ");
        $display("====================================");
        $display("x1 = %0d (Expected 5)",  dut.rf.regs[1]);
        $display("x2 = %0d (Expected 10)", dut.rf.regs[2]);
        $display("x3 = %0d (Expected 15)", dut.rf.regs[3]);
        $display("x4 = %0d (Expected 15)", dut.rf.regs[4]);
        $display("x5 = %0d (Expected 20)", dut.rf.regs[5]);

        if (dut.rf.regs[5] == 20)
            $display("✅ TEST PASSED: Pipeline, forwarding, and stall logic working");
        else
            $display("❌ TEST FAILED");

        $finish;
    end

endmodule
