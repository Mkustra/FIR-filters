module hcub(clk, rst, x_in, y_out);
input clk;
input rst;
input signed [7:0] x_in;
output signed [9:0] y_out;
	
reg [23:0] x_r;
reg [23:0] h_wspl[6:0];

wire [23:0] t9, t41, t163, t471, t1495, t9687, t18269;
	
assign t9 = (x_r<<3) + x_r; //9*x_in
assign t41 = (x_r<<5) + t9; // 41*x_in
assign t163 = x_r - (t41<<2); // -163*x_in
assign t471 = t41 - (x_r<<9); // -471*x_in
assign t1495 = (x_r<<10) - t471; // 1495*x_in
assign t9687 = (t9<<10) - t471; // 9687*x_in
assign t18269 = t163 + (t9<<11);// 18269*x_in
	
assign y_out = h_wspl[6][23:14];
	
integer k;
	
	
always@(posedge clk, posedge rst)
	
if(rst) 
	begin
	 for(k=0;k<=6;k=k+1)
	   h_wspl[k]<=0;
	   x_r<=0;
	  end
    
 else
    
begin
  x_r[23:0] <= {{16{x_in[7]}},x_in}; 
		 
	h_wspl[0] <= -t1495;
	h_wspl[1] <= h_wspl[0] + (t471<<1);
	h_wspl[2] <= h_wspl[1] + t9687;
	h_wspl[3] <= h_wspl[2] + t18269;
	h_wspl[4] <= h_wspl[3] + t9687;
	h_wspl[5] <= h_wspl[4] + (t471<<1);
	h_wspl[6] <= h_wspl[5] - t1495;
	
end
endmodule