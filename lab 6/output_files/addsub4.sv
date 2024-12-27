module addsub4 (

                input logic [3:0] A,

                input logic [3:0] B,

                input logic Cont,

                output logic [3:0] S,

                output logic C4, V

);

 

//intermediate logic to hold B's input to adder

logic [3:0] Bin;

 

//determine whether or not to negate B based on add/subtract

assign Bin[0] = Cont ^ B[0];

assign Bin[1] = Cont ^ B[1];

assign Bin[2] = Cont ^ B[2];

assign Bin[3] = Cont ^ B[3];

 

//adder4 in:(A[3:0], B[3:0], C0) out:(S[3:0], C4, V)

adder4 add4(.A(A[3:0]), .B(Bin[3:0]), .Cin(Cont), .S(S[3:0]), .Cout(C4), .V(V));

 

endmodule