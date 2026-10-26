module mux_4to1(
    input [3:0]i,
    input [0:1]s,
    output y
);
    assign y=s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
endmodule
module mux_16to1(
    input  [15:0]d,   
    input  [3:0]s,    
    output y
);
    wire [3:0]w;
    mux_4to1 m0 (.i(d[3:0]), .s(s[1:0]), .y(w[0]));
    mux_4to1 m1 (.i(d[7:4]), .s(s[1:0]), .y(w[1]));
    mux_4to1 m2 (.i(d[11:8]), .s(s[1:0]), .y(w[2]));
    mux_4to1 m3 (.i(d[15:12]), .s(s[1:0]), .y(w[3]));
    mux_4to1 m4 (.i(w), .s(s[3:2]), .y(y));
endmodule