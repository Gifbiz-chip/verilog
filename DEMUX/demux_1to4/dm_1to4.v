module demux_1to4(
    input d,
    input [1:0]s,
    output [3:0]y
);
    assign y[0] = (s == 2'b00)?d:1'b0;
    assign y[1] = (s == 2'b01)?d:1'b0;
    assign y[2] = (s == 2'b10)?d:1'b0;
    assign y[3] = (s == 2'b11)?d:1'b0;
endmodule