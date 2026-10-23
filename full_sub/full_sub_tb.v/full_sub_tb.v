module full_sub.tb;
reg a,b,c;
wire D,B;
full_sub dut(
.a(a);
.b(b);
.c(c);
.D(D);
.B(B);
);
initial begin
$monitor("a=%b;b=%b;c=%b|d=%b;B=%b"a,b,c,D,B);
a=0;b=0;c=0;
a=1;b=0;c=0;
a=1;b=1;c=0;
a=0;b=0;c=1;
a=1;b=1;c=1;
end 
endmodule
