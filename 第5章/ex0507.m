%ex0507.m
clear all;
[X,Y]=meshgrid(-3:3);        
z=sin(X)+sin(Y);             
z1=griddata(X,Y,z,-0.5,1)
griddata(X,Y,z,-0.5,1,'linear')  %采用以三角形为基础的线性内插
griddata(X,Y,z,-0.5,1,'cubic')   %采用以三角形为基础的三次方程内插
griddata(X,Y,z,-0.5,1,'nearest')  %采用最邻近的点内插
griddata(X,Y,z,-0.5,1,'v4')  %采用MATLAB 4 格点样条函数内插
