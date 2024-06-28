n=1;
d=[1,-0.5,0.2,-0.1,0.007,0.14,0.15];

[H,f]=freqz(n,d,'whole');

figure;
plot(f/pi,(abs(H)))
title('Magnitude Response');
xlabel('Frequency');
ylabel('Magnitude freq response')