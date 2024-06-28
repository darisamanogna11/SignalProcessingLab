function B=myHPF(A,w0_FS,wc)
N=(length(A)-1)/2;
B=zeros(size(A));
for k=-N:N
    if abs(k*w0_FS)>wc
        B(k+N+1)=A(k+N+1);
    else
        B(k+N+1)=0;
    end
end
end