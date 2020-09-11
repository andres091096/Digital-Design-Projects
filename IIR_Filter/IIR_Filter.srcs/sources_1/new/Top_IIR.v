`timescale 1ns / 1ps
//// Los datos estan en formato  Q2.10
module Top_IIR
#( 
parameter WIDTH  = 8, //Bit-width (Input);
parameter Order = 4   //Order of the filter;
)(
    input clk,
    input reset,
    input start,
    input [WIDTH-1:0] x_in,
    output reg [2*WIDTH-1:0] y_out   /// TO DO: La longitud de la salida tiente que ser 2*WIDTH+log2(Ncoeff)-
);

    reg [WIDTH-1:0] x_buff [Order-1:0]; // Buffer X
    reg [WIDTH-1:0] y_buff [Order-2:0]; // Buffer Y Es una posición menor que x_buff.
    wire signed [2*WIDTH-1:0] c_mac1;
    wire signed [2*WIDTH-1:0] c_mac2;
    wire signed [WIDTH-1:0] resta;
    // Desplazar X y Y 
    wire shift;  // Señal para deplazar los datos de entrada.
    always @(posedge clk)
      if (reset) begin
        x_buff[0] <= {WIDTH{1'b0}};
      end else if (shift) begin
        x_buff[0] <= x_in;
      end
      
    always @(posedge clk)
      if (reset) begin
        y_buff[0] <= {WIDTH{1'b0}};
      end else if (shift) begin
        y_buff[0] <= resta;
      end

    
    genvar k;
    generate
        for (k=1; k<Order; k=k+1) begin
            always @(posedge clk)
             if (reset) begin
                    x_buff[k] <= {WIDTH{1'b0}};
            end else if (shift) begin
                    x_buff[k] <= x_buff[k-1];
            end
        end
    endgenerate
    
    generate
        for (k=1; k<Order-1; k=k+1) begin
            always @(posedge clk)
             if (reset) begin
                    y_buff[k] <= {WIDTH{1'b0}};
            end else if (shift) begin
                    y_buff[k] <= y_buff[k-1];
            end
        end
    endgenerate
    
   ////////////// CONTADOR ////////////////
   localparam ROM_ADDR_BITS = $clog2(Order); 
   wire reset_contar;
   reg [ROM_ADDR_BITS-1:0] coeff_i;
   wire done_cuenta;
   always @(posedge clk)
      if (reset_contar) begin
            coeff_i <= {ROM_ADDR_BITS{1'b0}};
        end else begin 
            coeff_i <= coeff_i + 1'b1;               
      end
   assign done_cuenta = (coeff_i==Order-3) ? 1'b1 : 1'b0;  
   //////////////////////////////////////////////////////
   
   ///// Sel input
    
   wire [WIDTH-1:0] data;
   assign data = x_buff[coeff_i];
   
   ///// Sel  
   wire [WIDTH-1:0] data_y;
   assign data_y = y_buff[coeff_i];
   
    
   /////// READ COEFF ////////////
   (* rom_style="{distributed | block}" *)
   reg [WIDTH-1:0] a [Order-2:0];   
   initial
      $readmemb("a_coeff.mem", a, 0, Order-2);
   wire [WIDTH-1:0] a_i;
   assign a_i = a[coeff_i];
   
   
   (* rom_style="{distributed | block}" *)
   reg [WIDTH-1:0] b [Order-1:0];   
   initial
      $readmemb("b_coeff.mem", b, 0, Order-1);
   wire [WIDTH-1:0] b_i;
   assign b_i = b[coeff_i];
   
   /////////////////////// FSM //////////////////
    FSM Control(
        .clk(clk),
        .reset(reset),
        .start(start),
        .done_cuenta(done_cuenta),
        .shift(shift),
        .reset_contar(reset_contar),
        .enable_MAC1(enable_MAC1),
        .enable_MAC2(enable_MAC2) ); 
   /////////////////// MAC ///////////////////////
  
   MAC 
   #( 
    .WIDTH(WIDTH)//Bit-width (Input);
    )MAC_Inst(  
    .clk(clk),
    .reset(reset_contar),
    .enable(enable_MAC1),
    .a(data),
    .b(b_i),
    .c(c_mac1)
);

    MAC 
    #( 
    .WIDTH(WIDTH)//Bit-width (Input);
    )MAC_feedback(  
    .clk(clk),
    .reset(reset_contar),
    .enable(enable_MAC2),
    .a(data_y),
    .b(a_i),
    .c(c_mac2)
    );

    assign resta = c_mac1[39:18]-c_mac2[39:18];
always @(posedge clk)
      if (reset) begin
         y_out <= {2*WIDTH{1'b0}};
      end else if (reset_contar) begin
         y_out <= c_mac1-c_mac2;
      end
    
    
    
endmodule
