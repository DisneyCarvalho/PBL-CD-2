module divisor (clock,s1);
	input clock;
	output reg [18:0] s1;
	
	initial begin
	s1 = 0;
	end
	
	assign s2 = s1[17];
	
	always @(posedge clock)begin
		s1 = s1 + 1;
		
	end
	
endmodule 