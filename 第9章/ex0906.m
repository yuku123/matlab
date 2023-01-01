%ex0906
clear all;
 A = [    1     1     1     1;
             1     2     3     4;
             1     3     6    10;
             1     4    10    20;];
[P,H]=hess(A)
b=[1 4 7 -2]';
x=P*inv(H)*P'*b
