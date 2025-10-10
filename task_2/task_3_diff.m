syms x;

f_1 = (tan(x) - asin(x)) / (x - sin(x));

f_1_prime = diff(f_1,x);

f_1_triple_prime = diff(f_1,x,3);

disp('--- Похідні для f1(x) = (tg(x) - arcsin(x)) / (x - sin(x)) ---');
disp('Перша похідна f(x):');
disp(f_1_prime);
disp('Третя похідна f(x):');
disp(f_1_triple_prime);

disp(' ');

disp('=== Похідні для f2(x) ===');

f_2 = (1 - exp(-x)) / x;
disp(f_2)

f_2_prime = diff(f_2, x);

f_2_triple_prime = diff(f_2, x, 3);

disp('Перша похідна f2(x):');
disp(f_2_prime);

disp('Третя похідна f2(x): ');
disp(f_2_triple_prime);