p = [1+1i,1+2i,1+3i,2+1i];
p1 = unique(abs(p));

p2 = p1;

for i = 1 : length(p1)
    if p1(i) == 0
        k = 1;
        p2 = p1(p1 ~= 0); 
        break
    end
end     
[N, ROC, C, S] = roc_cs(p2);
disp(N);
disp(ROC);
disp(C);
disp(S);