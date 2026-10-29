module t_flipflop(
    input clk, a,
    output reg y
);
    always @(posedge clk)
        y <= ~a;
endmodule