%ex0907
clear all;
A=[     1     1     1     1;
             1     2     3     4;
             1     3     6    10;
             1     4    10    20;];
b=[1 4 7 -2]';
[U,T]=schur(A)
x=U*inv(T)*U'*b
