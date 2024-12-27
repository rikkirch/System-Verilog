module dec416(
input logic A,B,C,E,
output logic [15:0] out
);

logic notA, notB, notC, notE;
not(notA, A);
not(notB, B);
not(notC, C);
not(notE, E);


and(out[0], notA, notB, notC, notE);
and(out[1], notA, notB, notC, E);
and(out[2], notA, notB, C, notE);
and(out[3], notA, notB, C, E);
and(out[4], notA, B, notC, notE);
and(out[5], notA, B, notC, E);
and(out[6], notA, B, C, notE);
and(out[7], notA, B, C, E);
and(out[8], A, notB, notC, notE);
and(out[9], A, notB, notC, E);
and(out[10], A, notB, C, notE);
and(out[11], A, notB, C, E);
and(out[12], A, B, notC, notE);
and(out[13], A, B, notC, E);
and(out[14], A, B, C, notE);
and(out[15], A, B, C, E);

endmodule