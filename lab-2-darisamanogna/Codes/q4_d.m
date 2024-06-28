alpha_d =-0.2;
beta_d =0.9;
a_d = [1, alpha_d, beta_d];
n = 0:50;
h_d = impz([1], a_d, n);
stem(n, h_d);
title('Initially Growing and Then Decaying');
xlabel('n');
ylabel('h[n]');
