`timescale 1ns / 1ps
module MAC#( 
parameter WIDTH  = 14 //Bit-width (Input);
)(  input clk,
    input reset,
    input enable,
    input signed [WIDTH-1:0] a,
    input signed [WIDTH-1:0] b,
    output signed [2*WIDTH-1:0] c
);


 wire signed [2*WIDTH-1:0] P; ///Multiply resutl
 
 assign P = a*b;
 
 reg signed [2*WIDTH-1:0] Q = {2*WIDTH{1'b0}};


 always @ (posedge clk)
    if (reset)
       Q <= 0;
    else if (enable)
       Q <= Q + P;
   
   assign c = Q;
 
 
endmodule
