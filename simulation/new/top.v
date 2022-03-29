`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2021 04:03:57 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top();

reg [0:3]E;
wire SA,SB,SC,SD,SE,SF,SG;

Seven_Segment_Decoder m1(E,SA,SB,SC,SD,SE,SF,SG);

initial
begin

$monitor("%b,%b,%b,%b,%b,%b,%b\n",SA,SB,SC,SD,SE,SF,SG);
    //Caso 1
    E[0] = 0;
    E[1] = 0;
    E[2] = 0;
    E[3] = 0;       
    //Caso 2
#5  E[0] = 0;
    E[1] = 0;
    E[2] = 0;
    E[3] = 1;     
    //Caso 3
#5  E[0] = 0;
    E[1] = 0;
    E[2] = 1;
    E[3] = 0;       
   //Caso 4
#5  E[0] = 0;
    E[1] = 0;
    E[2] = 1;
    E[3] = 1;  
    //Caso 5
#5  E[0] = 0;
    E[1] = 1;
    E[2] = 0;
    E[3] = 0;   
    //Caso 6
#5  E[0] = 0;
    E[1] = 1;
    E[2] = 0;
    E[3] = 1;   
    //Caso 7
#5  E[0] = 0;
    E[1] = 1;
    E[2] = 1;
    E[3] = 0;   
    //Caso 8
#5  E[0] = 0;
    E[1] = 1;
    E[2] = 1;
    E[3] = 1;   
    //Caso 9
#5  E[0] = 1;
    E[1] = 0;
    E[2] = 0;
    E[3] = 0;   
    //Caso 10
#5  E[0] = 1;
    E[1] = 0;
    E[2] = 0;
    E[3] = 1;        
    
    
end
endmodule
