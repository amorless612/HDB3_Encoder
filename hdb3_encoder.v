`timescale 1ns/1ns

module hdb3_encoder(
  input rst_n,
  input clk,
  input data_in,
  input en,
  output [1:0] hdb3_data_out,
  output bp,
  output bn
);

wire [1:0] data_plug_v;
wire [1:0] data_plug_b;

hdb3_plug_v U_hdb3_plug_v(
  .rst_n          (rst_n),
  .clk            (clk),
  .data_in        (data_in),
  .en             (en),
  .data_plug_v    (data_plug_v)
);


hdb3_plug_b U_hdb3_plug_b(
  .rst_n          (rst_n),
  .clk            (clk),
  .data_plug_v    (data_plug_v),
  .data_plug_b    (data_plug_b)
);

hdb3_polar U_hdb3_polar(
  .rst_n          (rst_n),
  .clk            (clk),
  .data_plug_b    (data_plug_b),
  .bp             (bp),
  .bn             (bn)
);

endmodule

