%ex0904
clear all;
A=[9 -36 30;-36 192 -180;30 -180 180];
b=ones(3,1);
R=chol(A)
x=R\(R'\b)
