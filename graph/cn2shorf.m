function [P d]=cn2shorf(W,k1,k2,t1,t2)
% ����ͨ��ָ��������������·
% function [P d]=cn2shorf(W,k1,k2,t1,t2)
% W ͼ��Ȩֵ���� k1 ʼ�� k2 �յ� t1 ָ���ĵ�1 t2 ָ���ĵ�2
% P ���յõ���·
% d ·�ĳ���
% ·�е��ظ������һ����
[p1 d1]=n2shorf(W,k1,t1);  % ����k1,t1֮������·
[p2 d2]=n2shorf(W,t1,t2);  % ����t1,t2֮������·
[p3 d3]=n2shorf(W,t2,k2);  % ����t2,k2֮������·
dt1=d1+d2+d3;
[p4 d4]=n2shorf(W,k1,t2);  % ����k1,t2֮������·
[p5 d5]=n2shorf(W,t2,t1);  % ����t2,t1֮������·
[p6 d6]=n2shorf(W,t1,k2);  % ����t1,k2֮������·
dt2=d4+d5+d6;
% �Ƚ�������ֵ
if dt1<dt2
    d=dt1;
    P=[p1 p2(2:length(p2)) p3(2:length(p3))];
else 
    d=dt2;
    P=[p4 p5(2:length(p5)) p6(2:length(p6))];
end
P;
d;