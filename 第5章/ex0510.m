%ex0510.m
clear all;
x=[1 1.2 1.8 2.5 4];
y=[1 1.44 3.24 6.25 16];
f=Newton(x,y)
f=Newton(x,y,2.0)   %计算当 时的y值
