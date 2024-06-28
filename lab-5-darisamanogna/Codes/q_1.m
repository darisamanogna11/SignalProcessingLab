n=-100:100;
wc=pi/16;
w=-pi:pi;
k=1j*w;
X(exp(k))=piecewise((-pi<w) & (w<-wc),0,(-w<=wc) & (wc<=w),1,(wc<w) & (w<pi),0);
xn=(1/2*pi)*int(X(exp(k))*exp(k*n));
plot(n,xn);
xlabel('time')
ylabel('DTFT')