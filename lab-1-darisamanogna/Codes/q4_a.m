T=1;
N=3;
t1=-0.25;
t2=0.25;
syms t;
x1t = piecewise(t<0,-t,t>=0,t);
F = fourierCoeff(t,x1t,T,t1,t2,N);
FS_idx = 1:2*N+1;
figure; stem(FS_idx,F); grid on;
xlabel('Coefficient Index ');
ylabel('Magnitude of fourier coeeficients');
title('Fourier Coefficients');
function F = fourierCoeff(t,x1t,T,t1,t2,N)
w0 = 2*pi/T;
F = zeros(2*N+1,1);
for nn = 1:2*N+1
    expr=x1t*exp(-1j*(nn-N-1)*w0*t);
 F(nn) = 1/T*int(expr,t,[t1 t2]);
end
end
