clear; clc; close all;

x = [-9 -5.5 -3.5 2.5 5.5];
y = [6 -3 0.5 -2.5 5];

P = polyfit(x, y, length(x)-1);

xx = linspace(min(x), max(x), 300);
yy = polyval(P, xx);

figure;
plot(xx, yy, 'LineWidth', 2); hold on;
scatter(x, y, 70, 'filled', 'r');
grid on;
title('Інтерполянта (звичайний многочлен)');
xlabel('x'); ylabel('y');
