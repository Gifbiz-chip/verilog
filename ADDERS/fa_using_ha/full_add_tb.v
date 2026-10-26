module full_adder_tb;
    reg a,b,cin;
    wire sum,cout;
    full_adder dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder_tb);
    end
    initial begin
        $monitor("T=%t|a=%b;b=%b;cin=%b;|sum=%b;cout=%b|",$time,a,b,cin,sum,cout);
        a=0;b=0;cin=0;#5;
        a=0;b=0;cin=1;#5;
        a=0;b=1;cin=0;#5;
        a=1;b=1;cin=0;#5;
        a=1;b=1;cin=1;#5;
    end
endmodule
