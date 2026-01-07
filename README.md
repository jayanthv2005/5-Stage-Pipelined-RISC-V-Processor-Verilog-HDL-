#5-Stage Pipelined RV32I RISC-V Processor

A synthesizable **5-stage pipelined RISC-V processor** implemented in **Verilog HDL**, demonstrating core concepts of **computer architecture, pipelining, and hazard handling**.

Overview:
- ISA: RISC-V RV32I
- Pipeline: IF → ID → EX → MEM → WB
- Data hazard resolution using forwarding
- Load-use hazard handled using pipeline stalling
- Control hazards handled using pipeline flush

Pipeline Stages:
| Stage | Description |
|-----|------------|
| IF | Instruction Fetch |
| ID | Decode & Register Read |
| EX | ALU Execution |
| MEM | Data Memory Access |
| WB | Write Back |

 Verification
- SystemVerilog testbench
- Simulated using Icarus Verilog
- Waveforms using GTKWave
- GitHub Actions CI for regression testing

