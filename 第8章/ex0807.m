%ex0807.m
clear all;
 x=0:0.5:3;
y=[0 0.25 1 2.25 4 6.25 9];
Y = csape(x,y,'second', [2, 2])
df = fnder(Y)
df.coefs
