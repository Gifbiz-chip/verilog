module encoder_4to2_tb;
    reg i0,i1,i2,i3;
    wire a,b;
    encoder_4to2 dut(
        .i0(i0),
        .i2(i2),
        .i1(i1),
        .i3(i3),
        .a(a),
        .b(b)
    );
    initial begin
        $dumpfile("encoder_4to2.vcd");
        $dumpvars(0,encoder_4to2_tb);
    end
    initial begin
        $monitor("i0=%b;i1=%b;i2=0%b;i3=%b;|a=%b;b=%b",i0,i1,i2,i3,a,b);
        i3=0;i2=0;i1=0;i0=1;#3;
        i3=0;i2=0;i1=1;i0=0;#3;
        i3=0;i2=1;i1=0;i0=0;#3;
        i3=1;i2=0;i1=0;i0=0;#3;
        $finish;
    end
endmodule