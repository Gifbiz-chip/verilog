module dff_async_rst_tb;
  reg clk,rst,d;
  wire y;
  dff_async_rst dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .y(y)
  );
  initial begin
    $dumpfile("dff_async_rst.vcd");
    $dumpvars();
  end
  initial clk=0;
  always #3 clk=~clk;
  initial begin
    $monitor("clk=%b rst=%b d=%b |y=%b",clk,rst,d,y);
    clk=0;rst=1;d=0;#20;
    rst=0;d=1;#25;
    rst=0;d=0;#30;
    $finish;
  end
endmodule