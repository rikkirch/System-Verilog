module Lab1( //FUNCTIONABC
  input logic a, b, c,
  output logic Y
  
);


logic notA, notB, notC, termOne, nottermOne, termTwo, nottermTwo, ornotAnotBandC, ornotAnotBandnotC, notBnotC;


not(notA, a); 
not(notB, b);
not(notC, c);

	and(notAnotC, notB, c);
	or(ornotAnotBandC, notA, notAnotC); 
	not(termOne, ornotAnotBandC);

	and(BnotCnot, notB, notC);
	or(ornotAnotBandnotC, notA, BnotCnot); 
	not(termTwo,ornotAnotBandnotC);

	and(Y, termOne, termTwo);

endmodule