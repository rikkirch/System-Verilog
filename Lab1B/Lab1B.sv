module Lab1B(
input logic a,b,
output logic Z, Y
);

	logic andAB, notA, notB, orAB;

	and(andAB, a, b);
	not(Y, andAB);
	
	not(notA, a);
	not(notB, b);
	or(Z, notA, notB);
	

endmodule