module mux_2_1_tb;
    reg s,i0,i1;
    wire y;
    mux_2_1 dut(
    .s(s),
    .i0(i0),
    .i1(i1),
    .y(y)
    );
    initial begin
        $dumpfile("mux_2_1.vcd");
        $dumpvars(0,mux_2_1_tb);
    end
    initial begin
        $monitor("s=%b,i0=%b,i1=%b|y=%b",s,i0,i1,y);
        s=0;i0=1;#3;
        s=1;i1=1;#3;
    end
endmodule
