module Lab02(

	input logic varW, varX, varY, varZ, 
	output logic var1, var2
);

	functionWXYZ fan(.F(var1), .W(varW), .X(varX), .Y(varY), .Z(varZ)); 
	functionWXYZsimplified fan1(.F(var2), .W(varW), .X(varX), .Y(varY), .Z(varZ));

endmodule