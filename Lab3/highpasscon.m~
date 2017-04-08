%code for lowpass filter for continuous 
close all;
clear all;
r=1000;
c=10^(-6);
t=10;
Ts=10^(-4);
f=10^(4);
n=1:100001;
%F=f.*n.*Ts;
%x(0)=0
%y(0)=0
for n = 1:100000;
x(n) = sin(2.*pi.*f.*n.*Ts);
x(n+1)=sin(2.*pi.*f.*(n+1).*Ts);
end
for n=0:100000;
if(n==0)
y(n+1) = r.*c.*(x(n+1));
else
y(n+1) = r*c.*(x(n+1)-x(n))-y(n).*(Ts-1);
end
end
figure(1);
plot(x,y);
title('Graph of both input and output at a time');
for a=1:1000;
X(a)=x(a);
Y(a)=y(a);
end
figure(2);
plot(X,Y);
title('graph of both input and output for 10 values');
figure(3);
plot(Y);
title('graph of output only');
figure(4);
plot(F,y);
