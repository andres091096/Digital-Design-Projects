`timescale 1ns / 1ps
`default_nettype none
// Q4.18

module PWL_Top(clk,reset,load_enable, o_x, o_y, o_z , fx, fy, fz);
  input  wire clk;
  input  wire reset;
  input  wire load_enable;
  output wire  [21:0] o_x;
  output wire  [21:0] o_y;
  output wire  [21:0] o_z;
  
  output wire  [41:0] fx;
  output wire  [41:0] fy;
  output wire  [41:0] fz;
  
  
  localparam signed a   = 22'b0000_101100110011001101; //0.7;
  localparam signed b   = 22'b0000_101100110011001101; //0.7;
  localparam signed c   = 22'b0000_101100110011001101; //0.7;
  localparam signed d   = 22'b0000_101100110011001101; //0.7;
  localparam signed dt  = 22'b0000_000000101000111101; //Time step = 0.01;

  localparam signed k_2 = 22'b0001_000000000000000000; // 1
  localparam signed k_1 = 22'b1111_000000000000000000; //-1
                       
  localparam signed q_2 = 22'b0000_000001000011100101; // 0.0165
  localparam signed q_1 = 22'b1111_111110111100011011; //-0.0165
 
  localparam signed m   = 24'b111100_100110110010001011; //60.606;
  /// Variables
  reg signed [41:0] x = 42'b000000_000110011001100110011001100110011001; //0.1
  reg signed [41:0] y = 42'b000000_000110011001100110011001100110011001; //0.1
  reg signed [41:0] z = 42'b000000_000110011001100110011001100110011001; //0.1

  
  reg signed [41:0] mult_temp = {42{1'b0}} ;
   
  reg signed [21:0] f = {22{1'b0}};
  wire signed [21:0] x_temp;
  wire signed [21:0] y_temp;
  wire signed [21:0] z_temp;
						
  always @(x or k_1 or k_2 or m )
  begin
    if  (x_temp < q_1) begin
       f = k_1;
    end else if((x_temp > q_1) && (x_temp < q_2)) begin
       mult_temp = m*(x_temp-q_2);
       f = mult_temp[41:18]+k_2;
    end else if(x_temp > q_2) begin
       f = k_2;
    end
  end
  
  
  
  
  assign fx = y;
  assign fy = z;
  assign fz = (d*f-a*x_temp-b*y_temp-c*z_temp);
  
  
  wire signed [21:0] fx_small;
  wire signed [21:0] fy_small;
  wire signed [21:0] fz_small;
  
  assign fx_small = fx[41:18];
  assign fy_small = fy[41:18];
  assign fz_small = fz[41:18];
  
  always @(posedge clk)
      if (reset)
         x <= 42'b000000_000110011001100110011001100110011001; //0.1
      else 
         x <= x+dt*fx_small;
         
   always @(posedge clk)
      if (reset)
         y <= 42'b000000_000110011001100110011001100110011001; //0.1
      else 
         y <= y+dt*fy_small;
         
   always @(posedge clk)
      if (reset)
         z <= 42'b000000_000110011001100110011001100110011001; //0.1
      else 
         z <= z+dt*fz_small;	
   
   assign x_temp = x[41:18]; 
   assign y_temp = y[41:18];
   assign z_temp = z[41:18];
   assign o_x = x_temp; 
   assign o_y = y_temp;
   assign o_z = z_temp;
      
endmodule


