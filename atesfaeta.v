module fqfaqaq(a,S, bin, S);



	input bin;
	input [3:0] a;
	
	output [3:0] S;
	
	
	wire fio1,fio3,fio4,fio6;
	
	subtrator subit4( bin,  a[0], 0, fio6, S[0]);
	subtrator subit3( fio6, a[1], 0, fio4, S[1]);
	subtrator subit2( fio4, a[2], 0, fio3, S[2]);
	subtrator subit1( fio3, a[3], 1, fio1, S[3]);

	
	
endmodule 