`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Indraprastha Institute of Information Technology
// Engineer: Baani Leen Kaur Jolly
// Create Date: 18.02.2017 07:57:23
//////////////////////////////////////////////////////////////////////////////////

module Mux();
reg sel, inp1, inp2;
wire outp;

Assignment_1 obj1(sel, inp1, inp2, outp);

initial begin
    sel = 1'b0;
    inp1 = 1'b1;
    inp2 = 1'b0;
    
    #5

    sel = 1'b1;
    inp1 = 1'b1;
    inp2 = 1'b0;
    
    #5
//    inp1 = 1'b1;
//    inp2 = 1'b0;
//    #10
//    inp1 = 1'b0;
//    inp2 = 1'b1;
//    #10
    $finish;
end

endmodule
