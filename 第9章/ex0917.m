%ex0917
clear all;
A=[ 0 3 8;1 4 7; -2 6 9];
b= [ 1 1 1]';
[x,flag,re, it]=minres(A,b)
