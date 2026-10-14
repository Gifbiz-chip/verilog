module mux_2_1.tb;
reg s,i0,i1;
wire y;
mux_2_1 dut(
.s(s);
.i0(io);
.i1(i1);
.y(y);
);
initial begin
$monitor("s=%b,i0=%b,i1=%b|y=%b"s,i0,i1,y);
s=0;i0=1;
s=1;i1=1;
end
endmodule
