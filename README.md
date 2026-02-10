# Single-Stage-Pipeline
Single-Stage Pipeline (Non-Pipelined Processor)  A Single-Stage Pipeline is a processor architecture in which each instruction completes all phases of execution within a single clock cycle. The instruction goes through fetch, decode, execute, memory access, and write-back sequentially, without any overlap with other instructions.
Key Features

Executes one instruction per clock cycle

No instruction overlap or parallelism

Clock cycle determined by the slowest operation

Simple datapath and control logic

Working Principle

Only one instruction is present in the processor at any given time. The next instruction begins execution only after the current instruction fully completes all stages.

Advantages

Simple design and easy to implement

Useful for understanding basic processor operation

Minimal control complexity

Limitations

Low throughput

Inefficient use of hardware resources

Not suitable for high-performance systems

Use Cases

Educational processor designs

Introductory CPU architecture projects

Baseline reference for pipelined processor comparison
