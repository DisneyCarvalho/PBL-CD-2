module subtratorsupercompleto(A,S);
	input [7:0] A;
	output [3:0] S;
	
	wire fio1,fio2,fio3,fio4,fio5,fio6,fio7;
	
	subtratorcompleto(1000,A[0],fio1);
	subtratorcompleto(fio1,A[1],fio2);
	subtratorcompleto(fio2,A[2],fio3);
	subtratorcompleto(fio3,A[3],fio4);
	subtratorcompleto(fio4,A[4],fio5);
	subtratorcompleto(fio5,A[5],fio6);
	subtratorcompleto(fio6,A[6],fio7);
	subtratorcompleto(fio7,A[7],S);

endmodule 