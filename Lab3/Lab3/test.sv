module Lab3 (
 input logic  a , b, c, d ,
 output logic  [15:0]y
);

dec416 ( .a({a,b,c,d}) , .out(y) );
endmodule