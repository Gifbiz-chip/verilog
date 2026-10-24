module demux_2to1_tb;
    reg D,S;
    wire y0,y1;
    demux_2to1 dut(
        .D(D),
        .S(S),
        .y0(y0),
        .y1(y1)
    );
    initial begin
        $dumpfile("demux_2to1.vcd");
        $dumpvars(0,demux_2to1_tb);
    end
    initial begin
        $monitor("D=%b;S=%b|y0=%b;y1=%b",D,S,y0,y1);
        S=0;D=1;#3;
        S=0;D=0;#3;
        S=1;D=0;#3;
        S=1;D=1;#3;
    end
endmodule
        