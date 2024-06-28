t_fine=0:0.01:2;
x_t=cos(5*pi*t_fine)+sin(10*pi*t_fine);
t_samples=0:0.1:2;
x_n=cos(5*pi*t_samples)+sin(10*pi*t_samples);

figure

subplot(2,2,1);
plot(t_fine,x_t);
xlabel('time');
ylabel('amplitude');
title('Continuous-time Signal x(t)');


subplot(2,2,2);
stem(t_samples,x_n);
xlabel('time');
ylabel('amplitude');
title('Sampled Signal x[n]');
grid on;

subplot(2,2,3);
q1=interp1(t_samples,x_n,t_fine,'previous');
plot(t_fine,q1);
xlabel('time');
ylabel('amplitude');
title('Zero-Order Hold Reconstruction');
grid on;

subplot(2,2,4);
q2=interp1(t_samples,x_n,t_fine,'linear');
plot(t_fine,q2);
xlabel('time');
ylabel('amplitude');
title('Linear Interpolation Reconstruction');

sgtitle('Interpolation');


