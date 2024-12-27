module adder4(
                input logic [3:0]A,
                input [3:0]B,
                input Cin,
                output [3:0]S,
					 output Cout,
					 output V

);

                logic C0,c1,c2;
                fulladder  fa0(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(C0));
                fulladder  fa1(.A(A[1]),.B(B[1]),.Cin(C0),.S(S[1]),.Cout(C1));
                fulladder  fa2(.A(A[2]),.B(B[2]),.Cin(C1),.S(S[2]),.Cout(C2));
                fulladder  fa3(.A(A[3]),.B(B[3]),.Cin(C2),.S(S[3]),.Cout(Cout));

                assign V=Cout^C2;

endmodule