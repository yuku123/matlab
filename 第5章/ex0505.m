%ex0505.m
clear all;
x=0:2*pi;
y=sin(x);
z=interpft(y,15);
xx=linspace(0,2*pi, 15); %生成从0到 之间的15个线性等分点的行向量
plot(x,y,'-o',xx,z,':o')
