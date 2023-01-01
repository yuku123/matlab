%ex1102.m 分别计算三个样本的均值
clear all
X1=[2.1  3.5  5.0  1.5  3.0  3.2  4.2  2.5  3.0  1.8];  %第一个样本
X2=[3.2  3.0  4.5  4.2  1.4  1.5  5.0  4.5  3.5  3.0];  %第二个样本
X3=[2.4  2.6  4.2  3.5  3.2  3.3  4.0  4.2  3.6  2.8];  %第三个样本
X=[X1;X2;X3];  %将三个样本作为X的各行
m1=mean(X,2)   %计算X各行的均值，即得各样本均值
X=[X1',X2',X3'];%将三个样本作为X的各列
m2=mean(X)       %得各列均值