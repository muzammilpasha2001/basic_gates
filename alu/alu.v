module alu(a,b,opcode,alu_out,carryout);
input [7:0]a,b;
input [3:0]opcode;
output [7:0]alu_out;
output carryout;
reg [7:0]alu_result;
wire [8:0]temp;
assign alu_out=alu_result;
assign temp = {1'b0,a}+{1'b0,b};
assign carryout=temp[8];
always@(*)
begin
	case(opcode)
		4'b0000:alu_result=a+b;
		4'b0001:alu_result=a-b;
		4'b0010:alu_result=a*b;
		4'b0011:alu_result=a/b;
		4'b0100:alu_result=~a;
		4'b0101:alu_result=~b;
		4'b0110:alu_result=a&b;
		4'b0111:alu_result=a^b;
		4'b1000:alu_result=a|b;
		4'b1001:alu_result=~(a&b);
		4'b1010:alu_result=~(a^b);
		4'b1011:alu_result=~(a|b);
		4'b1100:alu_result=a;
		4'b1101:alu_result=b;
		4'b1110:alu_result=a<<1;
		4'b1111:alu_result=b<<1;
		default:alu_result=8'd0;
endcase
end
endmodule

