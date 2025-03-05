`timescale 1ns / 1ps

module BC (
    input clk, reset, 
    output reg [2:1] out
 );

always @(posedge clk or posedge reset) 
begin 
    if (!reset)
        begin
            out <= 2'b00;
        end
    else 
        out <= out + 1;
end

endmodule
