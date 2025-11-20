clear; clc; close all;

x = [10 14 18 22 26 30 34];
y = [3.0 7.0 10.2 15.8 20.2 26.4 34.6];

X = [x.^2' x' ones(length(x),1)];
B = X \ y';

a = B(1);
b = B(2);
c = B(3);

fprintf("Модель: y = %.4f*x^2 + %.4f*x + %.4f\n", a,b,c);

xx = linspace(min(x), max(x), 300);
yy = a*xx.^2 + b*xx + c;

plot(xx, yy, 'LineWidth',2); hold on;
scatter(x, y, 70,'filled','r');
grid on;
title('Апроксимація біомаси крони методом найменших квадратів');
xlabel('Ступінь товщини');
ylabel('Біомаса крони');
legend('Апрокс. крива','Експериментальні точки');
