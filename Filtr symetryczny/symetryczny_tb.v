module symetryczny_tb;
reg [7:0] x_in; reg clk;reg rst;
wire [9:0] y_out;

always
#50 clk =~ clk;

initial begin
 clk=1'b0;
 x_in=8'sd 0; //reset
 rst=1'sd 1;
 #60 rst=1'sd 0;
 
 #300 x_in=8'sd 1; //delta kroneckera
 #100 x_in=8'sd 0;
 
 #750 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 #60 x_in=-8'sd 1; // - delta kroneckera
 #100 x_in=8'sd 0;
 
 #750 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 #60 x_in=8'sd 100; // sygnal jednostkowy 100
 #100 x_in=8'sd 0;
 
 #750 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 #60 x_in=-8'sd 100; // sygnal jednostkowy -100
 #100 x_in=8'sd 0;
 
 #750 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 #100 x_in=-8'sd 128; //najwieksza odpowiedz = 5404533
 #100 x_in=-8'sd 128;
 #100 x_in=8'sd 127;
 #100 x_in=8'sd 127;
 #100 x_in=8'sd 127;
 #100 x_in=-8'sd 128;
 #100 x_in=-8'sd 128;
 #100 x_in=8'sd 0;
 
 #100 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 #100 x_in=8'sd 127; //najmniejsza odpowiedz = -5437302
 #100 x_in=8'sd 127;
 #100 x_in=-8'sd 128;
 #100 x_in=-8'sd 128;
 #100 x_in=-8'sd 128;
 #100 x_in=8'sd 127;
 #100 x_in=8'sd 127;
 #100 x_in=8'sd 0;
 
 #100 rst=1'sd 1; //reset
 #100 rst=1'sd 0;
 
 end
 
 symetryczny dut(.clk(clk),.x_in(x_in),.y_out(y_out),.rst(rst));
 
 endmodule
 