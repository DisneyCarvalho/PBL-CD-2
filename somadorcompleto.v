module somadorcompleto (A,B, S, Cout,Cin);

	input Cin;
	input [3:0] A,B;

	output [3:0] S;
	output Cout;
	

	wire c1, c2, c3, c4;

	somador  s1(A[0], B[0], Cin, S[0],c1);
	somador  s2(A[1], B[1], c1, S[1], c2); 
	somador  s3(A[2], B[2], c2, S[2], c3);
	somador  s4(A[3], B[3], c3, S[3], Cout);


endmodule 