%ex0918
clear all;
A = [2.5000    1.0000         0           0          0         0;
         1.0000    1.5000    1.0000          0          0         0;
         0           1.0000   0.5000    1.0000          0         0;
         0           0         1.0000    0.5000    1.0000         0;
         0           0         0          1.0000    1.5000    1.0000;
         0           0         0           0          1.0000    2.5000];
b=ones(6,1)
x=followup(A,b)
