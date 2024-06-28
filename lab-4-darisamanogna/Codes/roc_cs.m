function [N, ROC, C, S] = roc_cs(p2)
    N = length(p2)+1;
    ROC = zeros(N,2);
    C = zeros(N,1);
    S = zeros(N,1);
    C(N) = 1;
    for i = 1:N
        if i ~= N
            ROC(i,2) = abs(p2(i));
        end
        if i ~= 1  
            ROC(i,1) = abs(p2(i-1));
        end
    end
    ROC(N,2) = Inf;
   v = 0; 
   x=0;
for j = 1:length(p2)
    if abs(p2(j)) == 1
        v = 1;
    end
end

for i = 1:N-1
    if v ~= 1 && i == N-1 && p2(i)<1
        S(i+1) = 1;
        x=1;
        break
    end
    if v ~= 1 && p2(i) < 1 && p2(i+1) > 1
        S(i+1) = 1;
        x = 1;
        break
    end
    if v~=1 && p2(i)>1
        S(i) = 1;
        x=1;
        break
    end
end
if v ~=1 && x ~= 1
        S(N) = 1;
end
end