%ex0809.m
clear all;
 x=0:0.5:3;
y=[0 0.125 1 3.375 8 15.625 27];
df=DISimpson(x,y,7,3)
