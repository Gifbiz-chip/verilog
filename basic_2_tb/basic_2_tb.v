module basic_2.tb;
reg a,b;
wire A,B,C,D;
basic_2 dut(
.a(a);
.b(b);
.A(A);
.B(B);
.C(C);
.D(D);
);
initial begin
$monitor("a=%b;b=%b|A=%b;B=%b;C=%b;D=%b"a,b,A,B,C,D);
a=0;b=1;
a=0;b=0;
a=1;b=1;
a=1;b=0;
end 
endmodule
