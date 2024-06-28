T = 2;
a = -2;
b = 2;
w = -5:0.1:5;
syms t;
xt = piecewise(t >= -T & t <= T, 1, 0);  
X = continuousFT(t, xt, a, b, w);

figure;

subplot(2, 2, 1)
plot(w, real(X))
xlabel("w")
ylabel("real(X(w))")
title('Real Part of X(w)')

subplot(2, 2, 2)
plot(w, imag(X))
xlabel("w")
ylabel("imag(X(w))")
title('Imaginary Part of X(w)')

subplot(2, 2, 3)
plot(w, abs(X))
xlabel("w")
ylabel("|X(w)|")
title('Absolute Value of X(w)')

subplot(2, 2, 4)
plot(w, angle(X))
xlabel("w")
ylabel("phase(X(w))")
title('Phase of X(w)')
