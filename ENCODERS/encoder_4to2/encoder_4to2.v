module encoder_4to2(input i0,i1,i2,i3,output a,b);
    or(a,i2,i3);
    or(b,i1,i3);
endmodule