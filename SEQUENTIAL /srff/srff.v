module sr_flipflop(
    input clk, 
    input a, b,
    output reg y
);
    always @(posedge clk) begin
    if (a == 0 && b == 0)
        y <= y;
    else if (a == 0 && b == 1)
        y <= 0;
    else if (a == 1 && b == 0)
        y <= 1;
    else 
        y <= 1'bx;
    end
endmodule