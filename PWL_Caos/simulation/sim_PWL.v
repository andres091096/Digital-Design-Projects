`timescale 1ns / 1ps
module sim_PWL();


  reg clk;
  reg reset;
  reg load_enable;
  wire  [21:0] o_x;
  wire  [21:0] o_y;
  wire  [21:0] o_z;
  
  wire  [41:0] fx;
  wire  [41:0] fy;
  wire  [41:0] fz;
  
  PWL_Top UUT(.clk(clk),.reset(reset),.load_enable(load_enable), .o_x(o_x), .o_y(o_y), .o_z(o_z), .fx(fx), .fy(fy), .fz(fz) );
  parameter PERIOD = 10;
  integer outfilex, outfiley, outfilez, i; //file descriptors
  
   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end
  initial 
  begin
  outfilex=$fopen("/home/andres/Documentos/Caos/C_implementation/X.txt","w");
  outfiley=$fopen("/home/andres/Documentos/Caos/C_implementation/Y.txt","w");
  outfilez=$fopen("/home/andres/Documentos/Caos/C_implementation/Z.txt","w");
  reset=1'b1;
  load_enable=1'b1;
  //i_x = 14'b111_00000000000; //-1
  #15;
  reset=1'b0;
//  #15;
//  load_enable=1'b0;
  for (i = 0; i<90000; i=i+1) begin
      @(posedge clk);
      $display("%d: LFSR %b", i, o_y);
      
      $fwrite(outfilex,"%b\n", o_x);
      $fwrite(outfiley,"%b\n", o_y);
      $fwrite(outfilez,"%b\n", o_z);
      
      /*
      $fwrite(outfilex,"%b\n", fx);
      $fwrite(outfiley,"%b\n", fy);
      $fwrite(outfilez,"%b\n", fz);*/
  end
  
  $fclose(outfilex);
  $fclose(outfiley);
  $fclose(outfilez);
  end  
//1_0010011100000
//00000000000000001_10110010011100000
//111111111111_0000110110010011100000
//                     10010011100000
//0_111100100110100
//
//1_000011011001100
endmodule
//   010_011110010010010101
//111010_011110010010010101_010011100111111010