%code for lowpass filter for continuous 
close all;
clear all;
r=1000;
c=10^(-6);
t=10;
Ts=10^(-4);
f=10^(3);

for n = 1:100000;
x(n) = sin(2.*pi.*f.*n.*Ts);
if(n==1)
y(n) = (Ts./r.*c).*x(n);
else
y(n) = (Ts./(r.*c)).*x(n)+(1-Ts./(r.*c)).*y(n-1);
end
end
%plot(y);
for a=1:20;
X(a)=x(a);
Y(a)=y(a);
end
plot(Y);
