%ex0512.m
clear all;
x=1:0.2:1.8;;
y=[0  0.2630  0.4854  0.6781  0.8480];
f=Gauss(x,y)
f=Newtonback(x,y)
f=Gauss(x,y,1.5)  %计算当 的y值
