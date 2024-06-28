alpha_a = -1;
beta_a = 0.9;
a_a = [1, alpha_a, beta_a];
n = 0:50;
h_a = impz(1, a_a, n);
stem(n, h_a);
title('Impulse Response for \alpha = -1, \beta = 0.9');
xlabel('n');
ylabel('h[n]');
