`timescale 1ns / 1ps

module DC2421(
    input clk, reset,
    output reg [4:1] out
    );
    
always @(posedge clk) begin
    if (!reset)
        out <= 4'b0000;
    else if (out == 4) 
        out <= 4'b1011;    
    else 
        out <= out + 1;
end    
    
endmodule
