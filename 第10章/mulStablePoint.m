function [r,n]=mulStablePoint(x0,eps)
%�����������������Է������һ����
%��ʼ����������x0
%�������ȣ� eps
%��������   r
%���������� n

if nargin==1
    eps=1.0e-4;
end

r=myf(x0);
n=1;
tol=1;
while tol>eps
    x0=r;
    r=myf(x0);                     		%������ʽ
    tol=norm(r-x0);              		%ע����������󷨣�normΪ�����ŷ����·���
    n=n+1;
    if(n>100000)                  		%������������
        disp('��������̫�࣬���ܲ�������');
        return;
    end
end
