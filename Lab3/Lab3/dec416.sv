module dec416(
input logic [3:0] a,
output logic [15:0] out
);

assign out[0] = ~a[3] & ~a[2] & ~a[1] & ~a[0];
assign out[1] = ~a[3] & ~a[2] & ~a[1] & a[0];
assign out[2] = ~a[3] & ~a[2] & a[1] & ~a[0];
assign out[3] = ~a[3] & ~a[2] & a[1] &  a[0];
assign out[4] = ~a[3] & a[2] & ~a[1] & ~a[0];
assign out[5] = ~a[3] & a[2] & ~a[1] & a[0];
assign out[6] = ~a[3] & a[2] & a[1] & ~a[0];
assign out[7] = ~a[3] & a[2] & a[1] & a[0];
assign out[8] = a[3] & ~a[2] & ~a[1] & ~a[0];
assign out[9] = a[3] & ~a[2] & ~a[1] & a[0];
assign out[10] = a[3] & ~a[2] & a[1] & ~a[0];
assign out[11] = a[3] & ~a[2] & a[1] & a[0];
assign out[12] = a[3] & a[2] & ~a[1] & ~a[0];
assign out[13] = a[3] & a[2] & ~a[1] & a[0];
assign out[14] = a[3] & a[2] & a[1] & ~a[0];
assign out[15] = a[3] & a[2] & a[1] & a[0];

endmodule 
