module half_sub.tb;
reg a,b;
wire D,B;
half_sub dut(
.a(a);
.b(b);
.D(D);
.B(B);
);
initial begin
$monitor("a=%b;b=%b|D=%b;B=%b"a,b,D,B;
a=0;b=0;
a=0;b=1;
a=1;b=0;
a=1;b=1;
end 
endmodule
