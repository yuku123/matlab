%ex1502.m�ò�ֵ��������Ż�������15-2 
clear all
f1502=inline('(x.*x - 2).^2/2-1', 'x');;
%%%�趨����˵�
a = 0;
b = 5;
%%%�ֱ��趨x��ֵ�ͺ���f��ֵ
TolX = 1e-5; 
TolFun = 1e-8; 
%%%�趨��������
MaxIter = 100;
%%%�ö��β�ֵ�������
[xoq,foq] = Opt_Quadratic(f1502,[a b],TolX,TolFun,MaxIter)
%��matlab���ú�������Сֵ�Լ����ĺ���ֵ
[xob,fob] = fminbnd(f1502,a,b) %MATLAB ���ú������