function [l,v,s] =pmethod(A,x0,eps)
%幂法求矩阵的主特征值及主特征向量
%已知矩阵：A
%迭代初始向量：x0
%迭代的精度：eps
%求得的矩阵特征值：l
%求得的矩阵主特征向量：v
%迭代步数：s

if nargin==2 
    eps = 1.0e-6;
end

v = x0;               %v为主特征向量
M = 5000;              %迭代步数限制
m = 0;      
l = 0;
for(k=1:M)
    y = A*v;
    m = max(y);      %m为按模最大的分量
    v = y/m;
    
    if(abs(m - l)<eps)
        l = m;       %到所需精度，退出，l为主特征值
        s = k;       %s为迭代步数
        return;
    else
        if(k==M)
            disp('迭代步数太多，收敛速度太慢！');
            l = m;
            s = M;
        else
            l = m;
        end
    end
end
