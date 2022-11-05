module decodificador(E,S);
	input [3:0] E;
	output [6:0] S;
	
	
	not(fioa,E[3]);
	not(fiob,E[2]);
	not(fioc,E[1]);
	not(fiod,E[0]);

	
	//A
	and(fio13,fioa,E[2],fioc,fiod);
	and(fio14,fioa,fiob,fioc,E[0]);
	
	and(fio1,fioa,fioc,fiod);
	and(fio2,fioa,fiob,fioc);
	
	or(S[6],fio13,fio14);
	
	
	//B
	and(fio3,fioa,fiob,fioc,fiod);
	and(fio4,fioa,E[2],fioc,E[0]);
	and(fio5,fioa,E[2],E[1],fiod);
	or(S[5],fio4,fio5);
	
	//C
	and(S[4],fioa,fiob,E[1],fiod);

	
	//D
	and(fio15,fioa,fiob,fioc,E[0]);
	and(fio16,fioa,E[2],fioc,fiod);
	or(S[3],fio7,fio15,fio16);
	
	//E
	and(fio8,fioa,E[2],fioc);
	and(fio9,fioa,E[0]);
	and(fio17,fioa,fioc,E[0]);
	or(S[2],fio8,fio9,fio17);
	
	//F
	and(fio10,fioa,fiob,E[0]);
	and(fio11,fioa,E[1],E[0]);
	and(fio18,fioa,fiob,E[1]);
	or(S[1],fio10,fio11,fio18);
	
	//G
	and(fio7,fioa,E[2],E[1],E[0]);
	or(S[0],fio2,fio7);
	
	
endmodule 
	
	
	
	