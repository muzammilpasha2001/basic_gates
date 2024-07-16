module d_ff(clk,rst,d,q,qb);
input clk,rst;
input d;
output reg q,qb;
always@(posedge clk,posedge rst)
begin 
	if(rst==1)
		begin
			q=0;qb=~q;
		end
		else begin
		q=d;
		end
			qb=~q;
		
end
endmodule