module bpla2a (clock,s1,d7);
	input clock; 
	output reg [3:0] s1;
	output reg [6:0] d7;

	wire d2;
	contador (clock, d2);
	display(d2,s1,d7);
	
	

	
endmodule 