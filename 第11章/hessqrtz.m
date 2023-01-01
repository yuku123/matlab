function l = hessqrtz(A,M)
%海森伯格QR算法求矩阵全部特征值
%已知矩阵：A
%迭代步数：M
%求得的矩阵特征值：l

A = hess(A);            %将A化为上海森伯格矩阵
for(i=1:M)               %M为迭代步数
    [q,r]=qr(A);
    A = r*q;
    l = diag(A);
end
