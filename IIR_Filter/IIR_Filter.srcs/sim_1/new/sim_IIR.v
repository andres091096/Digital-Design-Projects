`timescale 1ns / 1ps
module sim_IIR();
parameter WIDTH  = 22; //Bit-width (Input)
parameter Order  = 5;  //Filter length
reg clk;
reg reset;
reg start;
reg [WIDTH-1:0] x_in;
wire [2*WIDTH-1:0] y_out;

Top_IIR
#(.WIDTH(WIDTH),
  .Order(Order))UTT(
  .clk(clk),
  .reset(reset),
  .start(start),
  .x_in(x_in),
  .y_out(y_out)
    );
    
    
  parameter PERIOD = 10;
  integer fileid; //file descriptors
   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end
   
  initial 
  begin
  fileid=$fopen("/home/andres/Documentos/Digitales/IIR_Filter/Code/Input_bin.mem","r");
  if(!fileid) $display("ERROR: CAN NOT OPEN THE FILE!");
  reset=1'b1;
  start=1'b0;
  
  #10;
  reset=1'b0;
  start=1'b1;
    //read line by line.
    while (! $feof(fileid)) begin //read until an "end of file" is reached.
        $fscanf(fileid,"%b\n",x_in); //scan each line and get the value as an hexadecimal, use %b for binary and %d for decimal.
        #60; //wait some time as needed.
    end 
    //once reading and writing is finished, close the file.
    $fclose(fileid);
    
  /*
  for (i = 0; i<90; i=i+1) begin
      @(posedge clk);
      $display("data_file handle was NULL %d",i);
      $readmemb ("/home/andres/Documentos/Digitales/IIR_Filter/Code/Input_bi.mem", ex1_memory,15);    
  end
  */
  
  
  end

endmodule
