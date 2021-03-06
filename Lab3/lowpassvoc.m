%code for lowpass filter for continuous 
close all;
clear all;
r=1000;
c=10^(-6);
t=10;
Ts=10^(-4);
f=10^(3);

i = 1:1/10000:10;
x = record(10,10000);

for n=1:1:100000;
if(n==1)
y(n) = (Ts./(r.*c)).*x(n);
else
y(n) = (Ts./(r.*c)).*x(n)+(1-Ts./(r.*c)).*y(n-1);
end
end

%plot(y);
%for a=1:20;
%X(a)=x(a);
%Y(a)=y(a);
%end
%plot(Y);

playaudio(y);
