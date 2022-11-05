module subtratorcompleto(a,b,S, bin);



	input bin;
	input [3:0] a,b;
	
	output [3:0] S;
	
	
	wire fio1,fio3,fio4,fio6;
	
	subtrator subit4( bin,  a[0], b[0], fio6, S[0]);
	subtrator subit3( fio6, a[1], b[1], fio4, S[1]);
	subtrator subit2( fio4, a[2], b[2], fio3, S[2]);
	subtrator subit1( fio3, a[3], b[3], fio1, S[3]);

	
	
endmodule 