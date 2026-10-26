module mux_4to1(input s0,s1,i0,i1,i2,i3,output y);
    assign y=(s1==0 && s0==0)?i0:
    (s1==0 && s0==1)?i1:
     (s1==1 && s0==0)?i2:i3;
endmodule

