module Lab1(

input logic varW, varX, varY, varZ, 
output logic var1, var2
);

functionWXYZ fan(.F(var1),.W(varw), .X(varx), .Y(vary), .Z(varz)); 
functionWXYZsimplified fan1(.F(var2), .W(varW), .X(varX), .Y(varY), .Z(varZ));

endmodule