td= 5; 
fs = 10000; 
t = 0:1/fs:td;
A=[0.5,0.5];
P=[0,0];
F=[350,440];
xn=SineSum(A,F,P,td,fs);
sound(xn, fs);
