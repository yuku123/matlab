%ex0808.m
clear all;
df1= CISimpson('exp(x)',2.5)             	%����Ĭ�ϵ�5����ɢ��
df2= CISimpson('exp(x)',2.5,10)         	%����10����ɢ�����
df3= CISimpson('exp(x)',2.5,100) 
