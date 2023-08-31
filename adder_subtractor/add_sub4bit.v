module add_sub4bit(output [3:0]s,output cout,input [3:0]a,b,input ctrl);
wire [2:0]c;
wire [3:0]i;

xor x1(i[0],b[0],ctrl),
		x2(i[1],b[1],ctrl),
		x3(i[2],b[2],ctrl),
		x4(i[3],b[3],ctrl);
fa f1(s[0],c[0],a[0],i[0],ctrl);
fa f2(s[1],c[1],a[1],i[1],c[0]);
fa f3(s[2],c[2],a[2],i[2],c[1]);
fa f4(s[3],cout,a[3],i[3],c[2]);
endmodule

module fa(output sum,carry,input a,b,c);
assign sum=(a^b)^c,
	carry=(a&b)|(b&c)|(c&a);
endmodule
