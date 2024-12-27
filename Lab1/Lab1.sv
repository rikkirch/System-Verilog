module Lab1(
input logic a,b,
output logic Z, Y
);

	logic andAB, notA, notB, outputZ, orA, orB, notAB;

	not(notA, a);
	not(notB, b);
	and(Z, notA, notB);
	
	or(orAB, a, b);
	not(Y, orAB);

endmodule