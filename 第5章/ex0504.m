%ex0504.m
clear all;
[x,y] = meshgrid(-4:4);	           	%产生已知数据栅格点
z = peaks(x,y);	                   	%计算已知点上的函数值
[x1,y1] = meshgrid(-4:0.25:4);		%产生更精细的插值栅格点
z1 = interp2(x,y,z,x1,y1,'nearest');
surf(x1,y1,z1)	                     	%画基于最邻近法插值的三维表面图
z2 = interp2(x,y,z,x1,y1,'linear');
surf(x1,y1,z2)		                	%画基于二维分段线性插值的三维表面图
z3 = interp2(x,y,z,x1,y1,'cubic');
surf(x1,y1,z3)		               	%画基于二维三次多项式插值的三维表面图
