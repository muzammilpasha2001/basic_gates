module jk_ff(clk,rst,JK,q,qb);
input clk,rst;
input [1:0]JK;
output reg q,qb;
always@(posedge clk,posedge rst)
begin 
	if(rst==1)
		begin
			q=0;qb=~q;
		end
		else begin
			case(JK)
			2'b00:q=q; 
			2'b01:q=1'b0;
			2'b10:q=1'b1;
			2'b11:q=~q;
			default:q=1'b0;
		endcase
			qb=~q;
		end
		
end
endmodule