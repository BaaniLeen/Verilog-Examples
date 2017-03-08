`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Company: Indraprastha Institute of Information Technology
// Engineer: Baani Leen Kaur Jolly
// Create Date: 18.02.2017 09:11:51
// 
//////////////////////////////////////////////////////////////////////////////////

module test();

reg inp1, inp2, sel;
wire outp;

Mux2x1 obj1(inp1, inp2, sel, outp);

initial begin

    inp1 = 1'b0;
    inp2 = 1'b1;
    sel = 1'b0;
    
    #5

    inp1 = 1'b0;
    inp2 = 1'b1;
    sel = 1'b1;
    
    #5
    
    $finish;

end

endmodule
