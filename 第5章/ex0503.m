%ex0503.m
clear all;
x=0:2*pi;
y=sin(x);
xx=0:0.5:2*pi;
y1=interp1(x,y,xx,'nearest','extrap');
y2=interp1(x,y,xx,'linear','extrap');
y3=interp1(x,y,xx,'spline','extrap');
y4=interp1(x,y,xx,'cubic','extrap');
plot(x,y,'s', xx,y1,'-',xx,y2,'-.',xx,y3,':',xx,y4,'--')
