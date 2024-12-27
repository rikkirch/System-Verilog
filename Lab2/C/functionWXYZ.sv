module functionWXYZ(
input logic W, X, Y, Z,
output logic F

);

logic nW, nX, nY, nZ, WnXnY, WnXnZ, WnXnYnZ;

	not(nW, W); 
	not(nX, X); 
	not(nY, Y); 
	not(nZ, Z); 

	and(WnXnY, nW, nX, nY); 
	and(WnXnZ, W, nX, nY);
	and(WnXnYnZ, nW, nX, Z);

	or(F, WnXnY, WnXnZ, WnXnYnZ);

endmodule




























//module functionABC (
//input logic A, B, C,
//output logic Y;
////Y = (A′ + B′· C)′· (A′ + B′· C′)′
//
//);
//
//
//logic nA, nB, nC, nBaC, nBanC, nBanC, E, F, nE, nF;
//
//nBanC is B
//nE = (A'+(B'.C))'
//nF = (A'+(B'+C'))'
//
//not(nA, A); 
//not(nB, B); 
//not(nC, C); 
//
//and(nBaC, nB, C); 
//and(nBanC, nB, nC); 
//
//or(E, nA, nBaC); 
//or(F, nA, nBanC); 
//
//not(nE, E); 
//not(nF, F); 
//
//and(Y, nE, nF);
//
//endmodule
