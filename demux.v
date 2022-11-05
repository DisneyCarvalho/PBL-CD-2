module demux(e1,a,s0,s1);
	input e1,a;
	output s0,s1;
	
	wire fio1;
	
	not(fio1,a);
	and(s0,fio1,e1);
	and(s1,a,e1);
	
	
endmodule 
	
	