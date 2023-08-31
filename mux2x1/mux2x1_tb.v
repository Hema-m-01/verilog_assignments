module mux2x1_tb;
reg s;
reg [1:0]i;
wire y;
mux2x1 mux(y,i,s);
initial
begin
	i=0;s=0;
   #80 $finish();
end
always #5 s=~s;
always #10 i[0]=~i[0];
always #20 i[1]=~i[1];
endmodule
