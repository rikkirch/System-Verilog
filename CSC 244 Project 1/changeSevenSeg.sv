module changeSevenSeg(
	input logic [0:3] in, 
	input logic decimal,
	input logic enable,
	output logic  segment[6:0],
	output logic gruel,
	output logic changeDisplay[2:0]
	);
	
	
	logic [15:0] dec_out;
	
	dec416 decode(
	.A(in[0]),
	.B(in[1]),
	.C(in[2]),
	.E(in[3]),
	.out(dec_out),);
	
	assign segment[0] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[6] | dec_out[7]); // segment a
	assign segment[1] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[5] | dec_out[6] | dec_out[7] | dec_out[8]); // segment b
	assign segment[2] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[5] | dec_out[7] | dec_out[8]); // segment c
	assign segment[3] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[6] | dec_out[7]); // segment d
	assign segment[4] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[6]); // segemnt e
	assign segment[5] = ~(dec_out[0] | dec_out[1] | dec_out[2] | dec_out[3] | dec_out[4] | dec_out[8]); // segment f
	assign segment[6] = ~(dec_out[6] | dec_out[7] | dec_out[8]); // segemnt g

	or(gruel, dec_out[8], dec_out[7], dec_out[6], dec_out[5], dec_out[4]);
	
	assign changeDisplay[2] = dec_out[8];
	
	or(changeDisplay[0], dec_out[5],  dec_out[7]);
	or(changeDisplay[1], dec_out[8], dec_out[7], dec_out[6]);

	
/*	
assign segment[0] = ~( dec_out[6] | dec_out[7] );
assign segment[1] = ~( dec_out[5] | dec_out[6] | dec_out[7] | dec_out[8] );
assign segment[2] = ~( dec_out[5] | dec_out[7] | dec_out[8] );
assign segment[3] = ~( dec_out[6] | dec_out[7] );
assign segment[4] = ~( dec_out[6] );
assign segment[5] = ~( dec_out[8] );
assign segment[6] = ~( dec_out[6] | dec_out[7] | dec_out[8] );
*/
	
	endmodule