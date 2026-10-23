module basic_2_tb;
    reg a,b;
    wire A,B,C,D;
    basic_2 dut(
        .a(a),
        .b(b),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );
    initial begin
        $dumpfile("basic_2.vcd");
        $dumpvars(0,basic_2_tb);
    end
    initial begin
        $monitor("a=%b;b=%b|A=%b;B=%b;C=%b;D=%b",a,b,A,B,C,D);
        a=0;b=1;#3;
        a=0;b=0;#3;
        a=1;b=1;#3;
        a=1;b=0;#3;
        $finish;
    end 
endmodule
