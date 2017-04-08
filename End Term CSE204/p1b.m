% Signal & System End Exam problem 1(b)
% Author: Rahul Nalawade
% Date: Sunday 23 November 2014 12:12:48 AM IST

T = 0.001;
Fs = 2000;
Ts = 1/Fs;
f = linspace(-20000,20000,40000);

a = 2*pi.*f*Ts;
X = 2.*cos(a) + 1;
plot(f,X,'r')
axis([-10000,10000,-2,4])
grid on
xlabel('f')
ylabel('X(f)')

figure
plot(f,abs(X),'b')
axis([-10000,10000,-1,4])
grid on
xlabel('f')
ylabel('|X(f)|')

