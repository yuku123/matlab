%ex1501.m ��Opt_Golden()������Ż�������15-1 
f1501 = inline('x-(x.*x-2).^3/2','x');
a = 0;
b = 4; 
TolX = 1e-4;%�ж�ѭ���Ƿ�ֹͣ��x��ֵ
TolFun = 1e-4; %������ֵ
MaxIter = 100; %�趨��������
[xo,fo] = Opt_Golden(f1501,a,b,TolX,TolFun,MaxIter)