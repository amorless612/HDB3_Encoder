`timescale 1ns/1ns

module hdb3_plug_b(
input rst_n,
input clk,
input [1:0] data_plug_v,
output [1:0] data_plug_b
);

reg count_1; 
reg [1:0] count_v; 
reg [1:0] data[3:0];
reg [1:0] i;
	
always@(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
		count_1 <= 1'b0;
		count_v <= 1'b0;
	  end
  else begin
	  if(data[0] == 2'b11) begin
			count_1 <= 1'b0; 
			count_v <= count_v + 1'b1;
		  end
	  else if(data[0] == 2'b01) begin
			count_1 <= count_1 + 1'b1;
			if(count_v  == 2'd2) count_v <= 1'b1;
		  end
	  else begin
			if(count_v  == 2'd2) count_v <= 1'b1;
		  end
	end
end

always@(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
		//	for (i=0; i<3; i=i+1)
		//		data[i] <= 2'b0;
			data[3] <= 2'b0;
			data[2] <= 2'b0;
			data[1] <= 2'b0;
			data[0] <= 2'b0;
		end
		else begin
			data[3] <= data[2];
			data[2] <= data[1];
			data[1] <= data[0];
			data[0] <= data_plug_v;
		end
end

assign data_plug_b = (count_1 == 1'b0)&&(count_v == 1'b1)&&(data[0] == 2'b11) ? 2'b10 : data[3];
	
endmodule
