`timescale 1ns / 1ps

module RC(
    input clock, reset,
    output reg [4:1] out
    );
    
initial out = 4'b0000;
    
always @(posedge clock) begin
    if (!reset) out = 4'b0001;
    else begin 
        out <= {out[3:1], out[4]};
    end
end
    
endmodule
