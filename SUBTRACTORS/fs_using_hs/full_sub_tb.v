module full_sub_tb;
    reg a,b,cin;
    wire diff,bout;
    full_sub dut(
    .a(a),
    .b(b),
    .cin(cin),
    .diff(diff),
    .bout(bout)
    );
    initial begin
        $dumpfile("full_sub.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("a=%b b=%b cin=%b|D=%b B=%b",a,b,cin,diff,bout);
        a=0;b=0;cin=0;#3;
        a=1;b=0;cin=0;#3;
        a=1;b=1;cin=0;#3;
        a=0;b=0;cin=1;#3;
        a=1;b=1;cin=1;#3;
    end 
endmodule
