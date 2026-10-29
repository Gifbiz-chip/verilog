module dff_sync_rst(
  input clk,rst,d,
  output reg y
);
  always @(posedge clk)begin
    if(rst)
      y<=0;
    else
      y<=d;
  end
endmodule