%ex0801.m
clear all;
df1 = diff('sin(x)');
df2 = diff('sqrt(x)')
df3 = diff('log(x)')
df4= diff('log(x*y)','x')
df5 = diff('sin(x*y)','y')
df6 = diff('sin(x*y)','x',3) 
