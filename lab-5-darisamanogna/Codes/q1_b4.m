omega0 = pi/4;
n = -200:200;
x = sin(omega0 * n);

w = -10:0.01:10;

X = DT_Fourier(x, 1, w); % N0 = 1

figure;

subplot(2, 2, 1);
plot(w, abs(X));
title('Magnitude of DTFT');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');

subplot(2, 2, 2);
plot(w, real(X));
title('Real Part of DTFT');
xlabel('Frequency (rad/sample)');
ylabel('Real');

subplot(2, 2, 3);
plot(w, imag(X));
title('Imaginary Part of DTFT');
xlabel('Frequency (rad/sample)');
ylabel('Imaginary');

% Phase plot
subplot(2, 2, 4);
plot(w, angle(X));
title('Phase of DTFT');
xlabel('Frequency (rad/sample)');
ylabel('Phase (rad)');


function X = DT_Fourier(x, N0, w)
    N = length(x);
    X = zeros(size(w));
    for i = 1:length(w)
        X(i) = sum(x .* exp(-1j * w(i) * (0:N-1) + N0));
    end
end