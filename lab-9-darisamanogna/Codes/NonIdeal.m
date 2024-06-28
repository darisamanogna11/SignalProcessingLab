function B = NonIdeal(A,w0_FS,G,a)
N=(length(A)-1)/2;
B=zeros(size(A));
for k=-N:N
    B(k+N+1)=G/(a+1i*k*w0_FS)*A(k+N+1);
end
end


