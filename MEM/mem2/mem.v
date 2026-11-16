module read_write #(parameter ADDR_WIDTH = 4 , parameter DATA_WIDTH = 8 )(
    input clk, en,
    input [ADDR_WIDTH-1:0] radd, wadd,
    input [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);
    reg [DATA_WIDTH-1:0] mem [0:1<< ADDR_WIDTH-1] ;
    always @(posedge clk)
    begin 
        if(en)
            mem[wadd] <= din ;
        else 
            dout <= mem[radd];
    end
endmodule
