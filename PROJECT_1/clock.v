module clock(
    input clk,
    output reg sec,
    output  reg min
);
initial begin
    sec = 0;
    min = 0;
end
always @ (posedge clk) begin
    if( sec == 59)
    begin
        sec <= 0;
        if( min == 59)
            min <= 0 ;
        else 
            min = min + 1 ;
    end
    else    
        sec = sec + 1 ;
end
endmodule
    

