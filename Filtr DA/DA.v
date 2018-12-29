module DA(clk, x_in, y_out, rst);

	input rst;
	input clk;
	input signed [7:0] x_in;
	output signed [9:0] y_out;
	
	reg signed [23:0] y;
	wire [6:0] x0, x1, x2, x3, x4, x5, x6, x7;
	reg [7:0] h0, h1, h2, h3, h4, h5, h6; // przesuwane probki
	wire [16:0] o0, o1, o2, o3, o4, o5, o6, o7; // wyjscia z LUT
	reg [23:0] i0, i1, i2, i3, i4, i5, i6, i7; // wejscia do pierwszej warstwy sumatorow
	reg [23:0] s01, s23, s45, s67; // wyjscia z pierwszej warstwy = wejscia do drugiej warstwy sumatorow
	reg [23:0] r1, r2; // wyjscia z drugiego poziomu sumatorow = wejscia do ostatniego
  
  assign y_out = y[23:14];
	
	always@(posedge clk, posedge rst)
	
if(rst)
begin
h0<=0; h1<=0; h2<=0; h3<=0; h4<=0; h5<=0; h6<=0; 
i0<=0; i1<=0; i2<=0; i3<=0; i4<=0; i5<=0; i6<=0; i7<=0; 
s01<=0; s23<=0; s45<=0; s67<=0; 
r1<=0; r2<=0;
y<=0;
end
    
else
	 
	begin
		h0 <= x_in;
		h1 <= h0;
		h2 <= h1;
		h3 <= h2;
		h4 <= h3;
		h5 <= h4;
		h6 <= h5;
		
		i0 <= {{7{o0[16]}},o0};
		i1 <= {{7{o1[16]}},o1};
		i2 <= {{7{o2[16]}},o2};
		i3 <= {{7{o3[16]}},o3};
		i4 <= {{7{o4[16]}},o4};
		i5 <= {{7{o5[16]}},o5};
		i6 <= {{7{o6[16]}},o6};
		i7 <= {{7{o7[16]}},o7};
		
		// sumowanie wymnozonych probek
		s01 <= i0 + (i1<<1);
		s23 <= i2 + (i3<<1);
		s45 <= i4 + (i5<<1);
		s67 <= i6 - (i7<<1);
		
		r1 <= s01 + (s23<<2);
		r2 <= s45 + (s67<<2);

		y <= r1 + (r2<<4);
	
				
	end
	
	assign x0 = {h6[0],h5[0],h4[0],h3[0],h2[0],h1[0],h0[0]};
	assign x1 = {h6[1],h5[1],h4[1],h3[1],h2[1],h1[1],h0[1]};
	assign x2 = {h6[2],h5[2],h4[2],h3[2],h2[2],h1[2],h0[2]};
	assign x3 = {h6[3],h5[3],h4[3],h3[3],h2[3],h1[3],h0[3]};
	assign x4 = {h6[4],h5[4],h4[4],h3[4],h2[4],h1[4],h0[4]};
	assign x5 = {h6[5],h5[5],h4[5],h3[5],h2[5],h1[5],h0[5]};
	assign x6 = {h6[6],h5[6],h4[6],h3[6],h2[6],h1[6],h0[6]};
	assign x7 = {h6[7],h5[7],h4[7],h3[7],h2[7],h1[7],h0[7]};
	
	LUT lut_Table0(.table_in(x0),.table_out(o0));
	LUT lut_Table1(.table_in(x1),.table_out(o1));
	LUT lut_Table2(.table_in(x2),.table_out(o2));
	LUT lut_Table3(.table_in(x3),.table_out(o3));
	LUT lut_Table4(.table_in(x4),.table_out(o4));
	LUT lut_Table5(.table_in(x5),.table_out(o5));
	LUT lut_Table6(.table_in(x6),.table_out(o6));
	LUT lut_Table7(.table_in(x7),.table_out(o7));
		
endmodule