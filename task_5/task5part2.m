syms t

f = poly2sym(P, t);

T = taylor(f, t, 'ExpansionPoint', 0, 'Order', 5);

yyT = double(subs(T, t, xx));

figure;
plot(xx, yyT, '--','LineWidth',2); hold on;
scatter(x, y, 70, 'filled','r');
grid on;
title('Інтерполянта (многочлен Тейлора)');
xlabel('x'); ylabel('y');
