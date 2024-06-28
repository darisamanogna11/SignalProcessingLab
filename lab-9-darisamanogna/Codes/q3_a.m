% N=2001;
% w0=pi/4;
% z=exp(1j*w0);
% b0=1/(1-exp(1j*w0)).*(1-exp((-1*(1j*w0))));
% Hz=b0*(1-exp((1j*w0)/z)).*(1-exp(-1*(1j*w0)/z));
% 
% y=freqz(Hz,N,'whole');
% 
% figure;
% plot(N,y);
% xlabel("N");
% ylabel("y");
% 
% figure;
% % subplot(2,1,1);
% plot(w, 20*log10(abs(H)));
% title('Frequency Response of Notch Filter');
% xlabel('Frequency (rad/sample)');
% ylabel('Magnitude (dB)');
% grid on;
% 
% % Plot the phase response
% subplot(2,1,2);
% plot(w, angle(H));
% title('Phase Response of Notch Filter');
% xlabel('Frequency (rad/sample)');
% ylabel('Phase (radians)');
% grid on;

% second code
% % Define the notch filter parameters
% w0 = pi/4; % Notch frequency in radians
% b0 = 1;    % Gain factor
% 
% % Create the numerator and denominator coefficients for the filter
% num = [b0, 0, -b0];
% den = [1, -2*cos(w0), 1];
% 
% % Calculate the frequency response using freqz
% N = 2001; % Number of points
% [H, w] = freqz(num, den, N);
% 
% % Plot the magnitude response in dB
% figure;
% subplot(2,1,1);
% plot(w, 20*log10(abs(H)));
% title('Frequency Response of Notch Filter');
% xlabel('Frequency (rad/sample)');
% ylabel('Magnitude (dB)');
% grid on;
% 
% % Plot the phase response
% subplot(2,1,2);
% plot(w, angle(H));
% title('Phase Response of Notch Filter');
% xlabel('Frequency (rad/sample)');
% ylabel('Phase (radians)');
% grid on;

% third code
w0 = pi/4;
b0 = 1; 
b = [b0,-2*b0*cos(w0),b0];
a = 1; 
N= 2001;
[H, w] = freqz(b,a,N);

figure;
subplot(2, 1, 1);
plot(w, 20*log10(abs(H)));
title('FIR Notch Filter Frequency Response');
xlabel('Frequency');
ylabel('Magnitude (dB)');
grid on;

subplot(2, 1, 2);
plot(w, angle(H));
title('Phase Response');
xlabel('Frequency');
ylabel('Phase (radians)');
grid on;
