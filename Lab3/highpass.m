%code of gain wrt frequency for high pass filter
clear all;
close all;
F=[10 100 500 1000 5000];
G=[0.012 0.122 0.524 0.768 0.976];
figure(1);
plot(F,G,'*');
title('Graph for gain for high pass filter');
xlabel('Frequency------------->');
ylabel('Gain------------------>');
print -dpng highpass1.png
figure(2);
stem(F,G);
title('Graph for gain for high pass filter');
xlabel('Frequency------------->');
ylabel('Gain------------------>');
print -dpng highpass2.png
