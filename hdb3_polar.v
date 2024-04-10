`timescale 1ns/1ns

module hdb3_polar(
  input rst_n,
  input clk,
  input [1:0] data_plug_b,
  output bp,
  output bn
);
	reg [1:0] polarout;
	reg bp;  
	reg bn;
	reg even;

always @ (posedge clk or negedge rst_n) begin
	if (!rst_n) begin
    even <= 1'b0;
    polarout <= 2'b00;
	  end
	else begin
		if((data_plug_b == 2'b01) || (data_plug_b == 2'b10)) begin
			if(even == 1'b1)
				polarout <= 2'b01;
			else begin
				polarout <= 2'b10;  
			  even <= ~even;
        end
		  end

		else if(data_plug_b == 2'b11) begin
			if(even == 1'b1)
				polarout <= 2'b10;
			else
				polarout <= 2'b01;
		  end

		else begin
				polarout <= 2'b00;
      end
	end
end
		
always @ (posedge clk or negedge rst_n) begin
	if (!rst_n) begin
    bp <= 1'b0;
		bn <= 1'b0;
	  end	
	else begin
		if(polarout == 2'b01) begin
			bp <= 1'b1;
			bn <= 1'b0;
		  end
		else if(polarout == 2'b10) begin
			bp <= 1'b0;
			bn <= 1'b1;
		  end		
		else begin
			bp <= 1'b0;
			bn <= 1'b0;
		  end						
	end
end

endmodule
  
         
    
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         