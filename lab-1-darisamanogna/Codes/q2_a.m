T = 1;
time_grid = -0.5:0.01:0.5;
N = (numel(time_grid)-1)/2;
syms t; 

xt = @(t) 2*cos(2*pi*t) + cos(6*pi*t);


F = fourierCoeff(t, xt(t), T, -T/2, T/2, N);

y_reconstructed = partialfouriersum(F, T, time_grid);



