module contador (clok, s1);
input clok;
output reg [1:0] s1;

initial begin 
	s1 = 2'b00;
end

	always @(posedge clok) begin
	s1 = s1 + 2'b001;
	end



endmodule 