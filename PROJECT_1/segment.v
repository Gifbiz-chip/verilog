module segment(
    input [3:0] bcd;
    output [6:0] seg
);
    always @(*) begin
        case(bcd)
            4'd0 : seg = 7'1111110 ;
            4'd1 : seg = 7'0110000 ;
            4'd2 : seg = 7'1101101 ;
            4'd3 : seg = 7'1111001 ;
            4'd4 : seg = 7'0110011 ;
            4'd5 : seg = 7'1011011 ;
            4'd6 : seg = 7'1011111 ;
            4'd7 : seg = 7'1110000 ;
            4'd8 : seg = 7'1111111 ;
            4'd9 : seg = 7'1111011 ;
            default = 1'b0;
        endcase
    end
endmodule
    