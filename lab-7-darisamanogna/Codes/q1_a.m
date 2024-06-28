t_fine=0:0.01:2;
x=cos(5*pi*t_fine)+sin(10*pi*t_fine);
figure
plot(t_fine,x);
xlabel('Time')
ylabel('Amplitude')
title("continuous signal x(t)=cos(5*pi*t)+sin(10*pi*t)")
grid on;
