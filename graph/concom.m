function [S,Q]=concom(G)
% ͼ����ͨ�Լ���
% function [S,Q]=concom(G)
% G ͼ���ڽӾ���
% S ͼ����ͨ���� Q ͼ�Ķ������ڵĿ��

n=size(G,1);
m=sum(sum(G))/2;
S=0;j=1;C=1;
Q=zeros(n,1);
for i=1:n
    for j=(i+1):n
        if G(i,j)==1  % ����֮���б�
        if Q(i)==Q(j) % ����֮���б�������ͬһ��
            if Q(i)==0
                Q(i)=C;Q(j)=C; 
                C=C+1;
                S=S+1;
            end
        else
            if Q(i)==0 % ��Ϊ���i����j��ͬһ��
                Q(i)=Q(j);
            elseif Q(j)==0 % ��Ϊ���j����i��ͬһ��
                Q(j)=Q(i);
            else   % �����������������Ϊ��ͬ�Ŀ飬����п�ϲ�
                for k=1:n
                    if Q(k)==Q(i)
                        Q(k)=Q(j); % ������ϲ�
                    end
                end
                S=S-1;
            end
        end
        end
    end
end
S;
Q;
% G=[1 0 1 1;1 1 0 1;1 1 1 1;1 0 1 1]   
% G=[0 1 0 0;1 0 0 0;0 0 0 1;0 0 1 0] 