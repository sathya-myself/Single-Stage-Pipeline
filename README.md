

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

