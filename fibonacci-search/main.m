syms x;
f(x) = (x - 2)^2 - sin(x + 3);
%f(x) = exp(-5*x) + (x + 2)*(cos(0.5*x))^2;
%f(x) = x^2*sin(x + 2) - (x + 1)^2;
lRange(f);
figure;
fibMeth(f, 0.001, 0.01, 2, 5, 1, [0, 0.4470, 0.7410])
fibMeth(f, 0.001, 0.1, 2, 5, 1, [0.8500, 0.3250, 0.0980])
fibMeth(f, 0.001, 1, 2, 5, 1, [0.9290, 0.6940, 0.1250])
title('variation of edges a, b');
legend('l = 0.01', '', 'l = 0.1', '', 'l = 1', '');
xlabel('k values', 'fontweight', 'bold');
hold off;

