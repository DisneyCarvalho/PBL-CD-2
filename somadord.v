module bpla2(a,b,cin,s);
	input [3:0] a,b;
	input cin;
	output [3:0] s;
	
	wire c1, c2, c3, c4;
	
	somador (a[0],b[0],cin,s[0],c1);
	somador (a[1],b[1],c1,s[1],c2);
	somador (a[2],b[2],c2,s[2],c3);
	somador (a[3],b[3],c3,s[3],cout);
	
endmodule 