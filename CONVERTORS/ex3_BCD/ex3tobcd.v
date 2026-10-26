module excess3_bcd(
    input [3:0] e,
    output [3:0] BCD
);
    assign BCD = e - 4'b0011;
endmodule