% Signal & System End Exam problem 1(a)
% Author: Rahul Nalawade
% Date: Saturday 22 November 2014 11:11:02 PM IST 

T = 0.001;
%	t = linspace(-1000,1000,100);
%	x = u(t) - u(t-T);
	
%	plot(t,x)
%	grid on
%	xlabel('t')
%	ylabel('x(t)')


f = linspace(-10000,10000,1000);
w = 2*pi.*f;
X = ( sin(w.*T) + i*(cos(w.*T) - 1.*ones(1,1000)) )./w;
figure
plot(f,X,'b')
grid on
xlabel('f')
ylabel('X(f)')

m = abs(2.*sin(w*T/2)./w);
figure
plot(f,m,'g')
grid on
xlabel('f')
ylabel('|X(f)|')

f = linspace(-1000,1000,100);
w = 2*pi.*f;
phase = -atan(tan(w.*T/2));
figure
plot(f,phase,'r')
grid on
xlabel('f')
ylabel('Phase Spectra')
