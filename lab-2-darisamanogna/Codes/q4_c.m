alpha_c = -0.35;
beta_c = -0.9;
a_c = [1, alpha_c, beta_c];
n = 0:50;
h_c = impz(1, a_c, n);
stem(n, h_c);
title('Monotonically Diverging Response');
xlabel('n');
ylabel('h[n]');
