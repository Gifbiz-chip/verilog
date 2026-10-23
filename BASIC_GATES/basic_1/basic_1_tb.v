module basic_1_tb;
    reg a,b;
    wire A,B,C,D;
    basic_1 dut(
        .a(a),
        .b(b),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );
    initial begin
        $dumpfile("basic_1.vcd");
        $dumpvars(0,basic_1_tb);
    end
    initial begin
        $monitor("T=%0t|a=%b;b=%b|A=%b;B=%b;C=%b;D=%b",$time,a,b,A,B,C,D);
        a=0;b=1;#5;
        a=1;b=0;#5;
        a=0;b=0;#5;
        a=1;b=1;#5;
        $finish;
    end 
endmodule