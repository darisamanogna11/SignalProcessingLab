n=0:1000;
sum = zeros(n);
hn = [1, -1, zeros(1,6)];

figure;
stem(0:7,hn);
title(sprintf("Impulse response for %d:%d",n(1),n(end)));
xlabel("Time");
ylabel("Amplitude");
