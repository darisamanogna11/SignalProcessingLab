% define relevant parameters
N=10;
T=1;
T1=T/4;
t1=-0.5;
t2=0.5;
% define relevant expressions
syms t;
xt = piecewise((-T/2<t)&(-T/4>t),0,(t>=-T/4)&(t<=T/4),1,(T/4<t)&(t<T/2),0);  % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = 1:2*N+1;
figure; stem(FS_idx-1,F); grid on;

xlabel('Coefficient Index (nn)');
ylabel('Magnitude of fourier coefficients');
title('Fourier Coefficients');
