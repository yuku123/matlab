%ex0913
clear all;
A=[ 4 3 0; 3 4 -1; 0 -1 4];
b=[ 24 30 -24]';
x0=[0 0 0]';
[x,n]=twostep(A,b,x0)
