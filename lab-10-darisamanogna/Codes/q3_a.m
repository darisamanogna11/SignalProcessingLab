fs=10000;
td=1;
N=15;
f0=200;
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=1/(k^2);
    P(k)=0;
end

xn=harmonics(A,f0,P,td,fs);
% soundsc(xn,fs);
[t_env,env]=envelope(0.2,0.2,0.7,0.4,0.2,fs);
soundsc(xn.*env,fs);
