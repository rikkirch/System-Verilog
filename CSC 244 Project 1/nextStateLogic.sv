
module nextStateLogic(
	input logic [3:0]s, // the current state of the machine
	input logic [1:0]monies, //encoded monies to the vending machine
	output logic [3:0]d //nextstate of el vending machino
	);
	
	assign d[0] = ( 
	  (~monies[1] & ~s[2] & s[0]) |
	  ( monies[1] & ~s[0])|
	  ( monies[1] & s[2]));
	
	assign d[1] = (
	  (~monies[0] & ~monies[1] & s[1] & ~s[2]) |
	  ( monies[1] & ~s[2] & ~s[1] & s[0]) |
	  ( monies[1] & ~s[2] & s[1] & ~s[0]) |
	  (monies[0] & ~monies[1] & ~s[1]) |
	  (monies[0] & ~monies[1] & s[2]));
	
	assign d[2] = (
	  (~monies[0] & monies[1] & ~s[2] & s[1] & s[0]) |
	  ( monies[0] & monies[1] & ~s[0]) |
	  ( monies[0] & monies[1] & ~s[1]) |
	  ( monies[0] & monies[1] & s[2])  |
	  ( monies[0] & ~monies[1] & s[1] & ~s[2]));
	assign d[3] = (
	  ( monies[0] & monies[1] & s[0] & s[1] & ~s[2]));

	endmodule