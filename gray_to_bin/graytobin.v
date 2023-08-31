//8-bit gray to bin
module graytobin_8bit(
    output [7:0]b,
	 input [7:0]g);
assign b[7]=g[7],
			b[6]=b[7]^g[6],
			b[5]=b[6]^g[5],
			b[4]=b[5]^g[4],
			b[3]=b[4]^g[3],
			b[2]=b[3]^g[2],
			b[1]=b[2]^g[1],
			b[0]=b[1]^g[0];
endmodule
