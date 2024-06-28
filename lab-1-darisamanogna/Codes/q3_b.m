T1 = 0.1;
T = 20;
N = 10*T;
t1 = -0.5;
t2 = 0.5;
syms t;
xt = piecewise(t<-T1,0,(t>=-T1)&(t<=T1),1,t>T1,0);
F = fourierCoeff(t,xt,T,t1,t2,N);
for m = 1:2*N+1
    F(m) = T*F(m);
end
FS_idx = 1:2*N+1;
figure; stem(FS_idx-1,F); grid on;
xlabel('k value');
ylabel('scaled coeffients');
title('Scaled Fourier Series Coefficients');


