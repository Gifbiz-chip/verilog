module half-adder_tb;
reg a,b;
wire sum,carry;
half_adder dut(
.a(a);
.b(b);
.c(c);
.sum(sum);
.carry(carry);
);
initial begin
$monitor("T=%t|a=%b,b=%b|sum+%b,carry=%b"$time,a,b,sum,carry);
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
end 
endmodule
