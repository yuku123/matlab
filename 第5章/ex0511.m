%ex0511.m
clear all;
x=1:0.2:1.8;
y=[0.8415  0.9320  0.9854  0.9996  0.9738];
f=Newtonforward(x,y)  %����ǰ��ţ�ٲ�ֵ����ȡy��x�Ĳ�ֱ��ʽ
f=Newtonback(x,y) %���ú���ţ�ٲ�ֵ����ȡy��x�Ĳ�ֱ��ʽ
f= Newtonforward(x,y,1.55) %����ǰ��ţ�ٲ�ֵ�����㵱 ��yֵ
f= Newtonback(x,y,1.55)  %���ú���ţ�ٲ�ֵ�����㵱 ��yֵ
