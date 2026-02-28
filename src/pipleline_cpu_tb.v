`timescale 1ns / 1ps

module pipeline_cpu_tb;

    reg clk;
    reg rst;

    pipeline_cpu uut (
        .clk(clk),
        .rst(rst)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
