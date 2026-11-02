module counter(
  input clk,rst,
  output reg [1:0]count
);
  always @(posedge clk)
    if(rst==1)
      count<=0;
  else
    count<=count+1;
endmodule