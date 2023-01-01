%ex0919
clear all;
A=[4 -1 2;-1 5 0;2 0 6];
b=[1 -1 2]';
optt.SYM=true;
optt.POSDEF=true;
optt.TRANSA=false;
x=linsolve(A,b,optt)
