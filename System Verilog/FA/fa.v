module full_adder( input logic [3:0] a,b, input logic cin, output logic [3:0] sum,output logic cout);
always_comb
	assign sum = a^b^cin;
	assign cout = (c&(a^b))|(a&b);
	endmodule: full_adder

