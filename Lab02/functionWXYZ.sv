module functionWXYZ(

	input logic W,X,Y,Z, 
	output logic F

);

	logic NotX, NotW, NotY, NotWAndNotXAndZ, NotWAndNotXAndNotY, WAndNotYAndNotx;

	not(NotX, X); 
	not(NotY, Y);
	not(NotW, W);

	and(NotWAndNotXAndZ, NotW, NotX, Z); 
	and(NotWAndNotXAndNotY, NotW, NotX, NotY);
	and(WAndNotYAndNotX, W, NotY, NotX); 
	
	or(F, NotWAndNotXAndZ, NotWAndNotXAndNotY, WAndNotYAndNotX);

endmodule