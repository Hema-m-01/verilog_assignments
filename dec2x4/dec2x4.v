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
