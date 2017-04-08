clear all;
close all;
a1=1;a2=1;b0=1;

Fs=8000;Ts=1/Fs;
t=0 - 2*Ts : Ts : 1-3*Ts;
x=zeros(length(t),1);
x(3)=1;y(1,1)=0;y(2,1)=0;

for n=3:length(t)
y(n,1)=b0*x(n)-a1*y(n-1,1)-a2*y(n-2,1);
end

yfft=fft(y);
y_mag=abs(yfft);
plot(y_mag)

