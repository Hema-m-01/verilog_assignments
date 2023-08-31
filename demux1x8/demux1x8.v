module demux1x8(output [7:0]y,input i,input [2:0]s);
assign y[0]=(~s[2]&~s[1]&~s[0]&i),
		y[1]=(~s[2]&~s[1]&s[0]&i),
		y[2]=(~s[2]&s[1]&~s[0]&i),
		y[3]=(~s[2]&s[1]&s[0]&i),
		y[4]=(s[2]&~s[1]&~s[0]&i),
		y[5]=(s[2]&~s[1]&s[0]&i),
		y[6]=(s[2]&s[1]&~s[0]&i),
		y[7]=(s[2]&s[1]&s[0]&i);
endmodule
