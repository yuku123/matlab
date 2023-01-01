%ex0511.m
clear all;
x=1:0.2:1.8;
y=[0.8415  0.9320  0.9854  0.9996  0.9738];
f=Newtonforward(x,y)  %采用前向牛顿插值，求取y与x的差分表达式
f=Newtonback(x,y) %采用后向牛顿插值，求取y与x的差分表达式
f= Newtonforward(x,y,1.55) %采用前向牛顿插值，计算当 的y值
f= Newtonback(x,y,1.55)  %采用后向牛顿插值，计算当 的y值
