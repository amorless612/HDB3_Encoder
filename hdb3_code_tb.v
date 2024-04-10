`timescale 1ns/1ns

module hdb3_code_tb();

  reg rst_n;
  reg clk;
  
  reg data_in;
  wire [1:0] w_hdb3_code;
  
  initial 
  begin
        rst_n=1'b0;
    #10 rst_n=1'b1;
  end
  
  initial 
  begin
    clk=1'b0;
    forever
      #1 clk=~clk;
  end
  
  initial 
  begin
        data_in=1'b0;
    #10 data_in=1'b1;
    #50 data_in=1'b1;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b1;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b1;
    #50 data_in=1'b1;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b1;
    #50 data_in=1'b1;
    #50 data_in=1'b1;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
    #50 data_in=1'b0;
  end
  
  hdb3_encoder U_hdb3_encoder(
  .rst_n      (rst_n),
  .clk        (clk),
  .data_in    (data_in),
  .bp         (bp),
  .bn         (bn)
  );
  
 endmodule
 