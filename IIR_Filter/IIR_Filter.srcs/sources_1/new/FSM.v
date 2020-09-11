`timescale 1ns / 1ps
module FSM(
    input clk,
    input reset,
    input start,
    input done_cuenta,
    
    
    output reg shift,
    output reg reset_contar,
    output reg enable_MAC1,
    output reg enable_MAC2
    );
    
    
   parameter state1 = 2'b00;
   parameter state2 = 2'b01;
   parameter state3 = 2'b10;
   parameter state4 = 2'b11;

   reg [1:0] state = state1;

   always @(posedge clk)
      if (reset) begin
         state <= state1;
         shift  <= 1'b0;
         reset_contar <= 1'b1;
         enable_MAC1  <= 1'b0;
         enable_MAC2  <= 1'b0;
        
      end
      else
         case (state)
            state1 : begin
               if (start)
                  state <= state2;
               else
                  state <= state1;
               shift <= 1'b0;
               reset_contar <= 1'b1;
               enable_MAC1  <= 1'b0;
               enable_MAC2  <= 1'b0;
            end
            state2 : begin
               state <= state3;
               shift <= 1'b1;
               reset_contar <= 1'b1;
               enable_MAC1  <= 1'b0;
               enable_MAC2  <= 1'b0;
            end
            state3 : begin
               if (done_cuenta)
                  state <= state4;
               else
                  state <= state3;
               shift <= 1'b0;
               reset_contar <= 1'b0;               
               enable_MAC1  <= 1'b1;
               enable_MAC2  <= 1'b1;
            end
            state4 : begin
               state <= state2;
               shift <= 1'b0;
               reset_contar <= 1'b0;
               enable_MAC1  <= 1'b1;
               enable_MAC2  <= 1'b0;
               
            end
         endcase
endmodule
