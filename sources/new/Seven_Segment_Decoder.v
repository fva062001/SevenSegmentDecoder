`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2021 09:09:57 PM
// Design Name: 
// Module Name: Seven_Segment_Decoder
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


module Seven_Segment_Decoder(
//Entrada de 4 bits y Salido de 8 bits
input [0:3]E,
output SA,SB,SC,SD,SE,SF,SG
    );
     //Asignando a los componentes los wires
    //Luz A
    wire a,b;
    and (a,~E[1],~E[3]);
    and(b,E[1],E[3]);
    or(SA,E[0],E[2],a,b);
    
    //Luz B
    wire c,d;
    and(c,~E[2],~E[3]);
    and(d,E[2],E[3]);
    or(SB,~E[1],c,d);
    
    //Luz C
    or(SC,E[1],~E[2],E[3]);
    
    //Luz D
    wire e,f,g,h;
    and(e,~E[1],~E[3]);
    and(f,~E[1],E[2]);
    and(g,E[2],~E[3]);
    and(h,E[1],~E[2],E[3]);
    or(SD,e,f,g,h);
    
    //Luz E
    wire i,j;
    and(i,~E[1],~E[3]);
    and(j,E[2],~E[3]);
    or(SE,i,j);
    
    //Luz F
    wire k,l,m;
    and(k,~E[2],~E[3]);
    and(l,E[1],~E[2]);
    and(m,E[1],~E[3]);
    or(SF,E[0],k,l,m);
    
    //Luz G
    wire n,o,p;
    and(n,~E[1],E[2]);
    and(o,E[2],~E[3]);
    and(p,E[1],~E[2]);
    or(SG,E[0],n,o,p);
endmodule
