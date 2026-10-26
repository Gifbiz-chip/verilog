module binarytogray_tb;
reg b3,b2,b1,b0;
wire g3,g2,g1,g0;
binarytogray dut(.b3(b3), .b2(b2), .b1(b1), .b0(b0), .g3(g3), .g2(g2), .g1(g1), .g0(g0) );
    initial begin
        $dumpfile("binarytogray.vcd");
        $dumpvars(0, binarytogray_tb);
        $monitor("time=%t|b3=%b, b2=%b, b1=%b, b0=%b, g3=%b, g2=%b, g1=%b ", $time, b3,b2,b1,b0,g3,g2,g1,g0);

	b3=0; b2=0; b1=0; b0=0; #10;
	b3=0; b2=0; b1=0; b0=1; #10;
	b3=0; b2=0; b1=1; b0=0; #10;
	b3=0; b2=0; b1=1; b0=1; #10;
	b3=0; b2=1; b1=0; b0=0; #10;
	b3=0; b2=1; b1=0; b0=1; #10;
	b3=0; b2=1; b1=1; b0=0; #10;
	b3=0; b2=1; b1=1; b0=1; #10;
	b3=1; b2=0; b1=0; b0=0; #10;
	b3=1; b2=0; b1=0; b0=1; #10;
	b3=1; b2=0; b1=1; b0=0; #10;
	b3=1; b2=0; b1=1; b0=1; #10;
	b3=1; b2=1; b1=0; b0=0; #10;
	b3=1; b2=1; b1=0; b0=1; #10;
	b3=1; b2=1; b1=1; b0=0; #10;
	b3=1; b2=1; b1=1; b0=1; #10;
end
endmodule