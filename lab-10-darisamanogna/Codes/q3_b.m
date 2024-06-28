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
[t_env,env]=envelope(0.3,0.1,0.7,0.3,0.3,fs);
soundsc(xn.*env,fs);

figure;
subplot(3,1,1)
stem(xn);
xlabel('n');
ylabel('xn');
subplot(3,1,2);
stem(env);
xlabel('n');
ylabel('env')
subplot(3,1,3);
stem(xn.*env);
xlabel('n');
ylabel('xn.*env');