module priority_enc8x3(b,i,en);
output reg[2:0]b;
input [7:0]i;
input en;
always @(*)
begin
	if(!en)
		b='bx;
	else
	begin
		if(i[7]==1)
			b=3'b111;
		else if(i[6]==1)
			b=3'b110;
		else if(i[5]==1)
			b=3'b101;
		else if(i[4]==1)
			b=3'b100;
		else if(i[3]==1)
			b=3'b011;
		else if(i[2]==1)
			b=3'b010;
		else if(i[1]==1)
			b=3'b001;
		else if(i[0]==1)
			b=3'b000;
		else
			b='bx;
	end 
end
endmodule
