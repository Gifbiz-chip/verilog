module decoder_2to4_tb;
    reg [1:0] a;
    wire [3:0] y;
    decoder_2to4 dut(
        .a(a),
        .y(y)
    );
    initial begin
        $dumpfile("decoder_2to4.vcd");
        $dumpvars(0,decoder_2to4_tb);
    end
    initial begin
        $monitor("a=%b|y=%b",a,y);
        a=00;#3;
        a=01;#3;
        a=10;#3;
        a=11;#3;
        $finish;
    end
endmodule