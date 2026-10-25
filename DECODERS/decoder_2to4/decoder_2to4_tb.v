module decoder_2to4_tb;
    reg a,b;
    wire y0,y1,y2,y3;
    decoder_2to4 dut(
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );
    initial begin
        $dumpfile("decoder_2to4.vcd");
        $dumpvars(0,decoder_2to4_tb);
    end
    initial begin
        $monitor("a=%b;b=%b|y0=%b;y1=%b;y2=%b;y3=%b",a,b,y0,y1,y2,y3);
        a=0;b=0;#3;
        a=0;b=1;#3;
        a=1;b=0;#3;
        a=1;b=1;#3;
        $finish;
    end
endmodule