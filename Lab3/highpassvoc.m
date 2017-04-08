%code for lowpass filter for continuous 
close all;
clear all;
r=1000;
c=10^(-6);
t=10;
Ts=10^(-4);
f=10^(4);
n=1:10000;
F=f.*n.*Ts;

ts = 1:1/10000:10;
x=record(10,10000);
%x = sin(2.*pi.*f.*n.*Ts);
%x(n+1)=sin(2.*pi.*f.*(n+1).*Ts);

for n=0:99999;
if(n==0)
y(n+1) = r.*c.*(x(n+1));
else
y(n+1) = r*c.*(x(n+1)-x(n))-y(n).*(Ts-1);
end
end

playaudio(y,10000)


%figure(1);
%plot(x,y);
%title('Graph of both input and output at a time');
%for a=1:1000;
%X(a)=x(a);
%Y(a)=y(a);
%end
%figure(2);
%plot(X,Y);
%title('graph of both input and output for 10 values');
%figure(3);
%plot(Y);
%title('graph of output only');
%figure(4);
%plot(F,y);

