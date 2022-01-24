module div(clk_in,clk_div);
input clk_in;
output reg clk_div;
parameter n1=49999999;
integer m;

always@(posedge clk_in)
begin
	if(m==n1)
	begin
		clk_div<=1;
		m<=0;
	end
	else
	begin
		m<=m+1;
		clk_div=0;
	end
end

endmodule