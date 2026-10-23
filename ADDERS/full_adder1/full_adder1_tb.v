module full_adder1_tb;
    reg a,b,c;
    wire sum,carry;
    full_adder1 dut(
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );
    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder1_tb);
    end
    initial begin
        $monitor("T=%t|a=%b;b=%b;c=%b;|sum=%b;carry=%b|",$time,a,b,c,sum,carry);
        a=0;b=0;c=0;#5;
        a=0;b=0;c=1;#5;
        a=0;b=1;c=0;#5;
        a=1;b=1;c=0;#5;
        a=1;b=1;c=1;#5;
    end
endmodule
