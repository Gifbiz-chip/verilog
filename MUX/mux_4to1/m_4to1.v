module mux_4to1(
    input [3:0]i,
    input [0:1]s,
    output y
);
    assign y=s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
endmodule