%ex0802.m
clear all;
 F=[ 1 1.2 1.4 2.3 5;0 -0.6 3 4  2;-1 7 7.2 9 1.4];
[gx,gy]=gradient(F)  %计算梯度
n=surfnorm(F)  %计算法向量
