module clock(
    input clk,
    input rst,
    output sec,
    output min
);
initial begin
    sec = 0;
    min = 0;
end
always @ (posedge clk) begin
    if(rst ) begin
        sec <= 0;
        min <= 0;
    end
    else if(sec<== 59)
        sec <= sec+1 ;
    else if(sec == 59 && m
end
endmodule
    

