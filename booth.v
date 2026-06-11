module booth(y,m,q);
input [3:0]m,q;
output reg[7:0]y;
reg q1;
reg [3:0]m1;
integer i;
always@(m,q)
begin
y={4'b0000,q};
q1=0;
m1=-m;
for(i=0;i<4;i=i+1)
begin
case({q[i],q1})
2'b01:y[7:4] = y[7:4]+m;
2'b10:y[7:4] = y[7:4]+m1;
endcase
y={y[7],y[7:1]};
q1 = q[i];
end
end
endmodule
