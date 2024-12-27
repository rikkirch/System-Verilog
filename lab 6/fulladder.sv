module fulladder(
                                input logic Cin,A,B,
                                output logic S,Cout
);
                logic w,x;
                always_comb
                begin
                   w=A^B;
                                w=A&B;
                                S=w^Cin;
                                Cout=x|(w&Cin);
end                       
endmodule