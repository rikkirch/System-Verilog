module seven_segment(
	input logic [0:3] in, 
	input logic decimal,
	input logic enable,
	output logic  segment[6:0]
	);
	
	
	logic [15:0] dec_out;
	
	
	dec416 decode(
	.A(in[0]),
	.B(in[1]),
	.C(in[2]),
	.E(in[3]),
	.out(dec_out),);
	
	
	assign segment[0] = (dec_out[1]|dec_out[4]|dec_out[11]|dec_out[13]);//segment A
	assign segment[1] = (dec_out[5]|dec_out[6]|dec_out[11]|dec_out[12]|dec_out[14]|dec_out[15]);//segment b
	assign segment[2] = (dec_out[2]|dec_out[12]|dec_out[14]|dec_out[15]);//seg c
	assign segment[3] = (dec_out[1]|dec_out[4]|dec_out[7]|dec_out[10]|dec_out[15]);//seg d
	assign segment[4] = (dec_out[1]|dec_out[3]|dec_out[4]|dec_out[5]|dec_out[7]|dec_out[9]);//seg e
	assign segment[5] = (dec_out[1]|dec_out[2]|dec_out[3]|dec_out[7]|dec_out[13]);//seg f
	assign segment[6] = (dec_out[0]|dec_out[1]|dec_out[7]|dec_out[12]);//seg g
	
	
	
	
	endmodule