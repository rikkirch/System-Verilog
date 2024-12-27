module functionWXYZsimplified( 
	
	input logic W, X, Y, Z, 
	output logic F 
);

	logic NotX, NotW, NotY, NotWAndNotXAndZ, NotXAndY;

	not(NotX, X);
	not(NotW, W);
	not(NotY, Y);

	and (NotWAndNotXAndZ, NotW, NotX, Z);
	and (NotXAndY, NotX, NotY);

	or (F, NotWAndNotXAndZ, NotXAndY);

endmodule