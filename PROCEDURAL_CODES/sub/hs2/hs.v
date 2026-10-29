module hs_nonblocking (
    input  clk,
    input  a, b,
    output reg diff, borrow
);
    always @(posedge clk) begin
        diff   <= a ^ b;
        borrow <= ~a & b;
    end
endmodule