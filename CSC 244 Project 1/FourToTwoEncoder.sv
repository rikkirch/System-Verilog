module four_two_encoder


(	input logic [3:0]in,
	output logic [1:0]out);

assign out[1] = in[1] | in[3];
assign out[0] = in[2] | in[3];

endmodule