`timescale 1ns / 1ps

module DC4(
    input clk, reset,
    output reg [4:1] out
);

always @(posedge clk) begin
    if (!reset)
        out <= 0;
    else if (out == 9) 
        out <= 0;    
    else 
        out <= out + 1;

end

endmodule
