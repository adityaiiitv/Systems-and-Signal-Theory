% GAIN FOR LOW PASS FILTER

clear all;
close all;

F=[log(10) log(100) log(500) log(1000) log(1500) log(2000) log(5000) log(10000)];	% 	LOG OF FREQUENCIES
G=[0.997 0.987 0.950 0.820 0.690 0.587 0.282 0.145];											%	RESPECTIVE GAINS

plot(F,G);

title('GAIN FOR LOW PASS FILTER');
xlabel('FREQ.');
ylabel('GAIN');

print -dpng LP.png
