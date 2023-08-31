module dec4x16_2x4(output [15:0]y,input [3:0]i,input en);
wire [3:0]w;
dec2x4 d0(w[3:0],i[3:2],en);
dec2x4 d1(y[3:0],i[1:0],w[0]);
dec2x4 d2(y[7:4],i[1:0],w[1]);
dec2x4 d3(y[11:8],i[1:0],w[2]);
dec2x4 d4(y[15:12],i[1:0],w[3]);
endmodule

module dec2x4(output reg[3:0]y,input [1:0]i,input en);
always@(*)
begin
if(!en)
y=4'b0000;
else
case(i)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
default:y='bx;
endcase
end
endmodule
