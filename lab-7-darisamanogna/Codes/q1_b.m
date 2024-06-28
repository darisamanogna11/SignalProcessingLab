t_samples=0:0.1:2;
x=cos(5*pi*t_samples)+sin(10*pi*t_samples);
figure;
stem(t_samples,x);
xlabel("time");
ylabel("Sampled signal");
title("continuous signal x=cos(5*pi*t_samples)+sin(10*pi*t_samples");
