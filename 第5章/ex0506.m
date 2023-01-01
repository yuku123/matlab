%ex0506.m
clear all;
x = -3:3; 
y = [-1 -1 -1 0 1 1 1];       %产生已知点
t = -3:.01:3;                   %产生细密插值点的横坐标
p = pchip(x,y,t);              %用’cubic’方法对已知点进行细密插值
ppol=spline(x,y)               %先对已知点进行分段样条插值
s=ppval(ppol,t);               %再用插值后的样条函数求插值点的y值
plot(x,y,'o',t,p,'-',t,s,'-.')
