%ex1107.m 计算各变量均值、方差以及他们之间的协方差矩阵和相关系数矩阵
clear all
VOL=[89 92 92 92 89 92 94 89 89 91]';  
HP=[49 55 70 53 70 55 80 73 66 78]';  
MPG=[65.4 55.9 49.0 46.5 46.2 45.4 43.4 39.3 39.6 38.9]';  
SP=[96 97 105 96 105 97 107 103 100 106]'; 
X=[VOL,HP,MPG,SP]; %将变量数据按列存到一个矩阵中
m=mean(X)  %计算X均值，得各变量样本的均值
v=var(X)   %计算X方差，得各个变量样本值之间方差
cX=cov(X)  %计算变量之间的相关矩阵
cv=diag(cX) %取相关矩阵对角元素
corX=corrcoef(X) %计算变量之间的相关系数
