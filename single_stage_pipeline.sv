`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2026 18:51:29
// Design Name: 
// Module Name: single_stage_pipeline
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


module single_stage_pipeline #(
parameter data_width = 8
)(
    input  logic                  clk,
    input  logic                  rst_n,

    input  logic                  in_valid,
    input  logic [data_width-1:0] in_data,
    output logic                  in_ready,

    input  logic                  out_ready,
    output logic                  out_valid,
    output logic [data_width-1:0] out_data,


    logic                  valid_reg,
    logic [data_width-1:0] data_reg
);
    // Sequential logic
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            valid_reg <= 1'b0;
            data_reg  <= '0;
        end
        else begin
            // Case 1: New data accepted
            if (in_valid && in_ready) begin
                valid_reg <= 1'b1;
                data_reg  <= in_data;
            end
            // Case 2: Data leaves with no replacement
            else if (valid_reg && out_ready && !in_valid) begin
                valid_reg <= 1'b0;
            end
            // Case 3: Hold state (STALL or NO ACTIVITY)
            // No assignment here → registers hold value
        end
    end

    // Combinational logic
    assign out_valid = valid_reg;
    assign out_data  = data_reg;
    assign in_ready  = (~valid_reg) || out_ready;

endmodule

