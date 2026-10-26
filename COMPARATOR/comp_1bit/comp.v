module comp_1bit (
    input  a,b,
    output gt,eq,lt
);
    assign gt = a?~b:0;   
    assign lt = a?0:b;    
    assign eq = a?b:~b;      
endmodule