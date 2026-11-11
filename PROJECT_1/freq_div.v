module frequency_divider(
    input sys_clk ,
    output reg real_clk ,
    output reg [25:0] count,
    input rst
);
    initial 
        count = 0 ;
    always @(posedge sys_clk or posedge rst)
    begin
        if (rst)
        begin
            count <= 26'b0 ;
            real_clk <= 0;
        end
        else if (count ==2499999)
        begin
            count <= 26'b0 ;
            real_clk <= ~real_clk ;
        end
        else
            count <= count +1 ;
    end
endmodule