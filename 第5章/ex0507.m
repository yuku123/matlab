%ex0507.m
clear all;
[X,Y]=meshgrid(-3:3);        
z=sin(X)+sin(Y);             
z1=griddata(X,Y,z,-0.5,1)
griddata(X,Y,z,-0.5,1,'linear')  %������������Ϊ�����������ڲ�
griddata(X,Y,z,-0.5,1,'cubic')   %������������Ϊ���������η����ڲ�
griddata(X,Y,z,-0.5,1,'nearest')  %�������ڽ��ĵ��ڲ�
griddata(X,Y,z,-0.5,1,'v4')  %����MATLAB 4 ������������ڲ�
