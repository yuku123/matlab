function [d0 d]=centgraf(W,A)
% ͼ�����ĺͼ�Ȩ�����㷨
% function [d0 d]=centgraf(W,A)
% W ͼ��Ȩֵ���� A �����Ȩֵ����
% d0 ͼ������ d ͼ�ļ�Ȩ����
% ���ֵ��÷�ʽ
% d0=centgraf(W)
% [d0 d]=centgraf(W,A) % d�Ǽ�Ȩ����

% ������̾������
n=length(W);  
U=W;
m=1;
while m<=n
for i=1:n
    for j=1:n
        if U(i,j)>U(i,m)+U(m,j)
            U(i,j)=U(i,m)+U(m,j);
        end
    end
end
m=m+1;
end

d1=max(U,[],2); % ������е����ֵ
d0t=min(d1); % �����ֵ��ѡȡ��С��
d0=find(d1==min(d1));

dt=zeros(1,n);
for i=1:n
    dt(i)=dot(U(i,:),A); % �������di1
end
d=find(dt==min(dt)); % ѡȡ��С��
ddt=min(dt);

% W=[0 1 3 4;1 0 2 90;3 2.2 0 5;4 90 5 0];
% A=[1 2 3 4];