`timescale 1ns / 1ps

module Debouncer(
    input button_in, clk,
    output reg button_out
    );
    
    reg w1;
    always @ (posedge clk) begin
        w1 <= button_in;
        button_out <= w1;
    end
endmodule