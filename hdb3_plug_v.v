`timescale 1ns/1ns

module hdb3_plug_v(
  input rst_n,
  input clk,
  input data_in,
  output [1:0] data_plug_v
);

reg [1:0] data_plug_v;
reg [1:0] count;
	
always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
			count <= 2'd0;
			data_plug_v <= 2'b00;
		  end
	else begin
		if (data_in == 1'b1) begin
			count <= 2'd0;
			data_plug_v <= 2'b01;
			end
		else begin
			count <= count + 1'b1;
				if (count == 2'd3) begin
					count <= 2'd0;
					data_plug_v <= 2'b11;
				  end
				else
					data_plug_v <= 2'b00;
			end
	  end				
end

endmodule

    