syms x y;

f_integral = (1 - sqrt(x)) / (sqrt(x) * (x + 1));

indefinite_integral = int(f_integral, x);

disp('--- 1. Невизначений інтеграл ---');
disp('Функція f1(x):');
disp(f_integral);
disp('Результат інтегрування:');
disp(indefinite_integral);

g = y * cos(x * y);

I_inner = int(g, x, pi/2, pi);

I_total = int(I_inner, y, 1, 2);

disp(' ');
disp('--- 2. Визначений (Подвійний) інтеграл ---');
disp('Символьне значення інтеграла:');
disp(I_total);

numeric_result = vpa(I_total);
disp('Числове значення інтеграла:');
disp(numeric_result);