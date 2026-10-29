module dff_async_rst(
  input clk,rst,d,
  output reg y
);
  always @(posedge clk or posedge rst)begin
    if(rst)
      y<=1'b0;
    else
      y<=d;
  end
endmodule