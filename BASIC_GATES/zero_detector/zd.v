module zd(
    input [3:0] a,
    output y
);
    assign y = (a == 4'b0000);
endmodule