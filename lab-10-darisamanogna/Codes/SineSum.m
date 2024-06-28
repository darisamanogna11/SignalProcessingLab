function xn=SineSum(A,F,P,td,fs)
t=0:1/fs:td;
xn=zeros(size(t));
for k=1:length(A)
    xn=xn + A(k)*sin(2*pi*t*F(k)+P(k));
end
end

