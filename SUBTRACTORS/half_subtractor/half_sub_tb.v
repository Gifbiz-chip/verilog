module half_sub_tb;
    reg a,b;
    wire D,B;
    half_sub dut(
    .a(a),
    .b(b),
    .D(D),
    .B(B)
    );
    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0,half_sub_tb);
    end
    initial begin
        $monitor("a=%b;b=%b|D=%b;B=%b",a,b,D,B);
        a=0;b=0;#3;
        a=0;b=1;#3;
        a=1;b=0;#3;
        a=1;b=1;#3;
        $finish;
    end 
endmodule
