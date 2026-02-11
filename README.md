![Schemetic View](https://github.com/user-attachments/assets/eb78373c-b610-4485-9838-fbbdb8b8a5a7)
<img width="1536" height="1024" alt="Architecture" src="https://github.com/user-attachments/assets/5e4cffa1-a1fa-42b0-9fea-3fa5ff055bb5" />
# Single Stage Pipeline – SystemVerilog

A simple single-stage pipeline design implemented in SystemVerilog, verified using a ready/valid handshake protocol.

# Design Details
Parameterized data width
Pipeline register-based buffering
Backpressure handling via out_ready
Valid/Ready protocol

# Handshake Logic
in_ready = (~valid_reg) || out_ready
out_valid = valid_reg
out_data  = data_reg

# Verification
Functional simulation performed using:
Xilinx Vivado (RTL simulation)
XSIM
EDA Playground

