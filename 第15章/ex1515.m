%ex1515.m 求解最大利润问题
x0=[0,0];
[xo_s,yo_s]=fminsearch('f1515',x0)
[xo_m,yo_m]=fminunc('f1515',x0)
