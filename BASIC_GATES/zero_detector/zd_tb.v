module zd_tb;
  reg [3:0]a;
  wire y;
  zd dut(
    .a(a),
    .y(y)
  );
  initial begin
    $dumpfile("zero_detector.vcd");
    $dumpvars();
  end
  initial begin
    $monitor("a=%b|y=%b",a,y);
    a=4'b0001;#10;
    a=4'b1111;#10;
    a=4'b0000;#10;
  end
endmodule