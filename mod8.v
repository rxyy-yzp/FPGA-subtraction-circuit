module mod8(a,rst,out1);
input a;
input rst;
output [6:0] out1;
reg [3:0]q=7;

wire clk_div;
div(.clk_in(a),.clk_div(clk_div));

always@(posedge clk_div)
begin
	if(rst==1)
		q<=2;
	else
	begin
		if(q==4'b0000)
			q<=4'b0111;
		else
			q<=q-1;
	end
end

wire [6:0]out1;
decorder(.q(q),.out1(out1));

endmodule