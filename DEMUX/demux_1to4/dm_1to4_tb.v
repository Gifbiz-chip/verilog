module demux_1to4_tb;
    reg  d;
    reg [1:0]s;
    wire [3:0]y;
    demux_1to4 dut (.d(d), .s(s), .y(y));
    initial begin
        $dumpfile("demux_1to4.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("d=%b s=%b | y3=%b y2=%b y1=%b y0=%b",d,s,y[3],y[2],y[1],y[0]);
        d = 1;
        s=00; #1;
        s=01; #1;
        s=10; #1;
        s=11; #1;
        d = 0;
        s=00; #1;
        s=01; #1;
        s=10; #1;
        s=11; #1;
        $finish;
    end
endmodule