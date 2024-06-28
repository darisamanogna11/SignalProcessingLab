n = -100:100;
x = zeros(1, length(n));
w1=pi/6;
w2=pi/3;

syms w;
assume(w,'real');
X= piecewise(w1<=abs(w) & abs(w)<=w2,1,0);

for k = 1:length(n)
    t = exp(1j * w * n(k)); 
    x(k) = (1/(2*pi)) * int(X * t , w, -pi, pi);
end

figure;
subplot(2,1,1);
stem(n, real(x),"filled");
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
