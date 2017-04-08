% Author: Rahul Nalawade
% Date: Sunday 23 November 2014 01:21:07 PM IST 


f = linspace(-1000,1000,2000);
w = 2*pi.*f;
T = 1;
t0 = T/8;

t = linspace(-5,5,2000);
n=1;
p = t0*n.*w;
a1 = 4*(sin(p)./(w.*n)) + (32.*sin(p)./(w.*n)).*( t0.*(2.*cos(p).*cos(5.*p) - sin(2.*p).*sin(4.*p)) - (sin(2.*p).*cos(4.*p))./(w.*n) );
plot(t,a1.*cos(2*pi.*t),'r-')
axis([-5,5,-0.02,0.02])
grid on;


n=2;
p = t0*n.*w;
a2 = 4*(sin(p)./(w.*n)) + (32.*sin(p)./(w.*n)).*( t0.*(2.*cos(p).*cos(5.*p) - sin(2.*p).*sin(4.*p)) - (sin(2.*p).*cos(4.*p))./(w.*n) );
figure
plot(t,a2.*cos(2*pi*2.*t),'b-')
axis([-5,5,-0.02,0.02])
grid on;


n=3;
p = t0*n.*w;
a3 = 4*(sin(p)./(w.*n)) + (32.*sin(p)./(w.*n)).*( t0.*(2.*cos(p).*cos(5.*p) - sin(2.*p).*sin(4.*p)) - (sin(2.*p).*cos(4.*p))./(w.*n) );
figure
plot(t,a3.*cos(2*pi*3.*t),'g-')
axis([-5,5,-0.02,0.02])
grid on;

%	P = a2.*cos(2*pi.*t) + a2.*cos(2*pi*2.*t) + a3.*cos(2*pi*3.*t);
%	figure
%	plot(t,P,'y.')
%	axis([-5,5,-0.02,0.02])
%	grid on;

P=0;
for n=1:1000
	p = t0*n.*w;
	a = 4*(sin(p)./(w.*n)) + (32.*sin(p)./(w.*n)).*( t0.*(2.*cos(p).*cos(5.*p) - sin(2.*p).*sin(4.*p)) - (sin(2.*p).*cos(4.*p))./(w.*n) );

	P = P + a.*cos(2*pi*n.*t);
end

figure
plot(t,P,'c-')
axis([-5,5,-0.02,0.02])
grid on;

