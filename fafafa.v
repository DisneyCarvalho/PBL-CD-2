module bpl2(chaves,clock, l,c,d1,d7,b0,saidateste);
	input clock;
	input [7:0] chaves;
	output [3:0] l,d1,saidateste;
	output [6:0] d7;
	output [1:0] c;
	output [2:0] b0;

	wire [19:0] s1;
	wire [3:0] fiosaida1,fiosaida2,fiosaida3,fiosaida4,fiosaida5,fiosaida6,fiosaida7,fiosaida8;
	wire[6:0] fiomatriz,fiomatriz1;
	wire [7:0] fio188;
	
	
	assign b0[0] =  1;
	assign b0[1] =  1;
	assign b0[2] =  1;
	
	divisor(clock,s1);
	matled(chaves,s1, l,c);
	display(s1[18:17],d1,d7,fiomatriz,fiomatriz1);
	
	
	somadorsupercompleto(chaves,fiosaida7);
	
	
	
	not(nao0,chaves[0]);
	not(nao1,chaves[1]);
	not(nao2,chaves[2]);
	not(nao3,chaves[3]);
	not(nao4,chaves[4]);
	not(nao5,chaves[5]);
	not(nao6,chaves[6]);
	not(nao7,chaves[7]);
	
	assign fio188[0] = nao0;
	assign fio188[1] = nao1;
	assign fio188[2] = nao2;
	assign fio188[3] = nao3;
	assign fio188[4] = nao4;
	assign fio188[5] = nao5;
	assign fio188[6] = nao6;
	assign fio188[7] = nao7;

	
	somadorsupercompleto(fio188,fiosaida8);

	decodificador(fiosaida7,fiomatriz);
	decodificador(fiosaida8,fiomatriz1);
	


	
	
endmodule
	
	
	
	
	
	