`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2026 19:11:09
// Design Name: 
// Module Name: tb_single_stage_pipeline
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_single_stage_pipeline;
parameter data_width = 8;

    logic clk;
    logic rst_n;

    logic in_valid;
    logic [data_width:0] in_data;
    logic in_ready;

    logic out_ready;
    logic out_valid;
    logic [data_width-1:0] out_data;

    // DUT instantiation
    single_stage_pipeline #(
        .data_width(data_width)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .in_valid(in_valid),
        .in_data(in_data),
        .in_ready(in_ready),
        .out_ready(out_ready),
        .out_valid(out_valid),
        .out_data(out_data)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk       = 0;
        rst_n     = 0;
        in_valid  = 0;
        in_data   = 0;
        out_ready = 0;

        // -----------------------------
        // 1️⃣ Apply reset
        // -----------------------------
        #10;
        rst_n = 1;

        // -----------------------------
        // 2️⃣ Send one data
        // -----------------------------
        @(posedge clk);
        in_valid = 1;
        in_data  = 8'hA5;
        out_ready = 1;

        @(posedge clk);
        in_valid = 0;

        // -----------------------------
        // 3️⃣ Stall output
        // -----------------------------
        @(posedge clk);
        out_ready = 0;

        // -----------------------------
        // 4️⃣ Resume output
        // -----------------------------
        @(posedge clk);
        out_ready = 1;

        // Finish
        #200;
        $finish;
    end

endmodule


    

