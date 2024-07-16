module encoder( in, en, out);
input [7:0] in;
input en;
output reg[2:0]out;
always@(in, en) 
begin
	if(en==0)
		out<=3'b000;
	else 
		case(in)
			8'd1:out<=3'b000;
			8'd2:out<=3'b001;
			8'd4:out<=3'b010;
	                8'd8:out<=3'b011;
		 	8'd16:out<=3'b100;
			8'd32:out<=3'b101;
	 		8'd64:out<=3'b110;
			8'd128:out<=3'b111;
			default:out<=3'bzzz;
		endcase
	end
	endmodule


