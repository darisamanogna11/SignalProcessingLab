wc = pi/8;
n = -100:100;
x = zeros(1, length(n));
syms w;
X = piecewise(abs(w) <= wc, 1, wc < abs(w) & abs(w) < pi, 0);

for k = 1:length(n)
    t = exp(1j * w * n(k)); 
    x(k) = (1/(2*pi)) * int(X * t , w, -pi, pi);
end

figure;
subplot(2,1,1);
plot(n, real(x));
title('Real part of x[n]');
xlabel('n');
ylabel('Real(x[n])');

subplot(2,1,2);
plot(n, imag(x));
title('Imaginary part of x[n]');
xlabel('n');
ylabel('Imag(x[n])');

figure;
plot(n, real(x));
title('Inverse DTFT: x[n]');
xlabel('n');
ylabel('x[n]');
