`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Company: Indraprastha Institute of Information Technology
// Engineer:  Baani Leen Kaur Jolly
// Create Date: 18.02.2017 00:22:00
// 
//////////////////////////////////////////////////////////////////////////////////
///////// GATE LEVEL MODELLING //////

module Assignment_1(sel, in_0, in_1, out);

    //defining the input ports.
    input in_0;
    input in_1;
    input sel;
    
    //defining the output port.
    output out;
    
    //Internal variables.
    wire not_sel;
    wire temp1,temp2;
    wire out_temp;

    //NOT gate - not_sel is the output with sel as input
    not n1(not_sel,sel);
      
    //AND   gate - temp1 and temp2 are output and not_sel and sel are inputs.
    and and_1(temp1,in_0,not_sel);
    and and_2(temp2,in_1,sel);
    
    //OR gate - out_temp is output and temp1, temp2 are inputs.
    or or_1(out_temp,temp1,temp2);
    
    //Assign the final value to the output port.
    assign out = out_temp;
    
endmodule