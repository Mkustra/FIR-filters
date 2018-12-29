//DA table generator v. 1.6

//Filter from file: C:\Users\Emili\Desktop\Semestr V\PRUS\Projekt\lut.in

//Real coefficients: 
//-1495 -942 9687 18269 9687 -942 -1495 

module LUT(table_in,table_out);
input [6:0] table_in;
output reg [16:0] table_out;

always@(table_in)
begin
          case (table_in)
          7'b0000000:table_out = 17'sd0;
          7'b0000001:table_out = -17'sd1495;
          7'b0000010:table_out = -17'sd942;
          7'b0000011:table_out = -17'sd2437;
          7'b0000100:table_out = 17'sd9687;
          7'b0000101:table_out = 17'sd8192;
          7'b0000110:table_out = 17'sd8745;
          7'b0000111:table_out = 17'sd7250;
          7'b0001000:table_out = 17'sd18269;
          7'b0001001:table_out = 17'sd16774;
          7'b0001010:table_out = 17'sd17327;
          7'b0001011:table_out = 17'sd15832;
          7'b0001100:table_out = 17'sd27956;
          7'b0001101:table_out = 17'sd26461;
          7'b0001110:table_out = 17'sd27014;
          7'b0001111:table_out = 17'sd25519;
          7'b0010000:table_out = 17'sd9687;
          7'b0010001:table_out = 17'sd8192;
          7'b0010010:table_out = 17'sd8745;
          7'b0010011:table_out = 17'sd7250;
          7'b0010100:table_out = 17'sd19374;
          7'b0010101:table_out = 17'sd17879;
          7'b0010110:table_out = 17'sd18432;
          7'b0010111:table_out = 17'sd16937;
          7'b0011000:table_out = 17'sd27956;
          7'b0011001:table_out = 17'sd26461;
          7'b0011010:table_out = 17'sd27014;
          7'b0011011:table_out = 17'sd25519;
          7'b0011100:table_out = 17'sd37643;
          7'b0011101:table_out = 17'sd36148;
          7'b0011110:table_out = 17'sd36701;
          7'b0011111:table_out = 17'sd35206;
          7'b0100000:table_out = -17'sd942;
          7'b0100001:table_out = -17'sd2437;
          7'b0100010:table_out = -17'sd1884;
          7'b0100011:table_out = -17'sd3379;
          7'b0100100:table_out = 17'sd8745;
          7'b0100101:table_out = 17'sd7250;
          7'b0100110:table_out = 17'sd7803;
          7'b0100111:table_out = 17'sd6308;
          7'b0101000:table_out = 17'sd17327;
          7'b0101001:table_out = 17'sd15832;
          7'b0101010:table_out = 17'sd16385;
          7'b0101011:table_out = 17'sd14890;
          7'b0101100:table_out = 17'sd27014;
          7'b0101101:table_out = 17'sd25519;
          7'b0101110:table_out = 17'sd26072;
          7'b0101111:table_out = 17'sd24577;
          7'b0110000:table_out = 17'sd8745;
          7'b0110001:table_out = 17'sd7250;
          7'b0110010:table_out = 17'sd7803;
          7'b0110011:table_out = 17'sd6308;
          7'b0110100:table_out = 17'sd18432;
          7'b0110101:table_out = 17'sd16937;
          7'b0110110:table_out = 17'sd17490;
          7'b0110111:table_out = 17'sd15995;
          7'b0111000:table_out = 17'sd27014;
          7'b0111001:table_out = 17'sd25519;
          7'b0111010:table_out = 17'sd26072;
          7'b0111011:table_out = 17'sd24577;
          7'b0111100:table_out = 17'sd36701;
          7'b0111101:table_out = 17'sd35206;
          7'b0111110:table_out = 17'sd35759;
          7'b0111111:table_out = 17'sd34264;
          7'b1000000:table_out = -17'sd1495;
          7'b1000001:table_out = -17'sd2990;
          7'b1000010:table_out = -17'sd2437;
          7'b1000011:table_out = -17'sd3932;
          7'b1000100:table_out = 17'sd8192;
          7'b1000101:table_out = 17'sd6697;
          7'b1000110:table_out = 17'sd7250;
          7'b1000111:table_out = 17'sd5755;
          7'b1001000:table_out = 17'sd16774;
          7'b1001001:table_out = 17'sd15279;
          7'b1001010:table_out = 17'sd15832;
          7'b1001011:table_out = 17'sd14337;
          7'b1001100:table_out = 17'sd26461;
          7'b1001101:table_out = 17'sd24966;
          7'b1001110:table_out = 17'sd25519;
          7'b1001111:table_out = 17'sd24024;
          7'b1010000:table_out = 17'sd8192;
          7'b1010001:table_out = 17'sd6697;
          7'b1010010:table_out = 17'sd7250;
          7'b1010011:table_out = 17'sd5755;
          7'b1010100:table_out = 17'sd17879;
          7'b1010101:table_out = 17'sd16384;
          7'b1010110:table_out = 17'sd16937;
          7'b1010111:table_out = 17'sd15442;
          7'b1011000:table_out = 17'sd26461;
          7'b1011001:table_out = 17'sd24966;
          7'b1011010:table_out = 17'sd25519;
          7'b1011011:table_out = 17'sd24024;
          7'b1011100:table_out = 17'sd36148;
          7'b1011101:table_out = 17'sd34653;
          7'b1011110:table_out = 17'sd35206;
          7'b1011111:table_out = 17'sd33711;
          7'b1100000:table_out = -17'sd2437;
          7'b1100001:table_out = -17'sd3932;
          7'b1100010:table_out = -17'sd3379;
          7'b1100011:table_out = -17'sd4874;
          7'b1100100:table_out = 17'sd7250;
          7'b1100101:table_out = 17'sd5755;
          7'b1100110:table_out = 17'sd6308;
          7'b1100111:table_out = 17'sd4813;
          7'b1101000:table_out = 17'sd15832;
          7'b1101001:table_out = 17'sd14337;
          7'b1101010:table_out = 17'sd14890;
          7'b1101011:table_out = 17'sd13395;
          7'b1101100:table_out = 17'sd25519;
          7'b1101101:table_out = 17'sd24024;
          7'b1101110:table_out = 17'sd24577;
          7'b1101111:table_out = 17'sd23082;
          7'b1110000:table_out = 17'sd7250;
          7'b1110001:table_out = 17'sd5755;
          7'b1110010:table_out = 17'sd6308;
          7'b1110011:table_out = 17'sd4813;
          7'b1110100:table_out = 17'sd16937;
          7'b1110101:table_out = 17'sd15442;
          7'b1110110:table_out = 17'sd15995;
          7'b1110111:table_out = 17'sd14500;
          7'b1111000:table_out = 17'sd25519;
          7'b1111001:table_out = 17'sd24024;
          7'b1111010:table_out = 17'sd24577;
          7'b1111011:table_out = 17'sd23082;
          7'b1111100:table_out = 17'sd35206;
          7'b1111101:table_out = 17'sd33711;
          7'b1111110:table_out = 17'sd34264;
          7'b1111111:table_out = 17'sd32769;
          endcase
		  end
		  endmodule