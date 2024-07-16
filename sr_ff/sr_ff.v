module sr_ff(clk,rst,SR,q,qb);
input clk,rst;
input [1:0]SR;
output reg q,qb;
always@(posedge clk,posedge rst)
begin 
	if(rst==1)
		begin
			q=0;qb=~q;
		end
		else begin
			case(SR)
			2'b00:q=q; 
			2'b01:q=1'b0;
			2'b10:q=1'b1;
			2'b11:q=1'bx;
			default:q=1'b0;
		endcase
			qb=~q;
		end
		
end
endmodule