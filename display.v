module display (e1,s1,d7,t1,t2);
	input [6:0] t1,t2;
	input [1:0] e1;
	output reg [3:0] s1;
	output reg [6:0] d7;
	
	always @* begin 
		case (e1)
		2'b00: s1 = 4'b1110;
		2'b01: s1 = 4'b1101;
		2'b10: s1 = 4'b1011;
		2'b11: s1 = 4'b0111;
		endcase
		
		case (s1)
		4'b1110: d7 = t1;
		4'b1101: d7 = 7'b1100010;
		4'b1011: d7 = t2;
		4'b0111: d7 = 7'b1110001;
		endcase
		
	end 
	

	
endmodule 