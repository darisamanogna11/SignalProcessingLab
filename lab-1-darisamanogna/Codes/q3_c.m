T = 1 ;
N = 1000;
T1 = 0.1;
time_grid = -0.5:0.01:0.5;
syms t;
xt = piecewise(t<-T1,0,(t>=-T1)&(t<=T1),1,t>T1,0);
A = fourierCoeff(t,xt,T,0,1,N);
reconstructed_signal = partialfouriersum(A, T, time_grid);
figure;
xt_values = subs(xt, t, time_grid);
%subplot(2,1,1);
plot(time_grid, xt_values, 'b', 'LineWidth', 1);
title('Original Square wave');
xlabel('Time');
ylabel('Amplitude');
grid on;
hold on;


%subplot(2,1,2);
plot(time_grid, real(reconstructed_signal), 'r', 'LineWidth', 1);
title('Reconstructed Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
legend('Original Signal', 'Reconstructed Signal');
hold off;