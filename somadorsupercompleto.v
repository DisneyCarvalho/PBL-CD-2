module somadorsupercompleto(chaves,S);
	input [7:0] chaves;
	output [3:0] S;

	wire [3:0] fiosaida1,fiosaida2,fiosaida3,fiosaida4,fiosaida5,fiosaida6,fiosaida7;

	
	
	somadorcompleto(chaves[0],chaves[1],fiosaida1);
	somadorcompleto(chaves[2],chaves[3],fiosaida2);
	somadorcompleto(chaves[4],chaves[5],fiosaida3);
	somadorcompleto(chaves[6],chaves[7],fiosaida4);
	
	somadorcompleto(fiosaida1,fiosaida2,fiosaida5);
	somadorcompleto(fiosaida3,fiosaida4,fiosaida6);
	
	somadorcompleto(fiosaida5,fiosaida6,S);
	
endmodule 