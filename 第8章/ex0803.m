%ex0803.m
clear all;
syms x y z t;
f = [x^2 sin(x*y*z)  exp(t)];
v = [ x y z t];
j = jacobian(f,v)
