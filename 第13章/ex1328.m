%ex1328.m 多元线性回归
%%%%%输入数据
x1=[1.376, 1.375, 1.387, 1.401, 1.412, 1.428, 1.445, 1.477];
x2=[0.450, 0.475, 0.485, 0.500, 0.535, 0.545, 0.550, 0.575];
x3=[2.170 ,2.554, 2.676, 2.713, 2.823, 3.088, 3.122, 3.262];
x4=[0.8922, 1.1610 ,0.5346, 0.9589, 1.0239, 1.0499, 1.1065, 1.1387];
y=[5.19, 5.30, 5.60,5.82,6.00, 6.06,6.45, 6.95];
%%%%%%保存数据（以数据文件.mat形式保存，便于以后调用）
save ex1328_data x1 x2 x3 x4 y
%%%%取出数据
load ex1328_data  
%%%%执行回归命令
x=[ones(8,1),x1',x2',x3',x4'];
[b,bint,r,rint,stats]=regress(y',x);
b
bint
stats