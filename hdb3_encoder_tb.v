`timescale 1ns/1ns

module hdb3_encoder_tb();

  reg rst_n;
  reg clk;
  reg data_in;
  reg en;
  
//  initial 
//  begin
//        rst_n=1'b0;
//    #10 rst_n=1'b1;
 // end
  
initial begin
    clk=1'b0;
forever
    #1 clk=~clk;
end
  
initial begin
  en = 1'b0;
  data_in=1'b0;
  rst_n=1'b0;
/*        data_in=1'b0;
    #11 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
*/
    #10 rst_n=1'b1;

    #5 data_in=1'b1; en = 1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b1; 

    #2 data_in=1'b0; en = 1'b0;
    #20 rst_n=1'b0;
    #10 rst_n=1'b1;

    #5 data_in=1'b1; en = 1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b0;
    #2 data_in=1'b1;
    #2 data_in=1'b1;
    #2 data_in=1'b0;
    #2 data_in=1'b1; 

    #2 data_in=1'b0; en = 1'b0;
 end
  
  hdb3_encoder U_hdb3_encoder(
  .rst_n      (rst_n),
  .clk        (clk),
  .data_in    (data_in),
  .en         (en),
  .bp         (bp),
  .bn         (bn)
  );
  
 endmodule
 
