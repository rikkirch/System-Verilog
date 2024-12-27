module toplevel( 
input logic [3:0] A, // 4-bit input A 
input logic [3:0]B, // 4-bit input B 
output logic [6:0] A_sign, 
 // 7-segment output for A's sign 
 output logic [6:0] A_value, // 7-segment output for A's value 
 output logic [6:0] B_sign, // 7-segment output for B's sign 
 output logic [6:0] B_value, // 7-segment output for B's value
 output logic [6:0] S_sign, // 7-segment output for sum's sign 
 output logic [6:0] S_value, // 7-segment output for sum's value 
 output logic [3:0] S_LED, // 4-bit sum output for LED 
 output logic C_LED, // Carry-out LED 
 output logic V_LED // Overflow LED
 ); // Define internal signals 
 
 logic c_in; assign c_in = 1'b0; // Set carry-in to 0 for initial addition 
 // Instantiate the 4-bit adder 
 adder4 u_adder4 ( 
 .A(A), 
 .B(B), 
 .Cin(c_in), 
 .S(S_LED), 
 .Cout(C_LED), // Carry-out output 
 .V(V_LED) // Overflow output 
 ); 
 // Instantiate the 7-segment decoders for A 
 decimal7decoder for_A ( 
 .A(A), // 4-bit binary input A (-8 to +7) 
 .Y(A_value), // 7-segment sign output 
 .Z(A_sign) // 7-segment digit output 
 ); 
 
 // Instantiate the 7-segment decoders for B 
 decimal7decoder for_B ( 
 .A(B), // 4-bit binary input B (-8 to +7) 
 .Y(B_sign), // 7-segment sign output 
 .Z(B_value) // 7-segment digit output 
 ); 
 
 // Instantiate the 7-segment decoders for sum (S_LED) 
 decimal7decoder for_S ( 
 .A(S_LED), // 4-bit binary input sum (-8 to +7) 
 .Y(S_sign), // 7-segment sign output for sum
 .Z(S_value) // 7-segment digit output for sum 
 ); 
 
 endmodule