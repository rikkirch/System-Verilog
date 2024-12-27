module functionWXYZsimplified(
input logic W, X, Y, Z,
output logic F

);

logic nW, nX, nY, nZ, WnZ, YnWnZ;

	not(nW, W);
	not(nX, X);
	not(nY, Y);
	not(nZ, Z);

	and(WnZ, nW, Z);
	or(YnWnZ, nY, WnZ);

	and(F, nX, YnWnZ); 

endmodule