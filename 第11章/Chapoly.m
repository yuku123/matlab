function l = Chapoly(A)
%��������ʽ�����������ֵ
%��֪����A
%��õľ�������ֵ��l

syms t;
N = size(A);
n = N(1,1);

y = det(A-t*eye(n,n)); 
l =solve(y); 

l = vpa(l, 5);         %���ȡ��λ����

