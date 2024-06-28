n = 1;
d = [1, -0.5, 0.2, -0.1, 0.007, 0.14, 0.15];

figure;
zplane(d,n);
title('Pole-Zero Plot');
xlabel('Real');
ylabel('Imaginary');
legend('zeros','poles');



