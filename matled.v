module matled(chaves,clock, l,c);
	input [19:0] clock;
	input [7:0] chaves;
	output [3:0] l;
	output [1:0] c;

	wire fio1;
	not(fio1, clock[19]);
	
	assign c[0] = clock[19];
	assign c[1] = fio1;
	
	not(fiol0,chaves[0]);
	not(fiol1,chaves[1]);
	not(fiol2,chaves[2]);
	not(fiol3,chaves[3]);
	not(fiol4,chaves[4]);
	not(fiol5,chaves[5]);
	not(fiol6,chaves[6]);
	not(fiol7,chaves[7]);
	
	multplex(fiol0,fiol1,clock[19],l[0]);
	multplex(fiol2,fiol3,clock[19],l[1]);
	multplex(fiol4,fiol5,clock[19],l[2]);
	multplex(fiol6,fiol7,clock[19],l[3]);


	
endmodule
	
	
	
	
	