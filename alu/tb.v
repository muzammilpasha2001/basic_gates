module tb;
reg [7:0]a,b;
reg [3:0]opcode;
wire [7:0]alu_out;
wire carryout;
initial
begin
$dumpfile("my.vcd");
$dumpvars;
end
alu dut(a,b,opcode,alu_out,carryout);
initial
begin
$monitor($time, "a=%d, b=%d, opcode=%b, alu_result=%d; carryout=%b", a,b,opcode,alu_out, carryout); 
    a=8'd10;b=8'd5;
#10		opcode=4'b0000;
#10 		opcode=4'b0001;
#10 		opcode=4'b0010;
#10 		opcode=4'b0011;
#10 		opcode=4'b0100;
#10 		opcode=4'b0101;
#10 		opcode=4'b0110;
#10 		opcode=4'b0111;
#10 		opcode=4'b1000;
#10 		opcode=4'b1001;
#10 		opcode=4'b1010;
#10 		opcode=4'b1011;
#10 		opcode=4'b1100;
#10 		opcode=4'b1101;
#10 		opcode=4'b1110;
#10 		opcode=4'b1111;
#10 $finish;
end
endmodule