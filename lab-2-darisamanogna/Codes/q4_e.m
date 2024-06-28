alpha_e =1.1;
beta_e = 1;
a_e = [1, alpha_e, beta_e];
n = 0:50;
h_e = impz(1, a_e, n);
stem(n, h_e);
title('Oscillating Response');
xlabel('n');
ylabel('h[n]');
