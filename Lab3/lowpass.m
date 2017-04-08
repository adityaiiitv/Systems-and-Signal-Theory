% code to plot gain wrt frequency for low pass filter
clear all;
close all;
F=[log(10) log(100) log(500) log(1000) log(10000) log(100000)];
G=[0.997 0.987 0.863 0.653 0.132 0.014];

figure(1);
plot(F,G);
title('Graph for gain');
xlabel('Frequency---------------->');
ylabel('Gain------------------>');
print -dpng lowpass1log.png
figure(2);
stem(F,G);
title('Graph for gain');
xlabel('Frequency--------------->');
ylabel('Gain--------------->');
print -dpng lowpass2log.png


