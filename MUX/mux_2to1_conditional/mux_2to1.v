module mux_2to1 (input s,i0,i1,output y);
    assign y=s?i1:i0;
endmodule