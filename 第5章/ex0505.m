%ex0505.m
clear all;
x=0:2*pi;
y=sin(x);
z=interpft(y,15);
xx=linspace(0,2*pi, 15); %���ɴ�0�� ֮���15�����Եȷֵ��������
plot(x,y,'-o',xx,z,':o')
