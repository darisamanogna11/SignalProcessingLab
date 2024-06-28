f0 = 11;  
fs = 64;  
L = 16;  
m_values = [1, 2, 4, 8];  
f0_estimates = zeros(1, length(m_values));
n = 0:15;

for i = 1:length(m_values)
    m = m_values(i);
    N = m * L;
    pn = cos((2 * pi * f0 *n)/fs );
    wn=(0<=n & n<=15);
    xn=pn.*wn;
    X = fft(xn, N);
    f = (0:N-1) * fs / N;
    [~, index] = max(abs(X));
    f0_estimates(i) = f(index);
end

f0_estimates 
