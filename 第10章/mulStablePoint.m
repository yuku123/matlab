function [r,n]=mulStablePoint(x0,eps)
%不动点迭代法求非线性方程组的一个解
%初始迭代向量：x0
%迭代精度： eps
%解向量：   r
%迭代步数： n

if nargin==1
    eps=1.0e-4;
end

r=myf(x0);
n=1;
tol=1;
while tol>eps
    x0=r;
    r=myf(x0);                     		%迭代公式
    tol=norm(r-x0);              		%注意矩阵的误差求法，norm为矩阵的欧几里德范数
    n=n+1;
    if(n>100000)                  		%迭代步数控制
        disp('迭代步数太多，可能不收敛！');
        return;
    end
end
