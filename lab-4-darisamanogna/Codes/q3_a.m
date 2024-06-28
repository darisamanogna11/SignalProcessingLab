r_values = [0.25,0.5, 0.75, 0.99]; 
t_values = [pi/4, pi/2,2*pi/3, 3*pi/4];

for i = 1:length(r_values)
    for j = 1:length(t_values)
        r = r_values(i);
        t = t_values(j);
        
        n = [1, -2*cos(t), 1];
        d = [1, -2*r*cos(t), r*r];
      
        figure;
        subplot(2, 1, 1);
        zplaneplot(n, d); 
        title(['Pole-Zero Plot for r = ', num2str(r), ' and t = ', num2str(t)]);

        [y, x] = freqz(n, d,'whole');
        subplot(2, 1, 2);
        plot(x, abs(y));
        title(['Frequency Response for r = ', num2str(r), ' and t = ', num2str(t)]);
        xlabel('Frequency');
        ylabel('|H(z)|');
    end
end



