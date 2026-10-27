module add_4bit(
    input [3:0] A, B,
    output [3:0] sum,
    output cout
);
    assign {cout, sum} = A + B;
endmodule