module t_ff(clk,rst,t,q,qb);
input clk,rst;
input t;
output reg q,qb;
always@(posedge clk)
begin 
	if(rst==1)
		begin
			q=0;qb=~q;
		end
		else begin
		q=~q;qb=~q;
		end
			
		
end
endmodule