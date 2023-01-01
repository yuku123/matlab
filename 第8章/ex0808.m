%ex0808.m
clear all;
df1= CISimpson('exp(x)',2.5)             	%采用默认的5个离散点
df2= CISimpson('exp(x)',2.5,10)         	%采用10个离散点计算
df3= CISimpson('exp(x)',2.5,100) 
