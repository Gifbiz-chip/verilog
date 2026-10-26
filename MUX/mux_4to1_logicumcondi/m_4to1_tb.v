module mux_4to1_tb;
    reg s0, s1, i0, i1, i2, i3;
    wire y;

    mux_4to1 dut(
        .s0(s0),
        .s1(s1),
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);

    end
    initial begin
    $monitor("s0=%b, s1=%b, i0=%b, i1=%b, i2=%b, i3=%b | y=%b", s0, s1, i0, i1, i2, i3, y);
    s0=0; s1=0; i0=1; i1=0; i2=0; i3=0;#10;
    s0=0; s1=1; i0=1; i1=1; i2=0; i3=0;#10;
    s0=1; s1=0; i0=1; i1=0; i2=1; i3=0;#10;
    s0=1; s1=1; i0=1; i1=0; i2=0; i3=1;#10;
    $finish;
    end
endmodule