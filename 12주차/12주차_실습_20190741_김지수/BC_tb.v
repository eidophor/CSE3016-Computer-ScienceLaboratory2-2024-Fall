`timescale 1ns / 1ps

module BC_tb;
reg clk, reset;
wire [2:1] out;

BC u_test (
    .clk (clk), .reset (reset), 
    .out (out)
);

initial begin
    reset = 1'b0;
    clk = 1'b1;
end

always @(reset or clk) begin
    reset <= #80 ~reset;
    clk <= #5 ~clk;
end

initial begin 
    #400
    $finish;
end

endmodule
