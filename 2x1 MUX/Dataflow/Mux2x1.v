`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Company: Indraprastha Institute of Information Technology
// Engineer: Baani Leen Kaur Jolly
// Create Date: 18.02.2017 09:10:42
//
//////////////////////////////////////////////////////////////////////////////////


module Mux2x1 (in1, in2, s0, out);
    
    output out;
    input in1, in2;
    input s0;
    assign out = (~s0 & in1)|(s0 & in2);

endmodule