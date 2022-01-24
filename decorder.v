module decorder(q,out1);
input [3:0]q;
output reg [6:0]out1;

always@(q)
begin
	case(q)
	4'b0000: out1<=7'b1000000;
   4'b0001: out1<=7'b1111001;
   4'b0010: out1<=7'b0100100;
   4'b0011: out1<=7'b0110000;
   4'b0100: out1<=7'b0011001;
   4'b0101: out1<=7'b0010010;
   4'b0110: out1<=7'b0000010;
   4'b0111: out1<=7'b1111000;
   4'b1000: out1<=7'b0000000;
	default:out1<=7'b1111111;
	endcase
end

endmodule