module d_flipflop(
    input clk, a,
    output reg y
);
    always @(posedge clk)
        y <= a;
    always @(negedge clk)
        y <= a;
endmodule