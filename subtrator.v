module subtrator ( bin, a, b, bout, s);

	input a,b, bin;
	
	output bout,s;
	
	wire fio1,fio2,fio3,fio4,fioa;
	
	
	not(fioa,a);

	
	xor (fio1,a,b);
	
	xor (s,fio1,bin);
	
	
	and (fio2,fioa,b);
	
	and (fio3,fioa,bin);
	
	and (fio4, b, bin);
	
	
	or (bout,fio2,fio3,fio4);
	
endmodule 
	