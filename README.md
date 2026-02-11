# Single Stage Pipeline – SystemVerilog

A simple single-stage pipeline design implemented in SystemVerilog, verified using a ready/valid handshake protocol.
## Features
- Single-stage pipeline architecture
- Ready/Valid handshake interface
- Parameterized data width
- SystemVerilog RTL design
- Functional verification via simulation
## Tool Flow

Design & verification performed using:

- Xilinx Vivado (RTL elaboration & simulation)
- XSIM Simulator
- EDA Playground (waveform debugging)

Workflow:
1. RTL design entry
2. Testbench development
3. Behavioral simulation
4. Waveform analysis
5. RTL schematic inspection
## Verification

Waveform analysis confirms:
- Correct reset behavior
- Valid/Ready handshake operation
- Data integrity across pipeline
