%ex1215 递推法解差分方程
clear,clc
%求y(0)到y(20)
x0=[0,0,1]; %设定后推方程的迭代初值
y=zeros(1,31); %y初值设为零
y(10)=0; %y(-1)=0
y0=0; %后推初值
for i=1:21
    y0=y0+[-1,2,3]*x0'; %用后推方程计算n>=0的y值
    y(i+10)=y0;
    x0=[x0(2:3),0];
end
%求y(-2)到y(-10)
x0=[0,0,0];  %前推方程迭代初始化
y0=0;
for i=1:9
    y0=y0+[1,-2,-3]*x0'; %用前推方程迭代计算n<-1的y值
    y(10-i)=y0;
    x0=[0,x0(1:2)];
end
n=[-10:20];
y
stem(n,y)  
    
    