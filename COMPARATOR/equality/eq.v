module eq_comp(
    input [3:0] A,
    input [3:0] B,
    output EQ
);
    assign EQ = (A == B);
endmodule