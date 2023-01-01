function [l,v]=dimethod(A,x0,u,eps)
%λ�����ݷ��������ĳ���������������ֵ�����Ӧ����������
%��֪����A
%������ʼ������x0
%������u
%�����ľ��ȣ�eps
%��õľ�����u���������ֵ��l
%��õľ��������ֵl��Ӧ������������v

if nargin==3 
    eps = 1.0e-6;
end

N = size(A);
n = N(1,1);            %nΪA�Ľ�
v = x0;              
M = 5000;              %������������
m = 0;      
l = 0;
for(k=1:M)
    y = (A-u*eye(n,n))\v;
    m = max(y);      %mΪ��ģ���ķ���
    v = y/m;
    
    if(abs(m - l)<eps)
        l = 1/m + u;       %�����辫�ȣ��˳�
        return;
    else
        if(k==M)
            disp('��������̫�࣬�����ٶ�̫����');
            l = 1/m + u;
        else
            l = m;
        end
    end
end
