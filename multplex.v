module multplex(e1 ,e2 ,a ,s);
	
	input e1,e2,a;
	
	output s;
	
	wire fio1,fio2,fio3;
	
	and (fio1,a,e2);

	not(fio3,a);
	and (fio2,fio3,e1);
	
	
	or(s,fio1,fio2);
	
endmodule