module right_shift( clk,rst,din,load,sin,out);
input clk,rst;
input load;
input [3:0]din;
input sin;
output reg [3:0]out;

always@(posedge clk)
begin
	if(rst)
	out<=0;
	else
	begin
	if(load)
			out<=din;
		else
			out<={sin, out[3:1]};
	end
end
	endmodule
