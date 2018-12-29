module symetryczny(clk,x_in, y_out,rst);

input clk;
input rst;
input signed [7:0] x_in;
output signed [9:0] y_out;

wire signed [8:0] t0,t1,t2;
wire signed [7:0] t3;

reg signed [7:0] tap[0:6];
reg signed [23:0] y;

integer i;
integer k;

assign t0 = tap[0]+tap[6] ;
assign t1 = tap[1]+tap[5] ;
assign t2 = tap[2]+tap[4] ;
assign t3 = tap[3];

assign y_out = y[23:14];

always@(posedge clk, posedge rst)

if(rst)
  begin
    for(k=0;k<=6;k=k+1)
    begin
    tap[k]<=0;
    end
   y<=0; 
  end
  
  
else
begin
  
y <= ((-(t0<<11)+(t0<<9)+(t0<<5)+(t0<<3)+t0)+
				(-(t1<<10)+(t1<<6)+(t1<<4)+(t1<<1))+
				((t2<<14)-(t2<<12)-(t2<<11)-(t2<<9)-(t2<<5)-(t2<<3)-t2)+
				((t3<<14)+(t3<<10)+(t3<<9)+(t3<<8)+(t3<<6)+(t3<<4)+(t3<<3)+(t3<<2)+t3));

for(i=1;i<=6;i=i+1)
	begin
		tap[i]<=tap[i-1];
	end
tap[0]<=x_in;
end
endmodule
