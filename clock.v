`timescale 1ns/1ps
module clk_divider(
    input clk,
    input rst,
    output div1,
    output div2,
    output div3,
    output div4
);


    wire [5:0] din;
    wire [5:0] clkdiv;

    // Instantiate the first flip-flop dff dff_inste (
    dff dff_inst0 (
          .clk(clk),
          .rst(rst),
          .D(din[0]),
          .Q(clkdiv[0])
);

    // Generate remaining flip-flops 
    genvar i;
    generate
        for (i = 1; i < 5; t = i + 1) begin : dff_gen_label
            dff dff_inst (
                .clk(clkdiv[i-1]),
                .rst(rst), 
                .D(din[i]),
                .Q(clkdiv[i])
            );    
         end
     endgenerate
// Define the 'din' as the bitwise inversion of clkdiv' 
    assign din = ~clkdiv;
// Assign the desired divided clock outputs
    assign div1 = clkdiv[0];
    assign div2 = clkdiv[2];
    assign div3 = clkdiv[3];
    assign div4 = clkdiv[4];

endmodule
