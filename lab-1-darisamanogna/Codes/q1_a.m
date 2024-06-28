% define relevant parameters
T=1;
N=5;
t1=0;
t2=1;
% define relevant expressions
syms t;
xt = 2*cos(2*pi*t)+cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = 1:2*N+1;
figure; stem(FS_idx,F); grid on;
xlabel('Coefficient Index (nn)');
ylabel('Magnitude of fourier coeeficients');
title('Fourier Coefficients');
function F = fourierCoeff(t,xt,T,t1,t2,N)
% function to find FS coefficients
% initialize
w0 = 2*pi/T;
F = zeros(2*N+1,1);
% for-loop to find coefficents
for nn = 1:2*N+1
    expr=xt*exp(-1j*(nn-N-1)*w0*t);
 F(nn) = 1/T*int(expr,t,[t1 t2]);
end
end
