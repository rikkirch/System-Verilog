module fulladder(
		input logic Cin,A,B,
		output S,Cout
);

	logic c,d;
	
	always_comb
	 begin 
	   c=A^B;
		d=A&B;
		
		S=c^Cin;
		Cout=d|(c&Cin);
	end
		
endmodule
	