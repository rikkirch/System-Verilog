module Project1TopLevel
(
	input logic reset/*Reset Button for machine*/, clkKey/*clk switch key*/,  clk50 /*on board clock*/, 
	input logic [3:0] coin , /* 0 No coin, 1 shilling, 2 florin, 3 crown */
	
	
	output logic  sevenSegState[6:0],  sevenSegChange[6:0], 
	//binary output from memory debug
	output logic  outputTest[3:0], 
	//encoderdebug output
	//output logic why[1:0],
	output logic changeOutput[2:0],
	output logic gruel
);
	//internal logic lines
	logic [1:0] encoderOut;
	logic [3:0] nextStateOutput;
	logic [3:0] memoryOut;
	logic debouncedCLK;
	logic debouncedReset;
	
	//Encoder
	four_two_encoder Encoder(
	.in(coin),
	.out(encoderOut));
	
	//next state logic 
	nextStateLogic nextState(
	.monies(encoderOut),
	.d(nextStateOutput),
	.s(memoryOut));
	
	//CLK Debouncer
	debouncer CLKDebouced(
	.A_noisy(clkKey),
	.CLK50M(clk50),
	.A(debouncedCLK));
	
	//reset Debouncer
	debouncer resetDebouced(
	.A_noisy(reset),
	.CLK50M(clk50),
	.A(debouncedReset));
	
	
	//DflipFlops
	//bit one
	D_FF_neg bitOne(
	.D(nextStateOutput[0]),
	.CLKb(debouncedCLK),
	.RSTb(debouncedReset),
	.Q(memoryOut[0]));
	//bit two
	D_FF_neg bitTwo(
	.D(nextStateOutput[1]),
	.CLKb(debouncedCLK),
	.RSTb(debouncedReset),
	.Q(memoryOut[1]));
	//bit three
	D_FF_neg bitThree(
	.D(nextStateOutput[2]),
	.CLKb(debouncedCLK),
	.RSTb(debouncedReset),
	.Q(memoryOut[2]));
	//bit 4
	D_FF_neg bitFour(
	.D(nextStateOutput[3]),
	.CLKb(debouncedCLK),
	.RSTb(debouncedReset),
	.Q(memoryOut[3]));
	
	
	
	
	
	//7segment logic
	seven_segment stateDisplay(
	.segment(sevenSegState),
	.in(memoryOut));
	
	changeSevenSeg changeDisplay(
	.in(memoryOut),
	.segment(sevenSegChange),
	.gruel(gruel),
	.changeDisplay(changeOutput));



//Debugs for binary out of Finite state logic	
buf(outputTest[0],memoryOut[0]);
buf(outputTest[1],memoryOut[1]);
buf(outputTest[2],memoryOut[2]);
buf(outputTest[3],memoryOut[3]);
/*
//debugs for encoder output
buf(why[0],encoderOut[0]);
buf(why[1],encoderOut[1]);
*/
	endmodule






