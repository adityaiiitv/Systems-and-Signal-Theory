% Signal & System End Exam problem 1(b)
% Author: Rahul Nalawade
% Date:Tuesday 25 November 2014 08:08:15 PM IST 

T = 0.001;
f = linspace(-20000,20000,40000);
w = 2*pi.*f;

p = T.*w;

Y = ( (w.*cos(p) - w + sin(p)) + i * (cos(p) - w.*sin(p) - 1) )./(w.*(w.^2 + 1));

plot(f,Y,'r')
% axis([-10000,10000,-2,4])
grid on
xlabel('f')
ylabel('Y(f)')

figure
plot(f,abs(Y),'b')
% axis([-10000,10000,-1,4])
grid on
xlabel('f')
ylabel('|Y(f)|')

