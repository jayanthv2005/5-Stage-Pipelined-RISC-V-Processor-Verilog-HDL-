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

 Verification:
- SystemVerilog testbench
- Simulated using Icarus Verilog
- Waveforms using GTKWave
- GitHub Actions CI for regression testing
  
Directory Structure:
src/rtl → RTL modules
tb → Testbench
sim → Simulation scripts
docs → Architecture documentation

#Architecture Diagrams

# Overall Processor Block Diagram:
![5-Stage RISC-V Block Diagram](docs/RISC%20architecture.jpeg)


# Pipeline Stages (IF–ID–EX–MEM–WB):
![Pipeline Stages](docs/Pipeline%20Stages.jpeg)

# Forwarding & Hazard Detection Unit:
![Forwarding and Hazard Unit](docs/Hazard%20Unit.jpeg)
