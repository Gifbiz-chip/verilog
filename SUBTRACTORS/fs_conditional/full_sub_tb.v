module full_sub_tb;
    reg a,b,c;
    wire D,B;
    full_sub dut(
    .a(a),
    .b(b),
    .c(c),
    .D(D),
    .B(B)
    );
    initial begin
        $dumpfile("full_sub.vcd");
        $dumpvars(0,full_sub_tb);
    end
    initial begin
        $monitor("a=%b;b=%b;c=%b|D=%b;B=%b",a,b,c,D,B);
        a=0;b=0;c=0;#3;
        a=1;b=0;c=0;#3;
        a=1;b=1;c=0;#3;
        a=0;b=0;c=1;#3;
        a=1;b=1;c=1;#3;
    end 
endmodule
