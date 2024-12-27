module lab3(
input logic W, X, Y, Z,
output logic Sa, Sb, Sc, Sd, Se, Sf, Sg
);

logic zero, one, two, three, four, five, six, seven, eight, nine, A, B, C, D, E, F;

dec416 ( .a({W,X,Y,Z}) , .out({zero, one, two, three, four, five, six, seven, eight, nine, A, B, C, D, E, F}));

assign Sa = ~(zero|two | three | five|six|seven|eight|nine|A|C|E|F);

assign Sb = ~(zero|one | two | three|four|seven|eight|nine|A|D);

assign Sc = ~(zero|one | three | four|five|six|seven|eight|nine |A|B|D);

assign Sd = ~(zero|two | three | five|six|eight|nine|B|C|E|D);

assign Se = ~(zero|two | six|eight|A|B|C|D|E|F);

assign Sf = ~(zero|four | five|six|eight|nine|A|B|C|E|F);

assign Sg = ~(two | three | four| five|six|eight|nine|A|B|D|E|F);

endmodule