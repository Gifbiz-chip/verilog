module dff_sync_rst_tb;
  reg clk,rst,d;
  wire y;
  dff_sync_rst dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .y(y)
  );
  initial begin
    $dumpfile("dff_sync_rst.vcd");
    $dumpvars();
  end
  initial clk=0;
  always #2 clk = ~clk;
  initial begin
    $monitor("clk=%b rst=%b d=%b |y=%b",clk,rst,d,y);
    rst=1;d=0;#3;
    rst=1;d=1;#3;
    rst=0;d=1;#3;
    $finish;
  end
endmodule