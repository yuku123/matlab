function ex1403()
A = 0.5; %����ϵ��
it0 = inline('sin(pi*x)','x'); %��ʼ����
bx0 = inline('0'); bxf = inline('0'); %�߽�����
xf = 2; M = 80; T = 0.1; N = 100;

[u1,x,t] = EF_Euler(A,xf,T,it0,bx0,bxf,M,N);
figure(1),clf,mesh(t,x,u1)
xlabel('x')
ylabel('y')
zlabel('U')
title('r>0.5')
M=50;
[u1,x,t] = EF_Euler(A,xf,T,it0,bx0,bxf,M,N);
figure(2),clf,,mesh(t,x,u1)
xlabel('x')
ylabel('y')
zlabel('U')
title('r<0.5')