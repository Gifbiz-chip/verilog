module counter_tb;
  reg clk,rst;
  wire [1:0] count;
  counter dut(
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  initial begin
    $dumpfile("counter.vcd");
    $dumpvars();
  end
  initial clk=0;
    always #4 clk=~clk;
  initial begin
    $monitor("clk=%b  rst=%b|count=%b",clk,rst,count);
    rst=1;#10;
    rst=0;#10;
    $finish;
  end
endmodule