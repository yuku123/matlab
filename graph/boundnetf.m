function f=boundnetf(G1,G2)
% function f=boundnetf(G1,G2)
% ���������½�Ŀ�����
% G1 ���������½���� G2���������Ͻ����
% ����2F�󸽼�����������,����fofuf.m
n=size(G2,1);
G=G2-G1;
%G(G~=0)=1;
x=zeros(1,n);
W=[0 x 0;
    x' G x';
    0 x 0]; % �����µĶ���
% �����µı�
for i=1:n
    W(i+1,n+2)=sum(G2(:,i))-sum(G1(:,i));
    W(1,i+1)=sum(G2(i,:))-sum(G1(i,:));
end
W(1,n+2)=inf;
W(n+2,1)=inf;
% ����2F�㷨�󸽼�����������
% [f1 wf]=Dinif2(W);
[f1 wf]=fofuf(W);
f=f1(2:(n+1),2:(n+1))+G1;