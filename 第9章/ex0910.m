%ex0910
clear all;
A = [1.4449    0.7948    0.8801;
          0.6946    1.9568    0.1730;
          0.6213    0.5226    1.9797];
b=[1 0 1]';
x0=zeros(3,1);
[x,n]=gauseidel(A,b,x0)
